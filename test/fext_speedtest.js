/*global global exports navigator setTimeout mret*/

var global, exports;
(function (global) {

    'use strict';

    var mfun   = global.mfun
    ,   log_to = mfun.log_to

    , DEBUG_RX = /[\?&]debug=1(?:&|$)/
    , DEBUG = DEBUG_RX.test( location.search )
    
    , N_RESULT    = DEBUG ? 3    : 10
    , MIN_DUR_SEC = DEBUG ? 0.03 : 1.0
    , PAUSE_SEC   = DEBUG ? 0.03 : 1.0
    ;
    
    // ---------- API

    global.fext_speedtest = fext_speedtest;

    // ---------- API implementation
    
    function fext_speedtest( cont_node, output_node )
    {
        if (cont_node)
            cont_node.classList.toggle( 'speedtest_running' );

        var arr = get_speedtest_arr()
        ,   abs_speed_arr = []
        ;

        if (output_node)
        {
            output_node.textContent = get_header( arr ) + '\n'
                + (output_node.textContent  ||  '');
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
                
                ,   who = (
                    global.navigator

                        ?  navigator.userAgent
                        .replace( /([\d\)]) (?!\()/g,'$1 |\n| ' )

                        :  'Non-browser JS engine'
                )
                    + ' |\n| ' + now.getFullYear()
                    + '-'
                    + ((1 + now.getMonth())+'').padStart( 2, '0' )
                    + '-'
                    + (now.getDate() +'').padStart( 2, '0' )
                    + ' (nr:' + N_RESULT
                    + ', mindur:' + MIN_DUR_SEC + ' sec)'
                
                ,   text = '| ' + who + ' | '

                    + rel100_speed_arr
                    .map( one_rel100_speed_str )
                    .join( ' | ' )
                    + ' |\n'

                    + '| | '
                    + abs_speed_arr
                    .map( one_abs_speed_str )
                    .join( ' | ' )
                    + ' |\n'
                ;
                log_to( 'log', text );

                if (output_node)
                    output_node.textContent += text;
                
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
            
            , {
                niter_init : 1e2
                , runner   : isOdd_tailcatch
            }

            /*

              To test other parameters

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

            */
            
        ];
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

        console.log('xxx _ex2 impl:', isOdd.getImpl()+'')
        
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



    function isOdd_tailtramp( niter )
    {
        var isOdd = tailtramp( function( n ) {
            return n > 0  ?  isEven( n-1 )
                :  n < 0  ?  isOdd( -n )
                :  false
            ;
        }, 'isOdd')
        , isEven = tailtramp( function( n ) {
            return n > 0  ?  isOdd( n-1 )
                :  n < 0  ?  isEven( -n )
                :  true
            ;
        }, 'isEven')
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
        return '[abs:' + o.get_mean().toExponential(3) + ' i/s]';
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

            '| Environment | '
                + arr.map( name_of_test ).join( ' | ' )
                + ' |'

            , get_table_separator( arr )
            
        ].join( '\n' );
    }

    function get_table_separator( n )
    {
        if ('object' === typeof n)
            return get_table_separator( n.length );

        n.toPrecision.call.a;
        
        return '| :--- |' + ' ---: |'.repeat( n );
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
    
})(global  ||  exports  ||  this);
