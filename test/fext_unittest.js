/*global global exports mret mfun meth mself mfunD methD 
   isEven isOdd that*/ // the last three for the mistake checks

var global, exports;
(function (global) {

    'use strict';

    var mfun, mfunD, meth, methD, mret, mself, fext, get_test_arr_es6;

    if (typeof require === 'function')
    {
        // With Node.js
        get_test_arr_es6 = require( './fext_unittest_es6' ).get_test_arr_es6;

        fext  = require( '../fext' ).fext;
        meth  = fext.meth;
        methD = fext.methD;
        mfun  = fext.mfun;
        mfunD = fext.mfunD;
        mret  = fext.mret;
        mself = fext.mself;
    }
    else
    {
        // Without Node.js
        fext  = global.fext;
        methD = global.methD;
        meth  = global.meth;
        mfun  = global.mfun;
        mfunD = global.mfunD;
        mret  = global.mret;
        mself = global.mself;
    }
    
    global.fext_unittest = fext_unittest;
    global.get_test_arr_es5 = get_test_arr_es5;
    
    function fext_unittest( /*?function?*/callback )
    {
        var result_all = true
        ,   n_passed   = 0
        ,   log_to = mfun.log_to
        ;

        get_test_arr_es6 ||  (get_test_arr_es6 = global.get_test_arr_es6);

        // Nashorn 1.8.0_171 and IE11 do not support ES6 (backticks,
        // arrow functions...) so we put those tests in a separate
        // file.
        var es6_tests = get_test_arr_es6
            ?  get_test_arr_es6()
            :  []

        , result = es6_tests.concat( get_test_arr_es5() )
            .map( run_one_test )
        ;
        result.global = result_all;

        result.text = format_result_text( result_all, result );

        if (callback)
            callback( result )

        log_to( 'log' );
        log_to( 'log', 'Done with ' + result.length + ' tests'
                + ', global result: ' + result.global
                + ' (' + n_passed + ' passed, ' + (result.length - n_passed) + ' failed)'
              );
        
        return result;

        function run_one_test( f, test_ind )
        {
            if (!f)
                return '';
            
            var isOk;
            try {
                isOk = f();
            } catch (e) {
                isOk = '' + e;
            }

            var passed = true === isOk;
            
            result_all = result_all  &&  passed;

            if (passed)
                n_passed++;
            
            var name = f.name
            ,   pre_s = '#' + test_ind + ' '
            ;
            if (passed)
                log_to( 'log', pre_s + 'passed ' + name );
            else
                log_to( 'error', pre_s + 'failed on ' + name + ': ' + isOk );
            
            var extra_output = f.extra_output  ||  '';

            if (extra_output)
                log_to( 'log', 'extra_output for ' + name + ': ' + extra_output );
            
            return (
                isOk
                    ?  name + ': ' + colorize( isOk )
                    :  colorize( name + ': ' + isOk )
            )
                + (extra_output  ?  ', extra_output: ' + extra_output  :  '')
            ;
        }


    }

    // ---------- Individual tests

    function get_test_arr_es5() {

        var test_arr_sorted_search = global.get_test_arr_sorted_search
            ?  global.get_test_arr_sorted_search()
            :  []

        ,   test_arr_sorted_search_closure = global.get_test_arr_sorted_search_closure
            ?  global.get_test_arr_sorted_search_closure()
            :  []

        ,   tmp = test_arr_sorted_search.concat( test_arr_sorted_search_closure )
        ;
        return tmp.concat( [

            function self_recursion_anonymous_gcd()
            {
                var gcd = mfun( function (a, b) {
                    return a > b  ?  mret( mself, a-b, b )
                        :  a < b  ?  mret( mself, b-a, a )
                        :  a;
                })
                , isOk_arr = [
                    [1, 1, 1]
                    , [2, 2, 2]
                    , [2, 3, 1]
                    , [2*3, 2, 2]
                    , [2*3, 3, 3]
                    , [2*5*17, 3*5*19, 5]
                    , [2*3*5*17, 3*5*19, 3*5]
                ]
                    .map( function( abc ) {
                        return gcd( abc[ 0 ], abc[ 1 ] ) === abc[ 2 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }
            
            , function self_recursion_anonymous()
            {
                var factorial = mfun( function ( n, acc ) {
                    return acc == null  ?  mret( mself, n, 1 )
                        : n > 1  ?  mret( mself, n-1, acc*n )
                        : acc;
                })
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
            }

            , function arrow_self_recursion_anonymous_string()
            {
                var factorial = mfun(  '( n, acc ) =>\
acc == null  ?  mret( mself, n, 1 )\
: n > 1  ?  mret( mself, n-1, acc*n )\
: acc')
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
            }

            , function arrow_self_recursion_named_string()
            {
                var factorial = mfun( 'factorial', '(n, acc) => \
acc == null  ?  mret( factorial, n, 1 )\
: n > 1  ?  mret( factorial, n-1, acc*n )\
: acc')
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
            }
            
            , function
            arrow_helper_function_explicit_groupkey_forgot_name_string()
            {
                var groupkey = {}  // whatever object

                ,   factorial = mfun( groupkey, 'n => mret( factsub, n, 1 )')

                // We forgot the name here. An Error should be thrown.
                ,   factsub   = mfun( groupkey, '(n, acc) =>\
n > 1  ?  mret( mself, n-1, acc*n )\
: acc')
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {

                        try {
                            factorial( ab[ 0 ] );
                        } catch (e) {
                            if (/\bdid you forget\b/i.test( e ))
                                return true;
                        }
                        return false;
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }
            
            , function
            arrow_helper_function_explicit_groupkey_string()
            {
                var groupkey = {}  // whatever object

                ,   factorial = mfun( groupkey, 'n =>\
mret( factsub, n, 1 )'
                                    )
                ,   factsub   = mfun( groupkey, 'factsub', '(n, acc) =>\
n > 1  ?  mret( mself, n-1, acc*n )\
: acc')
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {

                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }

            , function
            arrow_helper_function_default_groupkey_string()
            {
                // The default `groupkey` is the returned function
                // `var factorial` in this case.
                var factorial = mfun( '(n) => mret( factsub, n, 1 )' )
                ,   factsub   = mfun( factorial, 'factsub', '( n, acc ) =>\
n > 1  ?  mret( mself, n-1, acc*n )\
: acc'
                                    )
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }
            , function arrow_isOdd_isEven_functionality_string()
            {
                var isOdd = mfun( 'isOdd', '( n ) =>\
n < 0  ?  mret( isOdd, -n )\
:  n === 0  ?  false\
:  mret( isEven, n-1 )')
                ,  isEven = mfun( isOdd, 'isEven', 'n =>\
n < 0  ?  mret( mself, -n )\
:  n === 0  ?  true\
:  mret( isOdd, n-1 )'
                                )
                ;
                return [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
                ;
            }
            
            
            , function arrow_isOdd_isEven_call_stack_string()
            {
                var isOdd = mfun( 'isOdd'
                                  , 'n => n < 0  ?  mret( mself, -n )\
:  n === 0  ?  false\
:  mret( isEven, n-1 )'
                                )
                ,  isEven = mfun( isOdd, 'isEven',
                                  'n => n < 0  ?  mret( mself, -n )\
:  n === 0  ?  true\
:  mret( isOdd, n-1 )'
                                )
                
                ,   a =  isOdd ( 3247831 )
                ,   b = !isEven( 3247831 )

                ,   c = !isOdd ( 8927490 )
                ,   d =  isEven( 8927490 )
                ;
                return a && b && c && d;
            }


            , function self_recursion_anonymous_string()
            {
                var factorial = mfun( 'function ( n, acc ) {\
return acc == null  ?  mret( mself, n, 1 )\
: n > 1  ?  mret( mself, n-1, acc*n )\
: acc;\
}')
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
            }

            , function self_recursion_named()
            {
                var factorial = mfun( 'factorial', function ( n, acc ) {
                    return acc == null  ?  mret( factorial, n, 1 )
                        : n > 1  ?  mret( factorial, n-1, acc*n )
                        : acc;
                })
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
            }
            
            , function self_recursion_named_string()
            {
                var factorial = mfun( 'factorial', 'function ( n, acc ) {\
return acc == null  ?  mret( factorial, n, 1 )\
: n > 1  ?  mret( factorial, n-1, acc*n )\
: acc;\
}')
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
            }

            , function
            helper_function_explicit_groupkey()
            {
                var groupkey = {}  // whatever object

                ,   factorial = mfun( groupkey, function ( n ) {
                    return mret( factsub, n, 1 );
                })
                ,   factsub   = mfun( groupkey, function factsub( n, acc ) {
                    return n > 1  ?  mret( mself, n-1, acc*n )
                        : acc;
                })
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }

            , function
            helper_function_default_groupkey()
            {
                // The default `groupkey` is the returned function
                // `var factorial` in this case.
                var factorial = mfun( function ( n ) {
                    return mret( factsub, n, 1 );
                })
                ,   factsub   = mfun( factorial, function factsub( n, acc ) {
                    return n > 1  ?  mret( mself, n-1, acc*n )
                        : acc;
                })
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }

            , function
            helper_function_explicit_groupkey_explicit_name()
            {
                var groupkey = {}  // whatever object

                ,   factorial = mfun( groupkey, function ( n ) {
                    return mret( factsub, n, 1 );
                })

                // Here the explicit name 'factsub'
                ,   factsub   = mfun( groupkey, 'factsub', function( n, acc ) {
                    return n > 1  ?  mret( mself, n-1, acc*n )
                        : acc;
                })
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }

            , function
            helper_function_default_groupkey_explicit_name()
            {
                // The default `groupkey` is the returned function
                // `var factorial` in this case.
                var factorial = mfun( function ( n ) {
                    return mret( factsub, n, 1 );
                })

                // Here the explicit name 'factsub'
                ,   factsub   = mfun( factorial, 'factsub', function( n, acc ) {
                    return n > 1  ?  mret( mself, n-1, acc*n )
                        : acc;
                })
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }

            
            , function
            isOdd_isEven_functionality_explicit_groupkey()
            {
                var groupkey = {}  // whatever object

                ,   isOdd = mfun( groupkey, function isOdd( n ) {
                    return n < 0  ?  mret( isOdd, -n )
                        :  n === 0  ?  false
                        :  mret( isEven, n-1 );
                })
                ,  isEven = mfun( groupkey, function isEven( n ) {
                    return n < 0  ?  mret( isEven, -n )
                        :  n === 0  ?  true
                        :  mret( isOdd, n-1 );
                })
                ;
                return [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
                ;
            }

            , function
            isOdd_isEven_functionality_default_groupkey()
            {
                // The default `groupkey` is the returned function
                // `var isOdd` in this case.
                var isOdd = mfun( function isOdd( n ) {
                    return n < 0  ?  mret( isOdd, -n )
                        :  n === 0  ?  false
                        :  mret( isEven, n-1 );
                })
                ,  isEven = mfun( isOdd, function isEven( n ) {
                    return n < 0  ?  mret( isEven, -n )
                        :  n === 0  ?  true
                        :  mret( isOdd, n-1 );
                })
                ;
                return [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
                ;
            }
            
            , function isOdd_isEven_functionality_string()
            {
                var isOdd = mfun( 'function isOdd( n ) {\
return n < 0  ?  mret( isOdd, -n )\
:  n === 0  ?  false\
:  mret( isEven, n-1 );\
}')
                ,  isEven = mfun( isOdd, 'function isEven( n ) {\
return n < 0  ?  mret( isEven, -n )\
:  n === 0  ?  true\
:  mret( isOdd, n-1 );\
}')
                ;
                return [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
                ;
            }
            
            , function isOdd_isEven_functionality_explicit_name()
            {
                var isOdd = mfun( 'isOdd', function ( n ) {
                    return n < 0  ?  mret( isOdd, -n )
                        :  n === 0  ?  false
                        :  mret( isEven, n-1 );
                })
                ,  isEven = mfun( isOdd, 'isEven', function ( n ) {
                    return n < 0  ?  mret( isEven, -n )
                        :  n === 0  ?  true
                        :  mret( isOdd, n-1 );
                })
                ;
                return [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
                ;
            }
            
            , function isOdd_isEven_functionality_explicit_name_string()
            {
                var isOdd = mfun( 'isOdd', 'function ( n ) {\
return n < 0  ?  mret( isOdd, -n )\
:  n === 0  ?  false\
:  mret( isEven, n-1 );\
}')
                ,  isEven = mfun( isOdd, 'isEven', 'function ( n ) {\
return n < 0  ?  mret( isEven, -n )\
:  n === 0  ?  true\
:  mret( isOdd, n-1 );\
}')
                ;
                return [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
                ;
            }
            
            , function isOdd_isEven_call_stack()
            {
                var isOdd = mfun( function isOdd( n ) {
                    return n < 0  ?  mret( isOdd, -n )
                        :  n === 0  ?  false
                        :  mret( isEven, n-1 );
                })
                ,  isEven = mfun( isOdd, function isEven( n ) {
                    return n < 0  ?  mret( isEven, -n )
                        :  n === 0  ?  true
                        :  mret( isOdd, n-1 );
                })
                
                ,   a =  isOdd ( 3247831 )
                ,   b = !isEven( 3247831 )

                ,   c = !isOdd ( 8927490 )
                ,   d =  isEven( 8927490 )
                ;
                return a && b && c && d;
            }




            , function graph_recursion_test()
            {
                var is0mod3 = mfun( 'is0mod3', function( x ) {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }





            


            , function
            graph_recursion_test_inline_body_true_expansion_0()
            {
                var is0mod3 = mfun.call( { inline_body : true
                                           , expansion : 0
                                         }
                                         , 'is0mod3', function( x ) {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }

            , function
            graph_recursion_test_inline_body_true_expansion_1()
            {
                var is0mod3 = mfun.call( { inline_body : true
                                           , expansion : 1
                                         }
                                         , 'is0mod3', function( x ) {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }



            , function
            graph_recursion_test_inline_body_true_expansion_2()
            {
                var is0mod3 = mfun.call( { inline_body : true
                                           , expansion : 2
                                         }
                                         , 'is0mod3', function( x ) {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }




            , function
            graph_recursion_test_inline_body_true_expansion_3()
            {
                var is0mod3 = mfun.call( { inline_body : true
                                           , expansion : 3
                                         }
                                         , 'is0mod3', function( x ) {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }








            


            , function
            graph_recursion_test_inline_body_false_expansion_0()
            {
                var is0mod3 = mfun.call( { inline_body : false
                                           , expansion : 0
                                         }
                                         , 'is0mod3', function( x ) {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }
            




            , function
            graph_recursion_test_inline_body_false_expansion_1()
            {
                var is0mod3 = mfun.call(
                    { inline_body : false
                      , expansion : 1
                    }
                    , 'is0mod3'
                    , function( x )
                    {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }



            , function
            graph_recursion_test_inline_body_false_expansion_2()
            {
                var is0mod3 = mfun.call(
                    { inline_body : false
                      , expansion : 2
                    }
                    , 'is0mod3'
                    , function( x )
                    {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }
            






            , function
            graph_recursion_test_inline_body_false_expansion_4()
            {
                var is0mod3 = mfun.call(
                    { inline_body : false
                      , expansion : 4
                    }
                    , 'is0mod3'
                    , function( x )
                    {
                    return x === 0  ?  true
                        :  x === 1  ?  false
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is2mod3, x-1 )
                        :  x < 0  ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is2mod3 = mfun( is0mod3, 'is2mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  false
                        :  x === 2  ?  true
                        :  x > 2    ?  mret( is1mod3, x-1 )
                        :  x < 0    ?  mret( is0mod3, x+3 )
                        :  null.invalid_x;
                })
                ,   is1mod3 = mfun( is0mod3, 'is1mod3', function ( x ) {
                    return x === 0  ?  false
                        :  x === 1  ?  true
                        :  x === 2  ?  false
                        :  x > 2  ?  mret( is0mod3, x-1 )
                        :  x < 0  ?  mret( is1mod3, x+3 )
                        :  null.invalid_x;
                })

                ,  arr = [
                    true === is0mod3( 0 )
                    , true === is1mod3( 1 )
                    , true === is2mod3( 2 )

                    , false === is0mod3( 1 )
                    , false === is1mod3( 2 )
                    , false === is2mod3( 0 )

                    , false === is0mod3( 2 )
                    , false === is1mod3( 0 )
                    , false === is2mod3( 1 )

                    , true === is0mod3( 99 )
                    , false === is0mod3( 100 )
                    , false === is0mod3( 101 )

                    , true === is0mod3( -99 )
                    , false === is0mod3( -100 )
                    , false === is0mod3( -101 )
                ]
                ;
                return arr.every( function ( x ) { return x; } );
            }




            

            , function speed()
            {
                var isOdd = mfun( function isOdd( n ) {
                    return n < 0  ?  mret( isOdd, -n )
                        :  n === 0  ?  false
                        :  mret( isEven, n-1 );
                })
                ,  isEven = mfun( isOdd, function isEven( n ) {
                    return n < 0  ?  mret( isEven, -n )
                        :  n === 0  ?  true
                        :  mret( isOdd, n-1 );
                })
                
                // https://stackoverflow.com/questions/21825157/internet-explorer-11-detection
                , likeIE11 = global.window  &&  global.document  &&  !!(window.MSInputMethodContext  &&  document.documentMode)
                , N=(99999999 / (likeIE11 ? 1000 : 1)) | 0

                , begin=Date.now()
                , isOk_1 = true === isOdd(N)
                , end=Date.now()
                , dur=(end-begin)/1000
                , iter_per_sec=N/dur


                , expected_maxdur = 5
                
                , isOk_2 = dur < expected_maxdur
                ;
                
                speed.extra_output =
                    'dur: ' + dur + ' sec, speed: '
                    + iter_per_sec.toPrecision(4) + ' iters/sec'
                ;

                return isOk_1 && isOk_2;

            }


            , function arrow_no_mret_string()
            {
                var  f = mfun( 'x => 100+x' )
                , isOk = f(23) === 123
                ;
                return isOk;
            }

            , function arrow_no_mret_string_paren()
            {
                var  f = mfun( '(x) => 100+x' )
                , isOk = f(23) === 123
                ;
                return isOk;
            }

            , function no_mret_string()
            {
                var  f = mfun( 'function ( x ) { return 100+x; }' )
                , isOk = f(23) === 123
                ;
                return isOk;
            }










            , function meth_self_recursion_use_that()
            {
                // Somewhat contrived example to show that
                // we have to use `that` instead of `this`

                var o = {
                    factorial : meth(
                        'factorial'
                        , function(that, n) {
                            that._acc =
                                (n  ||  1) * (that._acc || 1);
                            
                            return n > 1
                                ? mret( that.mself, n-1 )
                                : (that._tmp = that._acc
                                   , that._acc = 0
                                   , that._tmp
                                  );
                        }
                    )
                }
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
            }

            , function meth_self_recursion()
            {
                var o = {
                    factorial : meth( 'factorial'
                                      , function (that, n, acc) {
                                          return
                                          acc == null  ?  mret( that.mself, n, 1 )
                                              : n > 1  ?  mret( that.mself, n-1, acc*n )
                                              : acc;
                                      }
                                    )
                }
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;  
            }

            , function meth_self_recursion_prototype()
            {
                function A() {}

                A.prototype.factorial = meth( 'factorial'
                                              , function (that, n, acc ) {
                                                  return acc == null  ?  mret( that.mself, n, 1 )
                                                      : n > 1  ?  mret( that.mself, n-1, acc*n )
                                                      : acc;
                                              }
                                            );

                var o = new A
                
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
                
            }

            , function meth_self_recursion_string()
            {
                var o = {
                    factorial : meth( 'factorial'
                                      , 'function (that, n, acc ) {\
return \
acc == null  ?  mret( that.mself, n, 1 )\
: n > 1  ?  mret( that.mself, n-1, acc*n )\
: acc;}'
                                    )
                }
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
                
            }

            , function meth_arrow_self_recursion_prototype_string()
            {
                function A() {}

                A.prototype.factorial = meth( 'factorial'
                                              , '( that, n, acc ) => \
acc == null  ?  mret( that.mself, n, 1 ) \
: n > 1  ?  mret( that.mself, n-1, acc*n ) \
: acc'
                                            );

                var o = new A
                
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
                
            }

            , function meth_arrow_helper_function_string()
            {
                var o = {
                    factorial : meth( 'factorial', '(that, n) => mret( that.factsub, n, 1 )' )
                    , factsub : meth( 'factsub'
                                      , 'function (that, n, acc) { return \
n > 1  ?  mret( that.mself, n-1, acc*n )\
: acc;}'
                                    )
                }
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
                
            }

            , function meth_isOdd_isEven_object()
            {
                var o = {
                    isOdd : meth( 'isOdd', function (that, n) {
                        return n < 0  ?  mret( that.mself, -n )
                            :  n === 0  ?  false
                            :  mret( that.isEven, n-1 );
                    })
                    , isEven : meth( 'isEven', function (that, n) {
                        return n < 0  ?  mret( that.mself, -n )
                            :  n === 0  ?  true
                            :  mret( that.isOdd, n-1 );
                    })
                };
                return [-7, -1, 1, 3, 5, 37 ].every( function (x) { return o.isOdd(x); } )
                    && [-8, -2, 0, 2, 4, 6, 48].every( function (x) { return o.isEven(x); } )
                ;    
            }
            
            , function meth_isOdd_isEven_prototype()
            {
                function A() {}
                A.prototype.isOdd =
                    meth( 'isOdd' , function (that, n) {
                        return n < 0  ?  mret( that.mself, -n )
                            :  n === 0  ?  false
                            :  mret( that.isEven, n-1 );
                    });
                A.prototype.isEven =
                    meth( 'isEven', function (that, n) {
                        return n < 0  ?  mret( that.mself, -n )
                            :  n === 0  ?  true
                            :  mret( that.isOdd, n-1 );
                    });
                
                var o = new A;
                return [-7, -1, 1, 3, 5, 37 ].every( function (x) { return o.isOdd(x); } )
                    && [-8, -2, 0, 2, 4, 6, 48].every( function (x) { return o.isEven(x); } )
                ;    
            }















            

            , function meth_self_recursion_use_that_named_function()
            {
                // Somewhat contrived example to show that
                // we have to use `that` instead of `this`

                var o = {
                    factorial : meth(
                        function factorial(that, n) {

                            that._acc =
                                (n  ||  1) * (that._acc || 1);
                            
                            return n > 1
                                ? mret( that.mself, n-1 )
                                : (that._tmp = that._acc
                                   , that._acc = 0
                                   , that._tmp
                                  );
                        }
                    )
                }
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
            }

            , function meth_self_recursion_named_function()
            {
                var o = {
                    factorial : meth( function factorial(that, n, acc) {
                        return
                        acc == null  ?  mret( that.mself, n, 1 )
                            : n > 1  ?  mret( that.mself, n-1, acc*n )
                            : acc;
                    }
                                    )
                }
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;  
            }

            , function meth_self_recursion_prototype_named_function()
            {
                function A() {}

                A.prototype.factorial = meth( function factorial(that, n, acc ) {
                    return acc == null  ?  mret( that.mself, n, 1 )
                        : n > 1  ?  mret( that.mself, n-1, acc*n )
                        : acc;
                }
                                            );

                var o = new A
                
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
                
            }

            , function meth_self_recursion_named_function_string()
            {
                var o = {
                    factorial : meth( 'function factorial(that, n, acc ) {\
return \
acc == null  ?  mret( that.mself, n, 1 )\
: n > 1  ?  mret( that.mself, n-1, acc*n )\
: acc;}'
                                    )
                }
                , isOk_arr = [
                    [0, 1]
                    , [1, 1]
                    , [2, 2]
                    , [3, 2*3]
                    , [4, 2*3*4]
                    , [5, 2*3*4*5]
                    , [6, 2*3*4*5*6]
                    , [7, 2*3*4*5*6*7]
                ]
                    .map( function ( ab ) {
                        return o.factorial( ab[ 0 ] ) === ab[ 1 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;
                
            }

            , function meth_isOdd_isEven_object_named_function()
            {
                var o = {
                    isOdd : meth( function isOdd(that, n) {
                        return
                        n < 0  ?  mret( that.mself, -n )
                            :  n === 0  ?  false
                            :  mret( that.isEven, n-1 );
                    })
                    , isEven : meth( function isEven(that, n) {
                        return 
                        n < 0  ?  mret( that.mself, -n )
                            :  n === 0  ?  true
                            :  mret( that.isOdd, n-1 );
                    })
                };
                return [-7, -1, 1, 3, 5, 37 ].every( function (x) { return o.isOdd(x); } )
                    && [-8, -2, 0, 2, 4, 6, 48].every( function (x) { return o.isEven(x); })
                ;    
            }
            
            , function meth_isOdd_isEven_prototype_named_function()
            {
                function A() {}
                A.prototype.isOdd =
                    meth( function isOdd(that, n) {
                        return n < 0  ?  mret( that.mself, -n )
                            :  n === 0  ?  false
                            :  mret( that.isEven, n-1 );
                    });
                A.prototype.isEven =
                    meth( function isEven(that, n) {
                        return n < 0  ?  mret( that.mself, -n )
                            :  n === 0  ?  true
                            :  mret( that.isOdd, n-1 );
                    });
                
                var o = new A;
                return [-7, -1, 1, 3, 5, 37 ].every( function (x) { return o.isOdd(x); } )
                    && [-8, -2, 0, 2, 4, 6, 48].every( function (x) { return o.isEven(x); })
                ;    
            }        

            , function inline_body_with_var_throws_error()
            {
                try
                {
                    var a = mfun( function a( x ) {
                        var y = x + 1;
                        return y;
                    })
                    ;
                    a( 100 );
                }
                catch (e)
                {
                    var msg = '' + e;
                    return /\bvar\b/.test( msg )
                        &&  /\bforbidden\b/.test( msg )
                        &&  /\blet\b/.test( msg )
                        &&  /\bconst\b/.test( msg )
                    ;
                }
                return false;
            }


            , function
            isOdd_isEven_functionality_default_groupkey_inline_body_false()
            {
                // The default `groupkey` is the returned function
                // `var isOdd` in this case.
                var isOdd = mfun.call(
                    { inline_body : false }
                    , function isOdd( n ) {
                        return n < 0  ?  mret( isOdd, -n )
                            :  n === 0  ?  false
                            :  mret( isEven, n-1 );
                    })
                ,  isEven = mfun.call(
                    { inline_body : false }
                    , isOdd, function isEven( n ) {
                        return n < 0  ?  mret( isEven, -n )
                            :  n === 0  ?  true
                            :  mret( isOdd, n-1 );
                    })

                , funct_ok = [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )

                , isOdd_body_ok = (isOdd.getImpl() + '')
                    .match( /\bfunction\b/g )
                    .length >= 3

                , isEven_body_ok = (isEven.getImpl() + '')
                    .match( /\bfunction\b/g )
                    .length >= 3
                ;

                return funct_ok  &&  isOdd_body_ok  &&  isEven_body_ok;
            }
            
            , function
            isOdd_isEven_functionality_default_groupkey_inline_body_true()
            {
                // The default `groupkey` is the returned function
                // `var isOdd` in this case.
                var isOdd = mfun.call(
                    { inline_body : true }
                    , function isOdd( n ) {
                        return n < 0  ?  mret( isOdd, -n )
                            :  n === 0  ?  false
                            :  mret( isEven, n-1 );
                    })
                ,  isEven = mfun.call(
                    { inline_body : true }
                    , isOdd, function isEven( n ) {
                        return n < 0  ?  mret( isEven, -n )
                            :  n === 0  ?  true
                            :  mret( isOdd, n-1 );
                    })

                , funct_ok = [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )

                , isOdd_body_ok = (isOdd.getImpl() + '')
                    .match( /\bfunction\b/g )
                    .length == 1

                , isEven_body_ok = (isEven.getImpl() + '')
                    .match( /\bfunction\b/g )
                    .length == 1
                ;

                return funct_ok  &&  isOdd_body_ok  &&  isEven_body_ok;
            }





            
            , function debugging_tool_self_rec()
            {
                /* To debug, one simply appends a "D" as in "mfunD":

                   var gcd = mfunD( function gcd(a, b) { return ... } );
                */
                
                function gcd_input_fun(a, b) {
                    return a > b  ?  mret( mself, a-b, b )
                        :  a < b  ?  mret( mself, b-a, a )
                        :  a;
                }
                
                var gcd = mfunD( gcd_input_fun )
                , isOk_arr = [
                    [1, 1, 1]
                    , [2, 2, 2]
                    , [2, 3, 1]
                    , [2*3, 2, 2]
                    , [2*3, 3, 3]
                    , [2*5*17, 3*5*19, 5]
                    , [2*3*5*17, 3*5*19, 3*5]
                ]
                    .map( function( abc ) {
                        return gcd( abc[ 0 ], abc[ 1 ] ) === abc[ 2 ];
                    })
                , isOk_result = isOk_arr
                    .every( function ( x ) { return x; } )

                , isOk_getImpl = gcd.getImpl == null
                ;
                
                return isOk_result  &&  isOk_getImpl;
                
            }

            , function debugging_tool_self_rec_real_life_use_case()
            {
                var gcd = mfunD( function (a, b) {
                    return a > b  ?  mret( mself, a-b, b )
                        :  a < b  ?  mret( mself, b-a, a )
                        :  a;
                })
                , isOk_arr = [
                    [1, 1, 1]
                    , [2, 2, 2]
                    , [2, 3, 1]
                    , [2*3, 2, 2]
                    , [2*3, 3, 3]
                    , [2*5*17, 3*5*19, 5]
                    , [2*3*5*17, 3*5*19, 3*5]
                ]
                    .map( function( abc ) {
                        return gcd( abc[ 0 ], abc[ 1 ] ) === abc[ 2 ];
                    })
                , isOk_result = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                
                return isOk_result;
            }

            , function debugging_tool_mutual_recursion()
            {
                /* Test implementation: we need to check isOdd.getImpl()
                   and isEven.getImpl(), hence the need for separate
                   functions.
                   
                   In a real-life use case one would simply append a "D"
                   as in "mfunD":

                   var isOdd  = mfunD( function isOdd(n) { return ... } )
                   ,   isEven = mfunD( function isEven(n) { return ... } )
                   ;
                */

                function isOdd_input_fun( n ) {
                    return n < 0  ?  mret( isOdd, -n )
                        :  n === 0  ?  false
                        :  mret( isEven, n-1 );
                }
                function isEven_input_fun( n ) {
                    return n < 0  ?  mret( isEven, -n )
                        :  n === 0  ?  true
                        :  mret( isOdd, n-1 );
                }

                // The default `groupkey` is the returned function
                // `var isOdd` in this case.
                var isOdd = mfunD( 'isOdd', isOdd_input_fun )
                ,  isEven = mfunD( isOdd, 'isEven', isEven_input_fun )
                
                ,   isOk_result = [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
                ;
                return isOk_result;
            }
            
            , function debugging_tool_mutual_recursion_real_life_use_case()
            {
                // The default `groupkey` is the returned function
                // `var isOdd` in this case.
                var isOdd = mfunD( 'isOdd', function isOdd( n ) {
                    return n < 0  ?  mret( isOdd, -n )
                        :  n === 0  ?  false
                        :  mret( isEven, n-1 );
                })
                ,  isEven = mfunD( isOdd, function isEven( n ) {
                    return n < 0  ?  mret( isEven, -n )
                        :  n === 0  ?  true
                        :  mret( isOdd, n-1 );
                })
                
                ,   isOk_result = [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )

                ,   isOk_getImpl = isOdd.getImpl == null
                    &&  isEven.getImpl == null
                ;
                return isOk_result  &&  isOk_getImpl;
            }

            , function debugging_tool_stack_overflow()
            {
                function f_impl( n ) {
                    return n < 0  ?  mret( mself, -n )
                        :  n > 0  ?  mret( mself, n-1 )
                        :  true;
                }
                
                var f = mfun( f_impl )
                ,   g = mfunD( f_impl)

                ,   N = 1e6
                , isOk_f = true === f( N )
                , isOk_g = catch_error( function () { true === g( N ); } )
                ;
                return isOk_f  &&  isOk_g;
                function catch_error( fun )
                {
                    try
                    {
                        fun();
                        return false;
                    }
                    catch( e )
                    {
                        return true;
                    }
                    null.bug;
                }
            }

            
            

            
            
            , function meth_debugging_tool_self_rec()
            {
                /* 
                   To debug, simply append a "D" as in "methD".
                */

                function gcd_input_fun(that, a, b) {

                    return a > b  ?  mret( that.mself, a-b, b )
                        :  a < b  ?  mret( that.mself, b-a, a )
                        :  a;
                }
                var o = { gcd : methD( 'gcd', gcd_input_fun ) }
                
                , isOk_arr = [
                    [1, 1, 1]
                    , [2, 2, 2]
                    , [2, 3, 1]
                    , [2*3, 2, 2]
                    , [2*3, 3, 3]
                    , [2*5*17, 3*5*19, 5]
                    , [2*3*5*17, 3*5*19, 3*5]
                ]
                    .map( function( abc ) {
                        return o.gcd( abc[ 0 ], abc[ 1 ] ) === abc[ 2 ];
                    })
                , isOk_result = isOk_arr
                    .every( function ( x ) { return x; } )

                , isOk_getImpl = o.gcd.getImpl == null
                ;
                return isOk_result  &&  isOk_getImpl;
                
            }
            
            , function meth_debugging_tool_mutual_recursion()
            {
                /* 
                   To debug, simply append a "D" as in "methD".
                */

                function isOdd_input_fun( that, n ) {
                    return n < 0  ?  mret( that.mself, -n )
                        :  n === 0  ?  false
                        :  mret( that.isEven, n-1 );
                }
                function isEven_input_fun( that, n ) {
                    return n < 0  ?  mret( that.mself, -n )
                        :  n === 0  ?  true
                        :  mret( that.isOdd, n-1 );
                }

                // The default `groupkey` is the returned function
                // `var isOdd` in this case.
                var o = {
                    isOdd    : methD( 'isOdd',  isOdd_input_fun )
                    , isEven : methD( 'isEven', isEven_input_fun )
                }
                
                ,   isOk_result = [-7, -1, 1, 3, 5, 37 ].every( o.isOdd.bind( o ) )
                    && [-8, -2, 0, 2, 4, 6, 48 ].every( o.isEven.bind( o ) )

                ,   isOk_impl = o.isOdd.getImpl == null
                    &&  o.isEven.getImpl == null
                ;
                return isOk_result;
            }
            






            , function meth_that_dot_forgotten()
            {
                var o = {
                    isOdd : meth( function isOdd(that, n) {
                        return
                        n < 0  ?  mret( mself, -n )
                            :  n === 0  ?  false
                            :  mret( isEven, n-1 );
                    })
                    , isEven : meth( function isEven(that, n) {
                        return 
                        n < 0  ?  mret( mself, -n )
                            :  n === 0  ?  true
                            :  mret( isOdd, n-1 );
                    })
                };
                try
                {
                    o.isOdd( 123 );
                }
                catch( e )
                {
                    var s = '' + e;
                    return /\bfext\b/.test( s )
                        &&  /\bmeth\b/.test( s )
                        &&  /\bmethD\b/.test( s )
                        &&  /\bthat\./.test( s );
                }
                return false;
            }

            
            
            , function mfun_that_dot_forbidden()
            {
                try
                {
                    var isOdd = mfun( function isOdd(n) {
                        return
                        n < 0  ?  mret( mself, -n )
                            :  n === 0  ?  false
                            :  mret( that.isEven, n-1 );
                    })
                    , isEven = mfun( isOdd, function isEven(n) {
                        return 
                        n < 0  ?  mret( mself, -n )
                            :  n === 0  ?  true
                            :  mret( isOdd, n-1 );
                    })
                    ;
                    isOdd( 123 );
                }
                catch( e )
                {
                    var s = '' + e;
                    return /\bfext\b/.test( s )
                        &&  /\bmfun\b/.test( s )
                        &&  /\bmfunD\b/.test( s )
                        &&  /\bwithout\b/i.test( s )
                        &&  /\bthat\./.test( s );
                }
                return false;
            }





            , function
            partial_call_must_set_undefined_automatically_on_remaining_args()
            {
                var f = mfun(
                    function f(a, b) {
                        return a > 1  ?  mret( f, a - 1, b )
                            :  a > 0  ?  mret( f, a - 1 )
                            :  b
                        ;
                    }
                )
                , isOk = f(2,4) === undefined
                ;
                return isOk;
            }           
            

            , function fext_namespace()
            {
                var gcd = fext.mfun( function (a, b) {
                    return a > b  ?  fext.mret( mself, a-b, b )
                        :  a < b  ?  fext.mret( mself, b-a, a )
                        :  a;
                })
                , isOk_arr = [
                    [1, 1, 1]
                    , [2, 2, 2]
                    , [2, 3, 1]
                    , [2*3, 2, 2]
                    , [2*3, 3, 3]
                    , [2*5*17, 3*5*19, 5]
                    , [2*3*5*17, 3*5*19, 3*5]
                ]
                    .map( function( abc ) {
                        return gcd( abc[ 0 ], abc[ 1 ] ) === abc[ 2 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }

            , function fx_namespace()
            {
                var fx = fext;
                
                var gcd = fx.mfun( function (a, b) {
                    return a > b  ?  fx.mret( fx.mself, a-b, b )
                        :  a < b  ?  fx.mret( fx.mself, b-a, a )
                        :  a;
                })
                , isOk_arr = [
                    [1, 1, 1]
                    , [2, 2, 2]
                    , [2, 3, 1]
                    , [2*3, 2, 2]
                    , [2*3, 3, 3]
                    , [2*5*17, 3*5*19, 5]
                    , [2*3*5*17, 3*5*19, 3*5]
                ]
                    .map( function( abc ) {
                        return gcd( abc[ 0 ], abc[ 1 ] ) === abc[ 2 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
            }




            , function fext_shortcut()
            // https://github.com/glathoud/fext/issues/13
            {
                var fx = fext;

                // Here: we use `fx` instead of `fx.mfun`
                var gcd = fx( function (a, b) {
                    return a > b  ?  fx.mret( fx.mself, a-b, b )
                        :  a < b  ?  fx.mret( fx.mself, b-a, a )
                        :  a;
                })
                , isOk_arr = [
                    [1, 1, 1]
                    , [2, 2, 2]
                    , [2, 3, 1]
                    , [2*3, 2, 2]
                    , [2*3, 3, 3]
                    , [2*5*17, 3*5*19, 5]
                    , [2*3*5*17, 3*5*19, 3*5]
                ]
                    .map( function( abc ) {
                        return gcd( abc[ 0 ], abc[ 1 ] ) === abc[ 2 ];
                    })
                , isOk = isOk_arr
                    .every( function ( x ) { return x; } )
                ;
                return isOk;            
                
            }



            , function fext_shortcut_simple_arrow()
            // https://github.com/glathoud/fext/issues/13
            {
                var f = fext('(x,y) => x+y')
                ,   isOk = 11 === f(10,1)
                ;
                return isOk;
            }

        ]);

    } // end of function `get_test_arr()`


    // ---------- Details

    function format_result_text( result_all, result )
    {
        return '\nfinal result:&nbsp;' + colorize( result_all )
            + '&nbsp;(' + result.length + '&nbsp;tests)'
            + '&nbsp;<button onclick="'
            + 'detail_dom.classList.toggle(\'hidden\')'
            + '">Detail</button>'
            + '<span id="detail_dom" class="hidden">'
            + '\n---\n\n'
            +  result.slice().sort().join( '\n' )
            + '</span>'
        ;
    }

    function colorize( result )
    {
        return '<span class="'
            + (true === result  ?  'success'  :  'failure')
            + '">' + result + '</span>';
    }

})(global  ||  exports  ||  this);
