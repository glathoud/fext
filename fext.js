/*global mret mdecl meth mfun methD mfunD console Map print global
 exports __fext_debug_all*/

/*
  fext.js: Fast Explicit Tail Calls

  Mutual recursion is supported.
  
  By G. Lathoud, June 2018 and later.
  Boost license, see file ./LICENSE


  API:

  Use `mfun` to declare a function, `meth` to declare a method, and
  wrap the inner tail calls with `mret`.

  Examples: ./test/fext_unittest_es6.js and ./test/fext_unittest.js
  
  Documentation: see ./README.md (on GitHub:
  https://github.com/glathoud)


  Write-up with a speed test: see ./index.html (live instance:
  http://glat.info/fext)

  
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

    global.mret  = mret;
    global.mfun  = mfun;
    global.meth  = meth;
    global.mself = mself;

    // Debugging tools

    var mfunD = global.mfunD = mfun.bind( { debug : true } );
    var methD = global.methD = meth.bind( { debug : 'method' } );

    // Alternative: single namespace

    // `fext` itself is a shortcut for `mfun`
    // https://github.com/glathoud/fext/issues/13
    var fext = global.fext = mfun; 

    fext.mret  = mret;
    fext.mfun  = mfun;
    fext.meth  = meth;
    fext.mfunD = mfunD;
    fext.methD = methD;
    fext.mself = mself;
    
    // ---------- API: convenience tool

    mfun.log_to = log_to;

    // ---------- API implementation

    function mself()
    { 
        throw new Error
        ( 'I am just a symbol, not supposed to be called.' );
    }

    var _debugging = false;

    function mret()
    {
        if (_debugging)
        {
            var this_ =
                'object' === typeof _debugging  &&  _debugging
                ||  null

	    ,   arg0 = arguments[ 0 ]
            ,      f = arg0 === mself  ||  !arg0
                     ?  mself._current_dbg_f
 	             :  arg0

            ,   arg_rest = [].slice.call( arguments, 1 )
            ;
            return f
                .apply( this_  // methD case
                        , ( this_
                            , this_
                            ?  [ this_ ]  // methD case
                            :  []         // mfunD case
                          )
                        .concat( arg_rest )
                      );
        }
        else
        {
            throw new Error
            (
                'fext: wrap your function with `mfun`. '
                    + ' See https://github.com/glathoud/fext and '
                    + 'http://glat.info/fext for examples.'
            );
        }
    }

    // Various constants
    
    var LABEL_MAIN_LOOP   = '__fext_main_loop__'
    ,   LABEL_INLINE_LOOP = function ( i )
    {
        (isFinite(i)  &&  i).toPrecision.call.a;
        return '__fext_inline_loop_' + i + '__';
    }
        
    ,   V_CASE_I        = '__fext_case_i__'
    ,   V_CASE_I_RETURN = '-1'
    ,   V_RET           = '__fext_ret__'
    ,   V_UNDEFINED     = '__fext_undefined__'
    ,   V_THAT          = 'that'
    ;
    
    function mfun( a, b, c )
    /*
      Returns a function that will lazily create the optimized
      implementation, cache it, and call it.
      
      API: missing args allowed, but order fixed:

      var f = mfun( [groupkey,] [name,] f_or_s );
      
      `f_or_s` is mandatory, the other two optional.

      `f_or_s`: string|function
      `name`:   string

      `groupkey` is any common object that will be used as a key
      to group mutually recursive functions.

      `groupkey` will NOT be modified, only used as a key to
      determine which functions know each other (a.k.a. group).

      --- Variants --

      (More examples in ./README.md)

      (1) Self-recursion

      var my_function = mfun( anonymous_function_or_string );
      
      (2) Mutual recursion with named functions

      Custom `groupkey`:

      var groupkey = {}  // whatever object
      ,   first_fun = mfun( groupkey, named_func_or_str )  
      ,  second_fun = mfun( groupkey, named_func_or_str )  
      ,   third_fun = mfun( groupkey, named_func_or_str )  
      ;

      Default `groupkey` (=== `first_fun`):

      var first_fun = mfun( named_func_or_str )  
      ,  second_fun = mfun( first_fun, named_func_or_str )  
      ,   third_fun = mfun( first_fun, named_func_or_str )  
      ;

      (3) Mutual recursion with anonymous function (e.g. arrow
      functions)

      Custom `groupkey`:

      var groupkey = {}  // whatever object
      ,   first_fun = mfun( groupkey, name, anonymous_f_or_s )  
      ,  second_fun = mfun( groupkey, name, anonymous_f_or_s )  
      ,   third_fun = mfun( groupkey, name, anonymous_f_or_s )  
      ;

      Default `groupkey` (=== `first_fun`):

      var first_fun = mfun( name, anonymous_func_or_str )  
      ,  second_fun = mfun( first_fun, name, anonymous_func_or_str )
      ,   third_fun = mfun( first_fun, name, anonymous_func_or_str )
      ;
    */
    {
        /*
          Read the arguments, missing args allowed, but order fixed:

          [groupkey], [name], f_or_s

          `f_or_s` is mandatory, the other two optional.

        */    
        var arr =
            [          a,    b,      c ]
        ,   groupkey, name, f_or_s
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
                    groupkey = x;
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
        var inline_body_me = dflt( this  &&  this.inline_body
                                   , true
                                 ); 
        
        // ?integer>0?: number of expansion levels
        var expansion_me = dflt( this  &&  this.expansion
                                 , 4
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

        groupkey  ||  (groupkey = ret);

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

        // Support anonymous functions: `return mret( mself, ...)`

        name  ||  (name = '__fext_anonymous_' + (
            mfun.__fext_anon_id__ = 1 + (mfun.__fext_anon_id__ | 0)
        ) + '__');

        // --- Check
        
        (f_or_s  &&  name  &&  groupkey)  ||  null.missing_arg;
        
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

        // `argname_csv` might include comments like `/*string*/`
        ,   argname_csv = argname_arr.join( ', ' )
        ;
        // `argname_arr` does not include comments anymore
        argname_arr = argname_arr.map( function ( s ) {
            return white_out_comments( s ).trim();
        })
        
        // Scan the body for tail calls
        
        var tc_arr = find_tail_calls
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

        // Things we'll do later (when all `mfun` declared)
        ,   depgraph_complete = false
        ,   all_argname_arr = argname_arr.slice() // finished later
        ,   all_argname_set = argname_arr.reduce(
            function ( o, s ) {
                o[ s ] = true;
                return o;
            }
            , {}
        )
        ,   other_argname_arr = [] // built later
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
                topmap.has( groupkey )
                    ?  topmap
                    :  (topmap.set( groupkey, {} ), topmap)
            )
            .get( groupkey )
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

        // `debug` support: Leave the source code untouched for
        // easier debugging.
        var dbg_f = 'string' === typeof f_or_s
            ?  (new Function( 'return (' + f_or_s + ');' ))()
            : f_or_s
        ;

        // Convenience (esp. for `meth`)
        ret.getImpl = debug  ?  null  :  getImpl;
        
        ret.getImplEval = debug
            ?  function () { return ret; }
        :   function () { return '(' + getImpl() + ')'; }
        ;
        
        return ret;
        
        // --- Details
        
        var impl;
        function fext_wrapper( /*...arguments...*/ )
        {
            if (_debugging)
                return fext_wrapper_dbg.apply( this, arguments );
            
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
                var head = argname_csv
                ,   body = master_bodycode_gen()
                ;
                try
                {
                    /*
                      Nicety: make sure the returned function has a
                      meaningful name. Reason: simply doing `new
                      Function(head,body)` would return an anonymous
                      function).
                    */
                    var tmp = 'return ' + name + ';\n'
                        + 'function ' + name + '( ' + head + ' )\n'
                        + '{\n'
                        + body
                        + '}\n'
                    ;
                    impl = new Function( tmp )();
                }
                catch( e )
                {
                    log_to(
                        'error'
                        , 'fext: caught error while compiling '
                            + 'the implementation: ' + e
                    );
                    throw e;
                }
            }

            return impl;
        }


        function fext_wrapper_dbg()
        {
            var old_debugging = _debugging;
	    var old_dbg_f = mself._current_dbg_f;
            
            if (!debug)
            {
                throw new Error(
                    'fext.js: to debug, please set mfunD/methD'
                        + ' for "' + name + '" as well.'
                );
            }
            
            _debugging = debug;
            mself._current_dbg_f = dbg_f;

            try
            {
                var ret = dbg_f.apply( this, arguments );
	    }
            finally
            {
                mself._current_dbg_f = old_dbg_f;
                _debugging = old_debugging;
            }
            
            return ret;
        }
        
        function getImpl_dbg()
        {
            return dbg_f;
        }
        
        function master_bodycode_gen()
        /*
          Tail call elimination: replace each tail call with an
          integer assignment.

          An integer value >= 0 says which function will be run next
          *after* the current one returns.

          An integer value -1 says: final return.
        */ 
        {
            ensure_depgraph_complete();

            var is_last_inline = inline_body_me
                &&  !expansion_me
            
            ,   gen_cfg = {
                inline_body       : inline_body_me
                , is_last_inline  : is_last_inline
                , expansion       : expansion_me
                , inline_loop     : { ind : 0 } // will be unique, esp. for D #10
            }
            ;
            
            return [
                '"use strict";'
                , 'var ' +
                    (
                        [
                            V_THAT + ' = this'
                            , V_CASE_I + ' = 0'
                            ,  V_UNDEFINED
                            ,  V_RET
                        ]
                            .concat( other_argname_arr )
                            .concat( all_argname_arr
                                     .map( _fext_argname )
                                   )
                    ).join( ', ' )
                , ';'
                , LABEL_MAIN_LOOP + ': for (;;)'
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
                                , gen_cfg
                            )
                            + ' continue ' + LABEL_MAIN_LOOP
                            + ';\n';
                    }
                ) )
                .concat([
                    '    default: return ' + V_RET + ';'
                    , '  }'
                    , '}'
                    , ''
                ])
                .concat( 
                    inline_body_me

                        ?  []

                        :  piece_arr.map(
                            function ( a_name, i )
                            {
                                (a_name === name) === (i === 0)
                                    ||  null.bug;
                                
                                return space[ a_name ]
                                    .piececode_gen(
                                        piece_i_of_name
                                        , gen_cfg
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
                  registered to the "group" identified by
                  groupkey. 

                  We can now complete the graph of dependencies.

                  And we use that opportunity to build
                  `other_argname_arr`.
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

                        // We use that opportunity to build
                        // `other_argname_arr`

                        var o_argname_arr = i_o.argname_arr;
                        for (var j = o_argname_arr.length; j--;)
                        {
                            var an = o_argname_arr[ j ];
                            if (!(an in all_argname_set))
                            {
                                all_argname_set[ an ] = true;
                                all_argname_arr  .push( an );
                                other_argname_arr.push( an );
                            }
                        }
                    }

                    n_last = new_n_last;
                }

                depgraph_complete = true;
            }
        }
        
        function callcode_gen( piece_i_of_name, remaining_ex, cfg )
        {
            cfg  ||  null.mandatory;
            
            remaining_ex == null
                &&  (remaining_ex = cfg.expansion);
            
            var ret_arr = [
                cfg.inline_body
                
                    ?   new_body_gen( piece_i_of_name, cfg )
                
                    :  name + '_fext();'
            ];

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

                    for (var j_begin = 0
                         , j_end = piece_arr.length
                         , j_last = j_end - 1
                         
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

                        var cfg2 = cfg;
                        
                        if (cfg.inline_body)
                        {
                            cfg2 = Object.create( cfg2 );
                            cfg2.is_last_inline = ex === 0;
                        }
                        
                        ret_arr.push(
                            space[ a_name ].callcode_gen(
                                piece_i_of_name, ex, cfg2
                            )
                        );
                        if (!only_self)
                            ret_arr.push( '}' );
                    }
                }
            }
        }
        
        function piececode_gen(
            /*uint[string]*/piece_i_of_name
            , /*object*/cfg
        )
        {
            cfg  ||  null.mandatory;
            
            var p_head   = 'function ' + name + '_fext()'
            ,   new_body = new_body_gen( piece_i_of_name, cfg )
            ;
            return [
                p_head
                , '{'
                , '  var ' + V_UNDEFINED + ';'
                
                ,  new_body

                ,  '  ;'
            ]
                .concat(
                    cfg.inline_body
                        ?  [ 'return;' ]
                        : [ V_CASE_I + ' = ' + V_CASE_I_RETURN + ';'
                            , V_RET  + ' = ' + V_UNDEFINED + ';'
                          ]
                )
                .concat( [ '}' ] )
                .join( '\n' );
        }


        function new_body_gen( /*uint[string]*/piece_i_of_name
            , /*object*/cfg )
        {
            cfg  ||  null.mandatory;
            var    inline_body = cfg.inline_body
            ,   is_last_inline = cfg.is_last_inline
            ;
            if (inline_body  &&  has_var)
            {
                throw new Error(
                    'fext (inline_body: true): function "' + name
                        + '" contains `var`, which is forbidden.'
                        + ' Please use `let` or `const` instead.'
                );
            }

            if (inline_body)
            {
                cfg.inline_loop.ind.toPrecision.call.a;

                // Common index to enforce unicity, esp. for D #10
                cfg.inline_loop.ind++;
            }

            var new_body = s_body;

            // Decreasing order important here
            for (var i = tc_len; i--;) 
            {
                new_body = tc_arr[ i ]
                    .change_body( new_body, piece_i_of_name, space
                                  , cfg );
            }
            
            return inline_body  &&  !is_last_inline

                ?  LABEL_INLINE_LOOP( cfg.inline_loop.ind )
                + ': for(;;) {\n' + new_body + '\n}\n'

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

      All `mret` calls must use `that.`, as in `mret( that.mself,
      ...)`.

      (*) as of June 2018: issues in Firefox with .bind(this).

      NOTE

      This extra input parameter `that` also made possible to write
      the debugging tool `methD`.
      
      
      Example:
      
      var o = {
      factorial : meth( 'factorial'
      , (that, n, acc) =>
      acc == null  ?  mret( that.mself, n, 1 )
      : n > 1  ?  mret( that.mself, n-1, acc*n )
      : acc)
      };

      More examples in ./README.md

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
            meth_wrapper_dbg.getImpl = null;
            meth_wrapper_dbg.getImplEval = function () {
                return meth_wrapper_dbg;
            };
            
            return meth_wrapper_dbg;
        }

        
        // Use case: mutual recursion (or named self-recursion)
        
        /*
          3-step strategy required to support mutual recursion
          between methods:

          (1) the API user declares all methods: ==> `meth_wrapper2`
          created.

          (2) the API user calls *one* such method
          (`meth_wrapper2`), which setups *all* methods.

          For *each* method: call `mfun()`, `meth_wrapper1` now
          ready.

          (3) the *one* targetted method is called
          (`meth_wrapper1`), which in turns creates the actual
          implementation and runs it.

          Optimization: the method is replaced with its
          implementation.  In any case, the implementation is
          cached: created once only.
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

                var old_debugging = _debugging;
                _debugging = this;

                var old_dbg_f = mself._current_dbg_f;
                mself._current_dbg_f = dbg_f;
            }

            try
            {
                var ret = dbg_f.apply(
                    this
                    , already_debugging
                        ?  arguments
                        :  [ this ].concat( [].slice.call( arguments ) )
                );
            }
            finally
            {
                if (!already_debugging)
                {
                    // Top call (end)
                    
                    mself._current_dbg_f = old_dbg_f;
                    _debugging = old_debugging;
                }
            }

            return ret;
        }
        
        function meth_wrapper2()
        {
            if (this[ name ] === meth_wrapper2)
            {
                // We support both method definitions:
                // prototype-based and direct object assignment. See
                // meth_* examples: ./test/fext_unittest_es6.js
                
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
            var groupkey = get_owner( o, name );

            meth_mfun = mfun.call(
                {
                    preprocess_argname_arr :
                    meth_preprocess_argname_arr
                    
                    , mret_that_dot : true
                }
                , groupkey, a, b );

            o[ name ] = meth_wrapper1;
            o[ name ].getImpl = debug
                ?  null  :  meth_mfun.getImpl;

            o[ name ].getImplEval = debug
                ?  function () { return o[ name ].bind( o ); }
            :  function () { return '(' + o[ name ].getImpl() + ')'; };
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
            // Optimizations: (1) create the implementation only
            // once and (2) replace the method with its
            // implementation.

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
    
    function commented( s )
    {
        return '/*' + s.replace( /\/\*|\*\//g, '  ' ).trim() + '*/';
    }

    function _fext_argname( s )
    // Temporary variables used (as little as possible) to prepare a
    // call.
    {
        return '__fext_arg_' + s + '__';
    }

    var SIMPLE_RX = /^\s+((?:\w+\.)?\bmret\s*\([\s\S]+?\))\s*$/
        
    ,   COND_RX =
        /^\s+((?:[^\?:,]+\?[^\?:]+:)*?[^\?:,]+\?[^\?:]+:[^\?:]+)\s*$/
        ;
    
    function find_tail_calls( /*string*/name, /*string*/code )
    {
        var opt = this;

        /*
          Implementation note: lousy regexps, no parser. The most
          common cases are covered. Throws an error in the remaining
          cases.
        */

        var tc_arr = []
        ,   rx = /\breturn\b([^;]*);?/g
        ,   mret_rx = /\bmret\b\s*\(/
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

        function tc_of_mo( mo_0 )
        {
            var begin = mo_0.index
            ,     end = rx.lastIndex
            ,     s_0 = mo_0[ 0 ]
            ,     s_1 = mo_0[ 1 ]
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

            , has_mret = mret_rx.test( s_1 )
            , tmp
            ;
            sf_tmpl_arr.push( commented( s_0 ) + '\n' )
            sf_tmpl_arr.push( '{' );
            
            if (tmp = has_mret  &&  s_1.match( SIMPLE_RX ))
            {
                var s_call   = tmp[ 1 ]
                ,   s_call_2 = sf_tmpl_gen.call(
                    opt
                    , name, tc_name_set, tc_name_arr
                    , s_call
                )
                ;
                sf_tmpl_arr.push( s_call_2, ';\n' );

                sf_tmpl_arr.push( tc_return, '\n' );
                
            }
            else if (tmp = has_mret  &&  s_1.match( COND_RX ))
            {
                var cond_expr = tmp[ 1 ]
                ,   cond_rx_2 = /(?:([^\?,]+)\?)?([^\:]+)($|:)/g
                ,   tmp2
                ;
                while (tmp2 = cond_rx_2.exec( cond_expr ))
                {
                    var s_cond  = (tmp2[ 1 ]  ||  '').trim()
                    ,   s_call  = (tmp2[ 2 ]).trim()
                    ,   s_colon = tmp2[ 3 ]  ||  ''
                    ;

                    // We "unbox" the
                    // return_<conditional_expression> into:
                    // <if..else..> for performance reasons.
                    
                    if (s_cond)
                    {
                        sf_tmpl_arr.push(
                            'if (' + s_cond  + ')\n'
                        );
                    }

                    var s_call_2 = sf_tmpl_gen.call(
                        opt
                        , name, tc_name_set, tc_name_arr
                        , s_call
                    ); 
                    
                    sf_tmpl_arr.push( '{\n{\n', s_call_2
                                      , ';\n}\n' );

                    sf_tmpl_arr.push( tc_return, '\n' );

                    sf_tmpl_arr.push( '\n}\n' );
                }
            }
            else if (has_mret)
            {
                var msg = 'mret form not supported:\n' + s_1 + '\n'
                    + 'If a conditional expression, '
                    + 'try NOT to put any comma '
                    + 'in the condition parts.'
                ;
                throw new Error( msg );
            }
            else
            {
                // return a non-mret expression
                
                var s_call = s_1;
                s_call.substring.call.a;
                sf_tmpl_arr.push(
                    sf_tmpl_gen.call(
                        opt
                        , name, tc_name_set, tc_name_arr
                        , s_call
                    )
                    , ';\n'
                    , tc_return_non_mret
                    , '\n'
                );
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
        ,   mret_that_dot = opt  &&  opt.mret_that_dot
        ;
        
        s = s.trim();
        if (/^(?:\w+\.)?mret\b/.test( s ))
        {
            // We'll need the `case_i` value, which itself
            // depends on `piece_i_of_name`, that is why
            // we need a function here.

            var mo = /^(?:\w+\.)?mret\s*\(([\s\S]*)\)\s*;?$/
                .exec( s );
            
            mo  ||  (log_to( 'error', s )
                     , null.mret_form_not_supported_1);
            
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
                    throw new Error
                    ('fext(meth/methD): issue with `' + s + '`:'
                     + ' within a method, '
                     + 'start all your `mret` calls using `that.`:'
                     + ' `mret( that.mself, ... ) or '
                     + 'mret( that.otherMethod, ... )`'
                    );
                }
                a_name_1 = mtd_mo[ 1 ];
            }
            else
            {
                if (mtd_mo)
                {
                    throw new Error
                    ('fext(mfun/mfunD): issue with `' + s + '`: '
                     + 'a simple function may only have '
                     + '`mret` calls WITHOUT `that.`. '
                     + 'Do not write `mret( that.methodName, ... )`'
                     + ' within a simple function. '
                     + 'Only use `mret( functionName, ... )` '
                     + 'within a simple function. '
                     + 'If you really need the method of an object '
                     + 'here, then call it directly, '
                     + 'without `mret`.'
                    );
                }
                a_name_1 = a_name_0;
            }

            // Support alternative namespaces, as in "fx.mself" or
            // "fx.someOtherName"

            var a_name_2 = a_name_1.split( '.' ).slice( -1 )[ 0 ];
            
            // Support anonymous self-recursion
            var a_name   = a_name_2 === 'mself'  ?  name  :  a_name_2
            
            ,   rest_args = mret_args
                .slice( 1 )
                .map( function ( s ) { return s.trim(); } )
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
            // We can already prepare the string.
            var sv = s.replace( /\s*;\s*$/, '' );
            return f_non_mret; // behind a function for inline_body
        }

        function f_non_mret(
            /*object*/piece_i_of_name
            , /*object*/space
            , /*?object?*/opt2 )
        {
            // No variable left here, all values known.
            if (opt2  &&  opt2.inline_body)
                return '  return ' + sv + '  ';
            
            return '  (' + V_CASE_I + '=' + V_CASE_I_RETURN + ','
                + V_RET + ' = ' + sv + ')  ';
        }
        
        function f( /*object*/piece_i_of_name, /*object*/space
            , /*?object?*/opt2
        )
        // Returns a string
        {
            a_name in piece_i_of_name
                ||  (log_to( 'error', a_name + ' not found')
                     , null.function_not_registered_yet);

            var i = piece_i_of_name[ a_name ];
            i.toPrecision.call.a;

            var rest_args_2 = rest_args.slice()
            ,   argname_arr = space[ a_name ].argname_arr
            ;
            // Support partial calls: set the remaining
            // parameters to `undefined`.
            var n_required = argname_arr.length
            ,   n_sofar    = rest_args_2.length
            if (n_sofar < n_required)
            {
                rest_args_2.length = n_required;
                for (var z = n_sofar; z < n_required; ++z)
                    rest_args_2[ z ] = V_UNDEFINED;
            }

            // We try to eliminate unneeded assignments (where
            // nothing changes). Quite simple strategy for now:
            // until the first non-identity assignment.
            //
            // Identity assignment means: `<varname> = <varname>;`
            // Non-identity assign: `<varname> = <anything else>;`

            var first_needed = false
            ,   n_needed = rest_args_2
                .reduce( count_n_needed, 0 )

            ,   zero_needed = 0 === n_needed

            ,   more_than_one_needed = 1 < n_needed

            ,   arr = [name !== a_name  &&  (V_CASE_I + '=' + i)]
                .concat(
                    zero_needed
                        ?  []

                        : (first_needed = false
                           , rest_args_2.map( prepare_one_arg )
                          )
                        .concat(
                            (first_needed = false
                             , rest_args_2.map( set_one_arg )
                            )
                        )
                )
                .filter( function ( s ) { return s; } )
            ;
            return arr.length ?  '  (' + arr.join( ', ') + ')  '
                :  ''
            ;
            
            function count_n_needed( n, v, i )
            {
                return (first_needed
                        ||  (first_needed = v !== argname_arr[ i ]
                            )
                       )
                    ?  n+1
                    :  n
                ;
            }
            
            function prepare_one_arg( v, i )
            {
                (v  ||  null).substring.call.a;
                return is_fext_arg_needed( v, i )
                    && (fext_arg( i ) + ' = ' + v);
            }
            
            function set_one_arg( v, i )
            {
                (v  ||  null).substring.call.a;
                return is_fext_arg_needed( v, i )

                // Indirect (to be safe)
                    ?  (argname_arr[ i ] + ' = ' + fext_arg( i ))

                // Direct (no safety needed here)
                    :  v !== argname_arr[ i ]
                    ?  argname_arr[ i ] + ' = ' + v

                // Unchanged
                    : ''
                ;
            }

            function is_fext_arg_needed( v, i )
            {
                // Detect the first non-identity assignment
                
                (v  ||  null).substring.call.a;
                return first_needed
                    ||  (more_than_one_needed
                         &&
                         (first_needed = v !== argname_arr[ i ])
                        );
            }
            
            function fext_arg( i )
            {
                return _fext_argname( argname_arr[ i ] );
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
        if (!white_out_comments( s ).trim())
            return [];
        
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
                             , body, piece_i_of_name, space, opt )
    {
        return body.substring( 0, begin )
            + sf_tmpl_arr.map( sf_one ).join( '' )
            + body.substring( end )
        ;
        function sf_one( sf )
        {
            return 'string' === typeof sf  ? sf
                :  sf( piece_i_of_name, space, opt )
            ;
        }
    }

    function tc_return
    ( /*object*/piece_i_of_name, /*object*/space, /*?object?*/opt )
    {
        var inline_body    = opt  &&  opt.inline_body
        ,   is_last_inline = opt  &&  opt.is_last_inline
        ;
        return inline_body
            ?
            (
                is_last_inline
                    ?  'continue ' + LABEL_MAIN_LOOP +';'
                    :  'break '
                    + LABEL_INLINE_LOOP( opt.inline_loop.ind ) + ';'
            )
            :  'return;'
        ;
    }

    function tc_return_non_mret
    ( /*object*/piece_i_of_name, /*object*/space, /*?object?*/opt )
    {
        var inline_body    = opt  &&  opt.inline_body
        ,   is_last_inline = opt  &&  opt.is_last_inline
        ;
        return inline_body
            ?  ''
            :  'return;'
        ;
    }

    function white_out_comments( code )
    {
        return code.replace(
                /\/\*[\s\S]*?\*\/|\/\/.*?(?=[\r\n])/g
            , w
        );
        function w( s )
        {
            return sRepeat( ' ', s.length );
            
        }
    }

    function sRepeat( s, n )
    {
        if (s.repeat)
            return s.repeat( n );

        // (mainly IE) support
        
        var buf = [];
        for(;;)
        {
	    if(n & 1)
	        buf.push( s );
            
            if(!(n >>= 1))
                break; 
            
            s += s;
        }
        return buf.join( '' );  // String
    }
       
})(global  ||  exports  ||  this);
