/*global mret mdecl meth mfun console Map print global exports */

/*
  fext.js: Fast Explicit Tail Calls

  Mutual recursion is supported.
  
  By G. Lathoud, June 2018 and later.
  Boost license, see file ./LICENSE


  API:

  Use `mfun` to declare a function, `meth` to declare a method, and
  wrap the inner tail calls with `mret`.

  Examples: ./test/fext_unittest_es6.js and ./test/fext_unittest.js
  
  Write-up: see ./index.html


  Implementation notes: 

  (1) fext.js *itself* is implemented with mostly "old-fashioned"
  syntax to fit old build systems. Arrow functions are supported,
  on older JavaScript engines put them in a string.

  (2) Lousy regexps, no parser, and thus no parser maintenance. It
  might seem "bad" at first (what is "bad"?), but also means that
  fext.js should work in the future versions of JavaScript
  with little or no maintenance.

  (3) Function decompilation is used! Let the flame wars start!!
  More seriously, you can pass a code string wherever preferred.
  ES6's backticks come in handy here.
*/

var global, exports
,   __fext_debug_all  // ?boolean?
;
(function (global) {

    'use strict';
    
    // ---------- API

    global.mret = mret;
    global.mfun = mfun;
    global.meth = meth;

    // Debugging tools

    global.mfunD = mfun.bind( { debug : true } );
    global.methD = meth.bind( { debug : 'method' } );
    
    // ---------- API: convenience tool

    mfun.log_to = log_to;
    
    // ---------- API implementation

    var _debugging = false;

    function mret()
    {
        if (_debugging)
        {
            var this_ = 'object' === typeof _debugging  &&  _debugging  ||  null;
            
            return arguments[ 0 ]
                .apply( this_  // methD case
                        , ( this_
                            , this_
                            ?  [ this_ ]  // methD case
                            :  []         // mfunD case
                          )
                        .concat( [].slice.call( arguments, 1 ) )
                      );
        }
        else
        {
            throw new Error( 'fext: wrap your function with `mfun`. See https://github.com/glathoud/fext and http://glat.info/fext for examples.' );
        }
    }
    
    function mfun( a, b, c )
    /*
      Returns a function that will lazily create the optimized
      implementation, cache it, and call it.
      
      API: missing args allowed, but order fixed:

      var f = mfun( [namespacekey,] [name,] f_or_s );
      
      `f_or_s` is mandatory, the other two optional.

      `f_or_s`: string|function
      `name`:   string

      `namespacekey` is any common object that will be used as a key to
      group mutually recursive functions.

      `namespacekey` will NOT be modified, only used as a key to
      determine which functions know each other (a.k.a. namespace).

      --- Variants --

      (1) Self-recursion

      var my_function = mfun( anonymous_function_or_string );
      
      (2) Mutual recursion with named functions

      Custom `namespacekey`:

      var namespacekey = {}  // whatever object
      ,   first_fun = mfun( namespacekey, named_func_or_str )  
      ,  second_fun = mfun( namespacekey, named_func_or_str )  
      ,   third_fun = mfun( namespacekey, named_func_or_str )  
      ;

      Default `namespacekey` (=== `first_fun`):

      var first_fun = mfun( named_func_or_str )  
      ,  second_fun = mfun( first_fun, named_func_or_str )  
      ,   third_fun = mfun( first_fun, named_func_or_str )  
      ;

      (3) Mutual recursion with anonymous function (e.g. arrow
      functions)

      Custom `namespacekey`:

      var namespacekey = {}  // whatever object
      ,   first_fun = mfun( namespacekey, name, anonymous_f_or_s )  
      ,  second_fun = mfun( namespacekey, name, anonymous_f_or_s )  
      ,   third_fun = mfun( namespacekey, name, anonymous_f_or_s )  
      ;

      Default `namespacekey` (=== `first_fun`):

      var first_fun = mfun( name, anonymous_func_or_str )  
      ,  second_fun = mfun( first_fun, name, anonymous_func_or_str )
      ,   third_fun = mfun( first_fun, name, anonymous_func_or_str )
      ;
    */
    {
        /*
          Read the arguments, missing args allowed, but order fixed:

          [namespacekey], [name], f_or_s

          `f_or_s` is mandatory, the other two optional.

        */    
        var arr =
            [          a,    b,      c ]
        ,   namespacekey, name, f_or_s
        ;
        for (var i = arr.length; i--;) // read right-to-left
        {
            var x = arr[ i ];
            if (x == null)
                continue;

            var tyx = typeof x;
            
            if (!f_or_s)
            {
                if ('function' === tyx  ||  'string' === tyx)
                {
                    f_or_s = x;
                    continue;
                }
            }
            else
            {
                if ('string' === tyx)
                {
                    name = x;
                    continue;
                }
                else
                {
                    namespacekey = x;
                    break;
                }
            }
            log_to( 'error', 'fext: invalid argument', x );
            null.invalid_argument;
        }

        // -- Options

        function dflt( x, fallback )
        {
            return x != null  ?  x  :  fallback;
        }
        
        // ?boolean? 
        var debug = dflt( this  &&  this.debug
                          , !!__fext_debug_all
                        );
        
        // ?boolean?
        var inline_body = dflt( this  &&  this.inline_body
                                , true
                              ); 
        
        // ?integer>0?: number of expansion levels
        var expansion = dflt( this  &&  this.expansion
                              , 1
                            );

        // ?function?: Mostly for internal use (e.g. `meth()`)
        var prepro_arg_arr = this  &&  this.preprocess_argname_arr
            ||  null;

        // ?boolean?: Mostly for internal use (e.g. `meth()`)
        var mret_that_dot = dflt( this  &&  this.mret_that_dot
                                  , false
                                );

        // --- Debug support
        
        var ret = debug  ?  fext_wrapper_dbg  :  fext_wrapper;
        
        // --- Defaults parameters

        namespacekey  ||  (namespacekey = ret);

        if (!name)
        {
             // Function.name Not supported by IE, but then...
            if ('function' === typeof f_or_s)
                name = f_or_s.name;
            
            if (!name) // ...fallback (in the IE case, too)
            {
                name = ( /^\s*function\s+(\w+)/.exec( ''+f_or_s )
                         || []
                       )[ 1 ]  ||  null;
            }
        }

        // Support anonymous functions: `return mret( self, ...)`
        
        name  ||  (name = '__fext_anonymous_' + (
            mfun.__fext_anon_id__ = 1 + (mfun.__fext_anon_id__ | 0)
        ) + '__');

        // --- Check
        
        (f_or_s  &&  name  &&  namespacekey)  ||  null.missing_arg;
        
        (f_or_s.bind  ||  f_or_s.substring).call.a;
        name.substring.call.a;

        // --- Extract the code

        // if a function, this calls decompilation (sin!)
        var f_code    = '' + f_or_s;
        
        // --- Rock it
        
        var mo_fun   = f_code.match(
                /^\s*function[^\(]*\(([^\)]*)\)([\s\S]*)$/
        )
        ,   mo_arrow = !mo_fun  &&  f_code.match(
                /^\s*\(?([^\)=]+)\)?\s*=>([\s\S]*)$/
        )
        ,   s_param   = (mo_fun  ?  mo_fun[ 1 ]
                         :  mo_arrow[ 1 ]
                        ).trim()
        ,   s_body    = (mo_fun  ?  mo_fun[ 2 ]
                         :  'return ' + mo_arrow[ 2 ] + ';'
                        ).trim()

        // Prevent issues in the `inline_body` context
        ,  has_var = /\bvar\s/.test( s_body )
        
        // Scan the head
        
        ,   argname_arr_0 = split_args( s_param )

        ,   argname_arr   = prepro_arg_arr
            ?  prepro_arg_arr( argname_arr_0 ) // mostly for `meth`
            :  argname_arr_0
        
        ,   narg        = argname_arr.length
        
        // Scan the body for tail calls
        
        ,   tc_arr = find_tail_calls
            .call(
                { mret_that_dot : mret_that_dot }
                , name, s_body
            )
        ,   tc_len = tc_arr.length
        ;
        if (tc_len < 1  &&  'function' === typeof f_or_s)
        {
            log_to( 'warn'
                    , 'fext.js: no tail calls found in function '
                    + name + ':'
                    , f_or_s
                  );
            return f_or_s;  // nothing to transform
        }

        // Build a list of unique names

        // me first (see `V_CASE_I` init below)
        var piece_arr = [ name ]
        ,   piece_i_of_name = {}
        ,   tmp = {}
        ,   depgraph_complete = false
        ;
        piece_i_of_name[ name ] = 0;
        tc_arr.forEach(
            function ( o ) { o.name_arr.forEach( mark_name ); }
        );
        function mark_name( a_name )
        {
            if (a_name !== name  &&  !(a_name in tmp))
            {
                // "unique names": each name only once
                tmp[ a_name ] = true; 

                piece_i_of_name[ a_name ] = piece_arr.length;
                piece_arr.push( a_name );
            }
        }
        
        // Open the access to other functions
        // (for mutual recursion)
        
        var topmap = mfun.__fext_topmap__
            ||  (mfun.__fext_topmap__ = new Map)
        
        ,   space  =
            (
                topmap.has( namespacekey )
                    ?  topmap
                    :  topmap.set( namespacekey, {} )
            )
            .get( namespacekey )
        ;
        space[ name ]  &&  null.already_defined;

        space[ name ] = Object.freeze( {
            name            : name
            , argname_arr   : argname_arr
            , narg          : narg
            ,  callcode_gen :  callcode_gen
            , piececode_gen : piececode_gen
            , piece_arr_0   : piece_arr.slice()

            // Used by `inline_body`
            , new_body_gen : new_body_gen
        } );

        if (debug)
        {
            // Leave the source code untouched for easier debugging.

            var dbg_f = 'string' === typeof f_or_s
                ?  (new Function( 'return (' + f_or_s + ');' ))()
                : f_or_s
            ;
        }
        
        // Convenience (esp. for `meth`)
        ret.getImpl = debug  ?  getImpl_dbg  :  getImpl;
        
        return ret;
        
        // --- Details
        
        var impl;
        function fext_wrapper( /*...arguments...*/ )
        {
            /*
              Create the implementation at the latest moment: 
              when all dependencies have been defined 
              (depgraph_complete).
            */
            return (impl ||  (impl = getImpl()))
                .apply( this, arguments );
        }

        function getImpl()
        {
            if (!impl)
            {
                var head = master_argmax_string()
                ,   body = master_bodycode_gen()
                ;
                try
                {
                    impl = new Function( head, body );
                }
                catch( e )
                {
                    console.error( 'fext: caught error while compiling the implementation: ' + e );
                    throw e;
                }
            }

            return impl;
        }


        function fext_wrapper_dbg()
        {
            _debugging = debug;

            var old_self = global.self;
            global.self = dbg_f;
            
            var ret = dbg_f.apply( this, arguments );

            global.self = old_self;
            
            _debugging = false;
            return ret;
        }
        
        function getImpl_dbg()
        {
            return dbg_f;
        }
        



        
        function master_argmax_string()
        {
            ensure_depgraph_complete();
            
            var argmax = piece_arr.reduce( argmax, 0 );
            function argmax( am, a_name )
            {
                return Math.max( am, space[ a_name ].narg );
            }

            argmax.toPrecision.call.a;

            return Array
                .apply( null, { length : argmax } )
                .map( function ( _, i ) { return argstring( i ); } )
                .join( ',' )
            ;        
        }

        function master_bodycode_gen()
        /*
          A cheap trampoline implementation that replaces tail calls
          with an integer assignment.

          An integer value >= 0 says which function will be run next
          *after* the current one returns.

          An integer value -1 says: final return.
        */ 
        {
            ensure_depgraph_complete();

            return [
                'var ' + V_THAT + ' = this'
                , ', ' + V_CASE_I + ' = 0'
                , ', ' + V_RET
                , ';'
                , 'while (true)'
                , '{'
                , '  switch( ' + V_CASE_I + ')'
                , '  {'
            ]
                .concat( piece_arr.map(
                    function ( a_name, i )
                    {
                        (a_name === name) === (i === 0)
                            ||  null.bug;
                        
                        return 'case ' + i + ': '
                            + space[ a_name ].callcode_gen( 
                                piece_i_of_name
                                , null
                                , { inline_body : inline_body }
                            )
                            + ' continue;\n';
                    }
                ) )
                .concat([
                    '    default: return ' + V_RET + ';'
                    , '  }'
                    , '}'
                    , ''
                ])
                .concat( 
                    inline_body

                        ?  []

                        :  piece_arr.map(
                            function ( a_name, i )
                            {
                                (a_name === name) === (i === 0)
                                    ||  null.bug;
                                
                                return space[ a_name ].piececode_gen(
                                    piece_i_of_name
                                );
                            }
                        )
                )
                .join( '\n' )
        }

        function ensure_depgraph_complete()
        {
            if (!depgraph_complete)
            {
                /*
                  We assume that all necessary mfun's have been
                  registered to the "namespace" identified by
                  namespacekey. 

                  We can now complete the graph of dependencies.
                */
                for (var added = true, n_last = 1; added; )
                {
                    added = false;

                    var new_n_last = piece_arr.length;
                    
                    for (var i = n_last; i < new_n_last; ++i)
                    {
                        var i_name     = piece_arr[ i ];
                        (i_name  ||  null).substring.call.a;

                        var i_o = space[ i_name ];
                        if (!i_o)
                        {
                            throw new Error
                            ('fext: did you forget to declare/name'
                             + ' "' + i_name + '"?'
                            );
                        }
                        
                        var i_name_arr = i_o.piece_arr_0;
                        
                        for (var j = i_name_arr.length; j--;)
                        {
                            var j_name = i_name_arr[ j ];
                            (j_name  ||  null).substring.call.a;

                            if (!(j_name in piece_i_of_name))
                            {
                                piece_i_of_name[ j_name ] =
                                    piece_arr.length;
                                
                                piece_arr.push( j_name );
                                added = true;
                            }
                        }
                    }

                    n_last = new_n_last;
                }

                depgraph_complete = true;
            }
        }
        
        function callcode_gen( piece_i_of_name, remaining_ex, opt )
        {
            remaining_ex == null  &&  (remaining_ex = expansion);
            
            var arr = [];

            for (var i = 0; i < narg; ++i)
                arr.push( argstring( i ) );

            var ret_arr = (opt  &&  opt.inline_body)

                ?  argname_arr.map(
                    function (arg, i) {
                        return arg + ' = ' + argstring( i ) + ';'
                    }
                )
                .concat([
                    new_body_gen( piece_i_of_name, opt )
                ])

                :  [
                    name + '_fext( ' + arr.join( ', ' ) + ' );'
                ]
            ;

            callcode_gen_expand( remaining_ex );
            
            return ret_arr.join( '\n' );

            function callcode_gen_expand( ex )
            {
                if (ex-- > 0)
                {
                    ret_arr.push(
                        'if (' + V_CASE_I + ' === '
                            + V_CASE_I_RETURN
                            + ') return ' + V_RET + ';'
                    );

                    piece_arr[ 0 ] === name  ||  null.bug;
                    
                    var only_self = piece_arr.length === 1;

                    for (var j_begin = 0, j_end = piece_arr.length
                         , j = j_begin;
                         j < j_end;
                         j++
                        )
                    {
                        var a_name = piece_arr[ j ]
                        ,   a_pi   = piece_i_of_name[ a_name ]
                        ;
                        if (!only_self)
                        {
                            tmp = j === j_end - 1
                                ? 'else {'
                                :
                                ((j_begin < j ?  'else if'  :  'if')
                                 + ' ('
                                 + V_CASE_I + ' === ' + a_pi
                                 + ') {'
                                )
                            ;
                            ret_arr.push( tmp );
                        }
                        ret_arr.push(
                            space[ a_name ].callcode_gen(
                                piece_i_of_name, ex, opt
                            )
                        );
                        if (!only_self)
                            ret_arr.push( '}' );
                    }
                }
            }
        }
        
        function piececode_gen( /*uint[string]*/piece_i_of_name )
        {
            var p_h_arr = []
                .concat( argname_arr )

            ,   p_head = 'function ' + name + '_fext( '
                + p_h_arr.join( ', ' ) + ' )'

            ,   new_body = new_body_gen( piece_i_of_name )
            ;
            return [
                p_head
                , '{'
                , '  var ' + V_UNDEFINED + ';'
                
                ,  new_body

                ,  '  ;'
                ,  '  ' + V_CASE_I + ' = ' + V_CASE_I_RETURN + ';'
                ,  '  ' + V_RET  + ' = ' + V_UNDEFINED + ';'
                , '}'
            ].join( '\n' );
        }        


        function new_body_gen( /*uint[string]*/piece_i_of_name, /*?object?*/opt )
        {
            var inline_body = opt  &&  opt.inline_body;

            if (inline_body  &&  has_var)
            {
                throw new Error( 'fext (inline_body: true): function "' + name + '" contains `var`, which are forbidden.'
                                 + ' Please use `let` or `const` instead.'
                               );
            }
            
            var new_body = s_body;
            
            // Decreasing order important here
            for (var i = tc_len; i--;) 
            {
                new_body = tc_arr[ i ]
                    .change_body( new_body, piece_i_of_name, opt );
            }

            return inline_body
                ?  'while(true) {\n' + new_body + '\n}\n'
                :  new_body;
        }
    }

    // ---------- API implementation: Variant to declare methods.
    
    function meth( a, b )
    /*
      API: 2 variants, but in all cases `name` is mandatory AND must
      be the same as the method name.

      (1) Anonymous functions (self-recursion or mutual recursion).
      
      o.<name> = meth( <name>, <anonymous_function_or_string> )  
      
      (2) Named functions (self-)2nd and 3rd for mutual recursion

      o.<name> = meth( <named_function_or_string> )


      IMPORTANT

      For performance reasons (*), the method declarations must take
      an extra input parameter `that`, and use it instead of `this`.

      (*) as of June 2018: issues in Firefox with .bind(this).
      
      On the other hand, the `mret` do NOT need to pass `that`.
      This reduces verbosity.

      Example (all examples also work on prototype):
      
      var o = {
      factorial : meth( 'factorial'
      , (that, n, acc) =>
      acc == null  ?  mret( self, n, 1 )
      : n > 1  ?  mret( self, n-1, acc*n )
      : acc)
      };


      Somewhat contrived example to show that
      we have to use `that` instead of `this`

      var o = {
      factorial : meth(
      'factorial'
      , (that, n) =>
      (
      (that._acc = (n  ||  1) * (that._acc || 1))
      , 
      n > 1
      ? mret( self, n-1 )
      : (that._tmp = that._acc
      , that._acc = 0
      , that._tmp
      )
      )
      )
      }
      
    */

    {
        var name = b
            ?  a
            :  (('' + a).match(
                    /^\s*function\s+([^\(\s]+)/)  ||  []
               )[ 1 ]
        ;
        (name  ||  null).required;
        name.substring.call.a;

        var debug = __fext_debug_all  ||  this  &&  this.debug;

        if (debug)
        {
            var f_or_s = b  ||  a
            ,   dbg_f = 'string' === typeof f_or_s
                ?  (new Function( 'return (' + f_or_s + ');' ))()
                : f_or_s
            ;
            meth_wrapper_dbg.getImpl = function () {
                return dbg_f;
            };
            return meth_wrapper_dbg;
        }

        
        // Use case: mutual recursion (or named self-recursion)
        
        /*
          3-step strategy required to support mutual recursion between
          methods:

          (1) the API user declares all methods: ==> `meth_wrapper2`
          created.

          (2) the API user calls *one* such method (`meth_wrapper2`),
          which setups *all* methods.

          For *each* method: call `mfun()`, `meth_wrapper1` now ready.

          (3) the *one* targetted method is called (`meth_wrapper1`),
          which in turns creates the actual implementation and runs it.

          Optimization: the method is replaced with its implementation.
          In any case, the implementation is cached: created once only.
        */

        var _MSM = '__meth_setup_mfun__';

        meth_wrapper2[ _MSM ] = meth_setup_mfun;

        return meth_wrapper2;

        // --- Details

        function meth_wrapper_dbg()
        {
            var already_debugging = !!_debugging;

            if (!already_debugging)
            {
                // Top call (begin)
                
                _debugging = this;

                var old_self = this.self;
                this.self = dbg_f;
            }
            
            var ret = dbg_f.apply( this, already_debugging
                                   ?  arguments
                                   :  [ this ].concat( [].slice.call( arguments ) ) );
            
            if (!already_debugging)
            {
                // Top call (end)

                this.self = old_self;
                _debugging = false;
            }

            return ret;
        }
        
        function meth_wrapper2()
        {
            if (this[ name ] === meth_wrapper2)
            {
                // We support both method definitions: prototype-based
                // and direct object assignment. See meth_* examples:
                // ./test/fext_unittest_es6.js
                
                setup_all_mfuns( Object.getPrototypeOf( this ) );
                setup_all_mfuns( this );
                
                // "all" include myself, therefore:
                this[ name ] === meth_wrapper1  ||  null.bug;
            }
            
            return this[ name ].apply( this, arguments );
        }
        
        function setup_all_mfuns( o )
        {
            for (var k in o)
            {
                var m            = o[ k ]
                ,   m_setup_mfun = m  &&  m[ _MSM ]
                ;
                if (m_setup_mfun)
                    m_setup_mfun( o );
            }
        }

        var meth_mfun;
        function meth_setup_mfun( o )
        {
            var namespacekey = get_owner( o, name );

            meth_mfun = mfun.call(
                {
                    preprocess_argname_arr : meth_preprocess_argname_arr
                    , mret_that_dot : true
                }
                , namespacekey, a, b );

            o[ name ] = meth_wrapper1;
            o[ name ].getImpl = meth_mfun.getImpl;
        }

        function meth_preprocess_argname_arr( argname_arr )
        {
            if (argname_arr[ 0 ] !== 'that')
            {
                throw new Error
                ('fext: meth: the first parameter of a method'
                 + ' must be the extra parameter `that`, not `'
                 + argname_arr[ 0 ] + '`.'
                );
            }
            return argname_arr.slice( 1 );
        }
        
        var impl;
        function meth_wrapper1()
        {
            // Optimizations: (1) create the implementation only once
            // and (2) replace the method with its implementation.

            return (impl
                    ||  (impl
                         = get_owner( this, name )[ name ]
                         = meth_mfun.getImpl()
                        )
                   )
                .apply( this, arguments )
            ;
        }
        
    }

    // ---------- API implementation: Convenience tool ----------

    function log_to( what /*, ... args... */ )
    {
        if ('undefined' !== typeof console
            &&  'function' === typeof console[ what ]
           )
        {
            // Browsers
            console[ what ].apply( console
                                   , [].slice.call( arguments, 1 )
                                 );

        }
        else if ('function' === typeof print)
        {
            // Nashorn and such
            var arr = [].slice.call( arguments );
            arr[ 0 ] = '[' + what + ']';
            print.apply( null, arr );
        }
    }

    // ---------- Private details ----------
    
    // Various constants
    
    var V_CASE_I        = '__fext_case_i__'
    ,   V_CASE_I_RETURN = '-1'
    ,   V_RET           = '__fext_ret__'
    ,   V_UNDEFINED     = '__fext_undefined__'

    ,   V_THAT          = 'that'
    ;
    
    function argstring( i ) { return '__fext_arg' + i + '__'; }
    
    function commented( s )
    {
        return '/*' + s.replace( /\/\*|\*\//g, '  ' ).trim() + '*/';
    }

    function find_tail_calls( /*string*/name, /*string*/code )
    {
        var opt = this;

        /*
          Implementation note: lousy regexps, no parser. The most
          common cases are covered. Throws an error in the remaining
          cases.
        */

        var tc_arr = []
        ,   rx = /\breturn\b[^;]*;?/g
        ,   mo
        ,   white_code = white_out_comments( code )

        ,   inner_fun = code.match( /\bfunction\s+\S[\S\s]{0,20}/ )
        ;
        if (inner_fun )
        {
            throw new Error(
                'fext: Inner functions not allowed,'
                    + ' please move them to the outside,'
                    + ' e.g. using function declarations.'
                    + ' Have a look at `' + inner_fun[ 0 ] + '...`'
                    + ' in the code.'
            );
        }
        while (mo = rx.exec( white_code ))
            tc_arr.push( tc_of_mo( mo ) );
        
        return tc_arr;

        function tc_of_mo( mo )
        {
            var begin = mo.index
            ,     end = rx.lastIndex
            ,     s_0 = code.substring( begin, end )
            ;
            begin.toPrecision.call.a;
            end.toPrecision.call.a;
            0 <= begin  &&  begin < end  &&  end <= code.length
                ||  null.bug;

            // --- Stuff that will be returned
            
            // `sf_tmpl_arr` is an array of (string | function)
            var sf_tmpl_arr = [] // used by `tc_change_body`

            ,  tc_name_arr = [] // returned
            ,  tc_name_set = {}

            // --- Try two relatively common forms, else throw error
            
            , simple_rx = /^return\s+(mret\s*\([\s\S]+?\))\s*$/
                
            , cond_rx =
                /^return\s+((?:[^\?]+(?:\?[^\:]+:)?)+)$/
                
            , tmp
            ;
            sf_tmpl_arr.push( commented( s_0 ) + '\n' )
            sf_tmpl_arr.push( '{' );
            
            if (tmp = s_0.match( simple_rx ))
            {
                var s_call = tmp[ 1 ];
                
                sf_tmpl_arr.push(
                    sf_tmpl_gen.call(
                        opt
                        , name, tc_name_set, tc_name_arr
                        , s_call
                    )
                    , ';\n'
                    , tc_return
                    , '\n'
                );
            }
            else if (tmp = s_0.match( cond_rx ))
            {
                var cond_expr = tmp[ 1 ]
                ,   cond_rx_2 = /(?:([^\?]+\?))?([^\:]+)($|:)/g
                ,   tmp2
                ;
                while (tmp2 = cond_rx_2.exec( cond_expr ))
                {
                    var s_cond  = tmp2[ 1 ]  ||  ''
                    ,   s_call  = tmp2[ 2 ]
                    ,   s_colon = tmp2[ 3 ]  ||  ''
                    ;
                    sf_tmpl_arr.push(
                        s_cond 
                        , sf_tmpl_gen.call(
                            opt
                            , name, tc_name_set, tc_name_arr
                            , s_call
                        )
                        , s_colon  ?  '\n' + s_colon  :  ''
                    );
                }
                sf_tmpl_arr.push(
                    ';\n'
                    , tc_return
                    , '\n'
                );
            }
            else
            {
                log_to( 'error', s_0 );
                null.tail_form_not_supported;
            }
            sf_tmpl_arr.push( '}' );
                        
            var change_body = tc_change_body
                .bind( null, sf_tmpl_arr, begin, end )
            ;
            return Object.freeze({
                name_arr      : Object.freeze( tc_name_arr )
                , change_body : Object.freeze( change_body )
            });

        }
    }

    function sf_tmpl_gen
    ( /*string*/name, /*object*/tc_name_set, /*arr*/tc_name_arr
        , /*string*/s
    )
    // Returns: string | function( piece_i_of_name )
    // Updates: `tc_name_set` and `tc_name_arr`
    {
        var opt = this
        , mret_that_dot = opt  &&  opt.mret_that_dot
        ;
        
        s = s.trim();
        if (/^mret\b/.test( s ))
        {
            // We'll need the `case_i` value, which itself
            // depends on `piece_i_of_name`, that is why
            // we need a function here.

            var mo = /^mret\s*\(([\s\S]*)\)\s*;?$/.exec( s );
            mo  ||  (log_to( 'error', s )
                     , null.mret_form_not_supported);
            
            // Trampoline call, actually similar to Backus'
            // metacomposition (just a general remark).

            var mret_args = split_args( mo[ 1 ] )
            ,    a_name_0 = mret_args[ 0 ]
            
            ,    mtd_mo = /^\s*that\s*\.\s*(\S+)\s*$/
                .exec( a_name_0 )

            ,    a_name_1
            ;
            if (mret_that_dot)
            {
                // Support debugging of methods (methD) => make
                // `that.<methodName>` mandatory
                if (!mtd_mo)
                {
                    throw new Error( 'fext(meth/methD): issue with `' + s + '`:'
                                     + ' within a method, start all your `mret` calls using `that.`:'
                                     + ' `mret( that.self, ... ) or mret( that.otherMethod, ... )`'
                                   );
                }
                a_name_1 = mtd_mo[ 1 ];
            }
            else
            {
                if (mtd_mo)
                {
                    throw new Error(
                        'fext(mfun/mfunD): issue with `' + s + '`:'
                            + ' a simple function may only have `mret` calls WITHOUT `that.`.'
                            + ' Do not write `mret( that.methodName, ... )` within a simple function.'
                            + ' Only use `mret( functionName, ... )` within a simple function.'
                            + ' If you really need the method of an object here, then call it directly, without `mret`.'
                    );
                }
                a_name_1 = a_name_0;
            }
            
            // Support anonymous self-recursion
            var a_name   =
                a_name_1 === 'self'  ?  name  :  a_name_1
            
            ,   rest_args = mret_args.slice( 1 )
            ; 

            (a_name  ||  null).substring.call.a;
            if (!(a_name in tc_name_set))
            {
                tc_name_set[ a_name ] = true;
                tc_name_arr.push( a_name );
            }
            
            return f;
        }
        else if (/\bmret\b/.test( s ))
        {
            log_to( 'error', s );
            null.mret_tail_call_form_not_supported;
        }
        else
        {
            // No variable left here, all values known.
            // We can already produce the string.
            return '  (' + V_CASE_I + '=' + V_CASE_I_RETURN
                + ', ' + V_RET + ' = ' + s.replace( /;$/, '' ) + ')  ';
        }

        function f( /*object*/piece_i_of_name )
        // Returns a string
        {
            a_name in piece_i_of_name
                ||  (log_to( 'error', a_name + ' not found')
                     , null.function_not_registered_yet);

            var i = piece_i_of_name[ a_name ];
            i.toPrecision.call.a;
            
            return '  ('

                + (name === a_name
                   ?  []
                   :  [ V_CASE_I + '=' + i ]
                  )
                .concat( rest_args.map( set_one_arg ) )
                .join( ', ' )

                + ')  ';

            function set_one_arg( v, i )
            {
                return argstring( i ) + '=' + v;
            }
        }

    }

    function get_owner( obj, property )
    {
        return obj.hasOwnProperty( property )
            ?  obj
            :  get_owner( Object.getPrototypeOf( obj )
                          , property
                        )
        ;                                   
    }

    function split_args( s )
    {
        var arr = s.split( ',' );
        for (var i = arr.length; i--;)
        {
            (
                arr[ i ] = arr[ i ].trim()
            )
                ||  null.empty_arg_detected
            ;
        }
        return arr;
    }

    function tc_change_body( sf_tmpl_arr, begin, end
                             , body, piece_i_of_name, opt )
    {
        return body.substring( 0, begin )
            + sf_tmpl_arr.map( sf_one ).join( '' )
            + body.substring( end )
        ;
        function sf_one( sf )
        {
            return 'string' === typeof sf  ? sf
                :  sf( piece_i_of_name, opt )
            ;
        }
    }

    function tc_return( /*object*/piece_i_of_name, /*?object?*/opt )
    {
        var inline_body = opt  &&  opt.inline_body;
        return inline_body
            ?  'break;'
            :  'return;'
        ;
    }

    function white_out_comments( code )
    {
        return code.replace( /\/\*[\s\S]*?\*\/|\/\/.*?(?=[\r\n])/g, w );
        function w( s )
        {
            return ' '.repeat( s.length );
        }
    }
    
    
})(global  ||  exports  ||  this);
