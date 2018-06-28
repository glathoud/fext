/*global global exports navigator setTimeout mret*/

var global, exports;
(function (global) {

    'use strict';

    var mfun, mret;
    
    if (typeof require === 'function')
    {
        // With Node.js
        mfun = require( '../fext' ).mfun;
        mret = require( '../fext' ).mret;
    }
    else
    {
        // Without Node.js
        mfun = global.mfun;
        mret = global.mret;
    }
    
    var log_to = mfun.log_to

    , DEBUG_RX = /[\?&]debug=1(?:&|$)/
        , loc  = global.location
        , DEBUG = loc  &&  DEBUG_RX.test( loc.search )

    , ALL = loc  &&  /[\?&]all=1(?:&|$)/.test( loc.search )
    
    , N_RESULT    = DEBUG ? 3   : 10
    , MIN_DUR_SEC = DEBUG ? 0.1 : 1.0
    , PAUSE_SEC   = DEBUG ? 0.1 : 1.0
    ;
    
    // ---------- API

    global.fext_speedtest = fext_speedtest;

    // ---------- API implementation
    
    function fext_speedtest( cont_node, output_node )
    {
        if (cont_node)
            cont_node.classList.toggle( 'speedtest_running' );

        var arr = get_speedtest_arr()
        ,   arr_0 = arr.slice()
        ,   abs_speed_arr = []
        ;

        if (output_node)
        {
            var already_has_result =
                0 < output_node.textContent.trim().length;

            if (!already_has_result)
            {
                output_node.textContent =
                    realign_table( get_header( arr_0 ) ) + '\n';
            }
            else if (DEBUG  ||  ALL)
            {
                output_node.textContent =
                    realign_table(
                        output_node.textContent
                            + '\n'
                            + get_table_separator( arr_0 ) + '\n'
                            + get_header( arr_0 ) + '\n'
                    );
            }
        }

        next();

        function next( maybe_result )
        {
            if (maybe_result)
                abs_speed_arr.push( maybe_result );
            
            if (arr.length < 1)
            {
                var now = new Date

                ,  rel100_speed_arr = get_rel100_speed_arr(
                    abs_speed_arr
                )
                
                ,   who  = get_simplified_environment()
                ,   who2 =
                    /*
                    now.getFullYear()
                    + '-'
                    + ((1 + now.getMonth())+'').padStart( 2, '0' )
                    + '-'
                    + (now.getDate() +'').padStart( 2, '0' )
                    + ', ' 
                    */

                    /*
                    + N_RESULT
                    + 'x >' + MIN_DUR_SEC + 's'
                    */

                    ' '
                
                ,   text = '| ' + who + ' | '

                    + rel100_speed_arr
                    .map( one_rel100_speed_str )
                    .join( ' | ' )
                    + ' |\n'

                    + '| ' + who2 + ' | '
                    + abs_speed_arr
                    .map( one_abs_speed_str )
                    .join( ' | ' )
                    + ' |\n'
                ;
                log_to( 'log', text );

                if (output_node)
                {
                    var tmp = (
                        already_has_result

                            ?  '\n'
                            + get_table_separator( arr_0 )
                            + '\n'

                            :  ''
                    ) + text
                    ;
                    output_node.textContent = realign_table(
                        output_node.textContent + tmp
                    );
                }
                
                if (cont_node)
                {
                    cont_node.classList.toggle(
                        'speedtest_running'
                    );
                }

                return;
            }

            run_one( next, arr.shift() );

        }
        
    }

    // ---------- Individual speed tests ----------

    function get_speedtest_arr()
    {
        return [

            {
                niter_init : 1e5
                , runner   : isOdd_mfun
            }

            , {
                niter_init : 1e5
                , runner   : isOdd_meth
            }
            
            , {
                niter_init : 1e5
                , runner   : isOdd_metaret
            }
            
            , {
                niter_init : 1e3
                , runner   : isOdd_tailtramp
            }
        ].concat( !ALL ? [] : [

            {
                niter_init : 1e5
                , runner   : isOdd_meth_proto
            }
            
            , {
                niter_init : 1e5
                , runner   : isOdd_mfun_ex1_no_inline
            }

            , {
                niter_init : 1e5
                , runner   : isOdd_mfun_ex0_no_inline
            }
            
            , {
                niter_init : 1e2
                , runner   : isOdd_tailcatch  // way too slow
            }
            
            // To test other parameters
            
            , {
                niter_init : 1e5
                , runner   : isOdd_mfun_ex3
            }
            
            , {
                niter_init : 1e5
                , runner   : isOdd_mfun_ex2
            }
            
            , {
                niter_init : 1e5
                , runner   : isOdd_mfun_ex1
            }
            
            , {
                niter_init : 1e5
                , runner   : isOdd_mfun_ex0
            }
            
            , {
                niter_init : 1e5
                , runner   : isOdd_mfun_if
            }
        ]
                );
        
    }

    function isOdd_metaret( niter )
    {
        // Sanity check
        isOdd_isEven_check( anonymous
                            , function (x) {return !anonymous(x); }
                          );
        
        var result = anonymous( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;

        // --- Details
        // Code generated there:
        // http://glat.info/js.metaret/#sec-impl-gencode

        function anonymous(n
                          ) {
            var _undef_;
            var _switch_ind_ = 0;
            _L_switch_: while (true) {
                switch (_switch_ind_) {

                case 0:

                    // --- metafun isOdd
                    // --- ( self,n)

                    {
                        if (n > 0)
                        {
                            n = n - 1;
                            _switch_ind_ = 1; // --- go to: isEven
                            continue _L_switch_;
                        }

                        if (n < 0)
                        {
                            n = -n;
                            continue _L_switch_; // --- stay in: isOdd
                        }

                        return false; 
                    }
                    break;

                case 1:

                    // --- metafun isEven
                    // --- ( self,n)

                    {
                        if (n > 0)
                        {
                            // mutual recursion

                            n = n - 1;
                            _switch_ind_ = 0; // --- go to: isOdd
                            continue _L_switch_;
                        }
                        if (n < 0)
                        {
                            n = -n;
                            continue _L_switch_; // --- stay in: isEven
                        }

                        return true;
                    }
                    break;

                }
                return;
            }

        }       
    }

    

    function isOdd_mfun_if( niter )
    {
        // The default `namespacekey` is the returned
        // function `var isOdd` in this case.
        var isOdd = mfun( function isOdd( n ) {
            if (n > 0)
                return mret( isEven, n-1 );

            if (n < 0)
                return mret( self, -n );

            return false;
        })
        ,  isEven = mfun( isOdd, 'isEven', function( n ) {
            if (n > 0)
                return mret( isOdd, n-1 );

            if (n < 0)
                return mret( self, -n );

            return true;
        })
        ;
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );

        var result = isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;
    }



    function isOdd_mfun_ex0( niter )
    {
        // The default `namespacekey` is the returned
        // function `var isOdd` in this case.
        var opt = { expansion : 0 }

        ,   isOdd = mfun.call( opt, function isOdd( n ) {
            return n > 0  ?  mret( isEven, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  false
            ;
        })
        ,  isEven = mfun.call( opt, isOdd, function isEven( n ) {
            return n > 0  ?  mret( isOdd, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  true
            ;
        })
        ;
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );
        
        var result = isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;
    }



    function isOdd_mfun_ex1( niter )
    {
        // The default `namespacekey` is the returned
        // function `var isOdd` in this case.
        var opt = { expansion : 1 }

        ,   isOdd = mfun.call( opt, function isOdd( n ) {
            return n > 0  ?  mret( isEven, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  false
            ;
        })
        ,  isEven = mfun.call( opt, isOdd, function isEven( n ) {
            return n > 0  ?  mret( isOdd, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  true
            ;
        })
        ;
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );
        
        var result = isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;
    }




    function isOdd_mfun_ex2( niter )
    {
        // The default `namespacekey` is the returned
        // function `var isOdd` in this case.
        var opt = { expansion : 2 }

        ,   isOdd = mfun.call( opt, function isOdd( n ) {
            return n > 0  ?  mret( isEven, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  false
            ;
        })
        ,  isEven = mfun.call( opt, isOdd, function isEven( n ) {
            return n > 0  ?  mret( isOdd, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  true
            ;
        })
        ;
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );

        var result = isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;
    }



    function isOdd_mfun_ex1_no_inline( niter )
    {
        // The default `namespacekey` is the returned
        // function `var isOdd` in this case.
        var opt = { expansion : 1, inline_body : false }

        ,   isOdd = mfun.call( opt, function isOdd( n ) {
            return n > 0  ?  mret( isEven, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  false
            ;
        })
        ,  isEven = mfun.call( opt, isOdd, function isEven( n ) {
            return n > 0  ?  mret( isOdd, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  true
            ;
        })
        ;
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );
        
        var result = isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;        
    }




    function isOdd_mfun_ex0_no_inline( niter )
    {
        // The default `namespacekey` is the returned
        // function `var isOdd` in this case.
        var opt = { expansion : 0, inline_body : false }

        ,   isOdd = mfun.call( opt, function isOdd( n ) {
            return n > 0  ?  mret( isEven, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  false
            ;
        })
        ,  isEven = mfun.call( opt, isOdd, function isEven( n ) {
            return n > 0  ?  mret( isOdd, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  true
            ;
        })
        ;
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );
        
        var result = isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;        
    }


    function isOdd_mfun_ex3( niter )
    {
        // The default `namespacekey` is the returned
        // function `var isOdd` in this case.
        var opt = { expansion : 3 }

        ,   isOdd = mfun.call( opt, function isOdd( n ) {
            return n > 0  ?  mret( isEven, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  false
            ;
        })
        ,  isEven = mfun.call( opt, isOdd, function isEven( n ) {
            return n > 0  ?  mret( isOdd, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  true
            ;
        })
        ;
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );
        
        var result = isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;
    }






    function isOdd_mfun( niter )
    {
        // The default `namespacekey` is the returned
        // function `var isOdd` in this case.
        var isOdd = mfun( function isOdd( n ) {
            return n > 0  ?  mret( isEven, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  false
            ;
        })
        ,  isEven = mfun( isOdd, function isEven( n ) {
            return n > 0  ?  mret( isOdd, n-1 )
                :  n < 0  ?  mret( self, -n )
                :  true
            ;
        })
        ;
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );

        var result = isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;
    }


    function isOdd_meth( niter )
    {
        var o = {
            // The default `namespacekey` is the returned
            // function `var isOdd` in this case.
            isOdd : meth( 'isOdd', function( that, n ) {
                return n > 0  ?  mret( that.isEven, n-1 )
                    :  n < 0  ?  mret( that.self, -n )
                    :  false
                ;
            })
            
            , isEven : meth( 'isEven', function( that, n ) {
                return n > 0  ?  mret( that.isOdd, n-1 )
                    :  n < 0  ?  mret( that.self, -n )
                    :  true
                ;
            })
        };
        
        // Sanity check
        isOdd_isEven_check( o.isOdd.bind( o )
                            , o.isEven.bind( o )
                          );

        var result = o.isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;
    }



    function isOdd_meth_proto( niter )
    {
        function C() {}
        C.prototype.isOdd = meth( 'isOdd', function( that, n ) {
            return n > 0  ?  mret( that.isEven, n-1 )
                :  n < 0  ?  mret( that.self, -n )
                :  false
            ;
        });
        C.prototype.isEven = meth( 'isEven', function( that, n ) {
            return n > 0  ?  mret( that.isOdd, n-1 )
                :  n < 0  ?  mret( that.self, -n )
                :  true
            ;
        });

        var o = new C;
        
        // Sanity check
        isOdd_isEven_check( o.isOdd.bind( o )
                            , o.isEven.bind( o )
                          );

        var result = o.isOdd( niter ); // <<< speedtest

        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;
    }




    function isOdd_tailtramp( niter )
    {
        var isOdd = tailtramp( function( n ) {
            return n > 0  ?  isEven( n-1 )
                :  n < 0  ?  isOdd( -n )
                :  false
            ;
        })
        , isEven = tailtramp( function( n ) {
            return n > 0  ?  isOdd( n-1 )
                :  n < 0  ?  isEven( -n )
                :  true
            ;
        })
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );

        var result = isOdd( niter ); // <<< speedtest
        
        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;

        // --- Details

        // functional tail call trampoline implementation
        // (slightly cleaned up)
        // http://glat.info/pub/tailopt-js/tailopt-js-appendices.html
        function tailtramp(g)
        {
            var tailtramp_n = 0;
            return tailtramp_impl;
            
            function tailtramp_impl()
            {
                var arr = [g, this, arguments]
                , ret;

                // Jump off a small Empire State Building
                if (tailtramp_n>5)
                    return new TailCall(arr);
                
                while (true)
                {
                    tailtramp_n++;
                    ret = arr[0].apply(arr[1], arr[2]);
                    tailtramp_n--;
                    
                    if (!(ret instanceof TailCall))
                    {
                        tailtramp_n = 0;
                        return ret;
                    }
                    
                    // Hit 33rd Street and bounce again
                    arr = ret.arr;
                }
            }
        }
        
        function TailCall(arr)
        {
            this.arr  = arr;
        }
    }
    
    function isOdd_tailcatch( niter )
    {
        var isOdd = tailcatch( function( n ) {
            return n > 0  ?  isEven( n-1 )
                :  n < 0  ?  isOdd( -n )
                :  false
            ;
        })
        , isEven = tailcatch( function( n ) {
            return n > 0  ?  isOdd( n-1 )
                :  n < 0  ?  isEven( -n )
                :  true
            ;
        })
        // Sanity check
        isOdd_isEven_check( isOdd, isEven );

        var result = isOdd( niter ); // <<< speedtest
        
        // Sanity check
        result === (niter % 2 !== 0)  ||  null.bug;

        // --- Details

        /*
          functional tail call trampoline implementation
          (after a fix for mutual & deep recursions + cleanup)
          http://glat.info/pub/tailopt-js/tailopt-js-appendices.html
        */
        var tcth_n
        ,   tcth_o
        ;
        function tailcatch(g)
        {
            tcth_n  ||  (tcth_n = 0);

            tcth_o  ||  (tcth_o = {
                isTailCall : true
                , args : arguments
                , that : {}
                , todo : g
            });
            
            return tailcatch_impl;

            function tailcatch_impl()
            {
                tcth_o.args = arguments;
                tcth_o.that = this;
                tcth_o.todo = g;
                
                var ret;
                
                // Jump off a small Empire State Building
                if (tcth_n>5) 
                    throw tcth_o;
                
                while (true)
                {
                    tcth_n++;
                    try
                    {
                        ret = tcth_o.todo.apply(
                            tcth_o.that
                            , tcth_o.args
                        );
                    }
                    catch( e )
                    {
                        if (!e.isTailCall)
                            throw e;
                        
                        tcth_n--;
                        continue;
                    }
                    
                    tcth_n = 0;
                    return ret;
                }
            }
        }
    }
    
    // ---------- Private details ----------

    function isOdd_isEven_check( isOdd, isEven )
    {
        [-7, -1, 1, 3, 5, 37 ].every( isOdd )
            && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
            ||
            null.bug;
    }
    
    function run_one( next, test, niter, dur_sec )
    {
        niter  ||  (niter = test.niter_init);
        dur_sec  ||  (dur_sec = 0);

        niter > 0  ||  null.bug;

        // Let the GC breathe
        setTimeout( run_one_impl, 1000 * PAUSE_SEC );

        function run_one_impl()
        {
            if (MIN_DUR_SEC < dur_sec)
            {
                // "Good" test: was measured on a long enough
                // time span.

                var      name = name_of_test( test )
                ,      result = result_of_name( name )
                , measure_arr = result.measure_arr
                ;
                measure_arr.push({
                    name      : name
                    , niter   : niter
                    , dur_sec : dur_sec
                    , speed   : niter / dur_sec
                });

                if (measure_arr.length >= N_RESULT)
                {
                    // Enough results for statistics
                    next( result );
                    return;
                }
            }
            else
            {
                niter <<= 1;
            }
            
            measure_one( next, test, niter );
        }
    }

    function measure_one( next, test, niter )
    {
        var begin = Date.now();
        test.runner( niter );
        var dur_sec = (Date.now() - begin) / 1000;

        log_to( 'log'
                , 'Finished a measure:'
                , name_of_test( test ) + ':'
                , 'niter:' + niter
                , 'dur_sec:' + dur_sec
                , 'speed:'
                + (niter / dur_sec).toExponential( 3 )
                + ' iter/sec'
              )
        
        run_one( next, test, niter, dur_sec );
    }

    function result_of_name( name )
    {
        (name  ||  null).substring.call.a;
        return result_of_name[ name ]  ||
            (result_of_name[ name ] = {
                name          : name
                , measure_arr : []
                , get_mean    : result_get_mean
                , get_std     : result_get_std
            });
    }

    function result_get_mean()
    {
        return this.measure_arr
            .reduce(
                function (a, o) {
                    return a + o.speed;
                }
                , 0
            )
            / this.measure_arr.length
        ;
    }

    function result_get_std()
    {
        var mean        = this.get_mean()
        ,   measure_arr = this.measure_arr
        ;
        return Math.sqrt(
            measure_arr
                .reduce(
                    function (a, o)
                    {
                        var tmp = (o.speed - mean);
                        return a + tmp*tmp;
                    }
                    , 0
                )
                / (measure_arr.length - 1)
        );
    }

    function one_rel100_speed_str( o )
    {
        var v100 = o.v100
        , std100 = o.std100 
        ;
        return s100( v100 ) + ' (' + s100( std100 ) + ')';
    }

    function one_abs_speed_str( o )
    {
        return '[' + o.get_mean().toExponential(2) + ']';
    }
    
    function s100( x100 )
    {
        return x100 < 0.1  ?  '<0.1'  :  x100.toFixed( 1 );
    }
    
    function get_rel100_speed_arr( abs_speed_arr )
    {
        var vmax = abs_speed_arr.reduce(
            function (v, o)
            {
                return Math.max( v, o.get_mean() );
            }
            , 0
        );
        vmax > 0  ||  null.bug;
        return abs_speed_arr.map(
            function (o)
            {
                var ret = Object.create( o );
                ret.v100   = 100 * o.get_mean() / vmax;
                ret.std100 = 100 * o.get_std()  / vmax;
                return ret;
            }
        );
    }

    function get_header( arr )
    {
        return [

            '| Browser | '
                + arr.map( name_of_test ).join( ' | ' )
                + ' |'

            , get_table_separator( arr, { header : true } )
            
        ].join( '\n' );
    }

    function get_simplified_environment()
    {
        var s = global.navigator  &&  global.navigator.userAgent;
        if (!s)
            return '<yours> (Non-browser JS engine)';
        
        var mo_br  = s.match( /\b(?:Firefox|Chromium|Chrome|Safari)\b[^\s\.]*/ );
        if (mo_br)
            return mo_br[ 0 ].replace( /\//g, ' ' );
        
        return '<yours>: ' + s.replace( /([\d\)]) (?!\()/g,'$1 |\n| ' )
    }
    
    function get_table_separator( n, opt )
    {
        if ('object' === typeof n)
            return get_table_separator( n.length, opt );

        n.toPrecision.call.a;

        var header = opt  &&  opt.header
        ,       s0 = header  ?  ':---'  :  '----'
        ,       s1 = header  ?  '---:'  :  '----'
        ;
        
        return '| ' + s0 + ' | ' + (s1 + ' |').repeat( n );
    }
    
    function name_of_test( test )
    {
        return test.name
        
            ||  test.runner.name
        
            ||  /^\s*function\s+(\w+)/
            .exec( ''+test.runner )[ 1 ]  // IE
            
            ||  null.bug
        ;
    }

    function realign_table( s )
    {
        var rows = s.split( '\n' );
        while (rows[ rows.length - 1 ].trim().length < 1)
            rows.pop();

        var   rc = rows.map( split_row )
        ,   colw = rc.reduce( update_colw, [] )
        ;
        return rc.map( pad_row ).join( '\n' )

        function split_row( row )
        {
            return row.split( '|' ).slice( 1, -1 );
        }
        
        function update_colw( arr, row )
        {
            row.forEach( update_colw_one );
            return arr;

            function update_colw_one( col, j )
            {
                var w = col.length;
                if (!(arr[ j ] > w))
                    arr[ j ] = w;
            }
        }

        function pad_row( row )
        {
            return '|' + row.map( pad_col ).join( '|' ) + '|';

            function pad_col( col, j )
            {
                return col[ j < 1  ?  'padEnd'  :  'padStart']
                ( colw[ j ] );
            }
        }
    }
    
})(global  ||  exports  ||  this);
