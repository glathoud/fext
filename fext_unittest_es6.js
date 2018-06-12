/*global global exports*/

var global, exports;
(function (global) {

    'use strict';

    global.get_test_arr_es6 = get_test_arr_es6;

    function get_test_arr_es6() { return [

        function arrow_self_recursion_anonymous_gcd()
        {
            var gcd = mfun(
                (a, b) => a > b  ?  mret( self, a-b, b )
                    :     a < b  ?  mret( self, b-a, a )
                    :     a
            )
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
        
        , function self_recursion_anonymous_backtick()
        {
            var factorial = mfun( `function ( n, acc ) {
                return acc == null  ?  mret( self, n, 1 )
                    : n > 1  ?  mret( self, n-1, acc*n )
                    : acc;
            }`)
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

        , function self_recursion_named_backtick()
        {
            var factorial = mfun( 'factorial', `function ( n, acc ) {
                return acc == null  ?  mret( factorial, n, 1 )
                    : n > 1  ?  mret( factorial, n-1, acc*n )
                    : acc;
            }`)
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
        arrow_helper_function_explicit_namespacekey_backtick()
        {
            var namespacekey = {}  // whatever object

            ,   factorial = mfun( namespacekey
                                  , (n) => mret( factsub, n, 1 ) )
            ,   factsub   = mfun( namespacekey
                                  , 'factsub'
                                  , `( n, acc ) =>
                                  n > 1  ?  mret( self, n-1, acc*n )
                                  : acc`
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

        , function
        arrow_helper_function_default_namespacekey_backtick()
        {
            // The default `namespacekey` is the returned function
            // `var factorial` in this case.
            var factorial = mfun( (n) => mret( factsub, n, 1 ) )
            ,   factsub   = mfun( factorial
                                  , 'factsub'
                                  , `( n, acc ) =>
                                  n > 1  ?  mret( self, n-1, acc*n )
                                  : acc`
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


        , function arrow_self_recursion_anonymous()
        {
            var factorial = mfun(  ( n, acc ) =>
                                   acc == null  ?  mret( self, n, 1 )
                                   : n > 1  ?  mret( self, n-1, acc*n )
                                   : acc)
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

        , function arrow_self_recursion_named()
        {
            var factorial = mfun( 'factorial', (n, acc) => 
                                  acc == null  ?  mret( factorial, n, 1 )
                                  : n > 1  ?  mret( factorial, n-1, acc*n )
                                  : acc)
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
        arrow_helper_function_explicit_namespacekey_forgot_name()
        {
            var namespacekey = {}  // whatever object

            ,   factorial = mfun( namespacekey, n => mret( factsub, n, 1 ))

            // We forgot the name here. An Error should be thrown.
            ,   factsub   = mfun( namespacekey, (n, acc) =>
                                  n > 1  ?  mret( self, n-1, acc*n )
                                  : acc)
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
        arrow_helper_function_explicit_namespacekey()
        {
            var namespacekey = {}  // whatever object

            ,   factorial = mfun( namespacekey, n =>
                                  mret( factsub, n, 1 )
                                )
            ,   factsub   = mfun( namespacekey, 'factsub', (n, acc) =>
                                  n > 1  ?  mret( self, n-1, acc*n )
                                  : acc)
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
        arrow_helper_function_default_namespacekey()
        {
            // The default `namespacekey` is the returned function
            // `var factorial` in this case.
            var factorial = mfun( (n) => mret( factsub, n, 1 ) )
            ,   factsub   = mfun( factorial, 'factsub', ( n, acc ) =>
                                  n > 1  ?  mret( self, n-1, acc*n )
                                  : acc
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


        , function arrow_isOdd_isEven_call_stack()
        {
            var isOdd = mfun( 'isOdd', n => n < 0  ?  mret( self, -n )
                              :  n === 0  ?  false
                              :  mret( isEven, n-1 )
                            )
            ,  isEven = mfun( isOdd, 'isEven', n => 
                              n < 0  ?  mret( self, -n )
                              :  n === 0  ?  true
                              :  mret( isOdd, n-1 )
                            )
            
            ,   a =  isOdd ( 3247831 )
            ,   b = !isEven( 3247831 )

            ,   c = !isOdd ( 8927490 )
            ,   d =  isEven( 8927490 )
            ;
            return a && b && c && d;
        }


        , function
        arrow_isOdd_isEven_functionality_explicit_namespacekey_self()
        {
            var namespacekey = {}  // whatever object

            ,   isOdd = mfun( namespacekey, 'isOdd', (n) =>
                              n < 0  ?  mret( self, -n )
                              :  n === 0  ?  false
                              :  mret( isEven, n-1 )
                            )
            ,  isEven = mfun( namespacekey, 'isEven', function isEven( n ) {
                return n < 0  ?  mret( self, -n )
                    :  n === 0  ?  true
                    :  mret( isOdd, n-1 );
            })
            ;
            return [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
            ;
        }

        , function
        arrow_isOdd_isEven_functionality_default_namespacekey()
        {
            // The default `namespacekey` is the returned function
            // `var isOdd` in this case.
            var isOdd = mfun( 'isOdd', n =>  
                              n < 0  ?  mret( self, -n )
                              :  n === 0  ?  false
                              :  mret( isEven, n-1 )
                            )
            ,  isEven = mfun( isOdd, 'isEven', (n) =>
                              n < 0  ?  mret( isEven, -n )
                              :  n === 0  ?  true
                              :  mret( isOdd, n-1 )
                            )
            ;
            return [-7, -1, 1, 3, 5, 37 ].every( isOdd )
                && [-8, -2, 0, 2, 4, 6, 48 ].every( isEven )
            ;
        }


        , function arrow_no_mret_backtick()
        {
            var  f = mfun( `x => 100+x` )
            , isOk = f(23) === 123
            ;
            return isOk;
        }

        , function arrow_no_mret_paren_backtick()
        {
            var  f = mfun( `(x) => 100+x` )
            , isOk = f(23) === 123
            ;
            return isOk;
        }

        , function no_mret_backtick()
        {
            var  f = mfun( `function (x) { return 100+x; }` )
            , isOk = f(23) === 123
            ;
            return isOk;
        }


        , function arrow_no_mret()
        {
            var  f = mfun( x => 100+x )
            , isOk = f(23) === 123
            ;
            return isOk;
        }

        , function no_mret_paren()
        {
            var  f = mfun( (x) => 100+x )
            , isOk = f(23) === 123
            ;
            return isOk;
        }

        , function no_mret()
        {
            var  f = mfun( function (x) { return 100+x; } )
            , isOk = f(23) === 123
            ;
            return isOk;
        }




        , function meth_arrow_self_recursion_use_that()
        {
            // Somewhat contrived example to show that
            // we have to use `that` instead of `this`

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



        , function meth_arrow_self_recursion()
        {
            var o = {
                factorial : meth( 'factorial'
                                  , (that, n, acc) =>
                                  acc == null  ?  mret( self, n, 1 )
                                  : n > 1  ?  mret( self, n-1, acc*n )
                                  : acc)
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
            console.log('xxx ____ o.factorial: ' + o.factorial);
            return isOk;  
        }

        , function meth_arrow_self_recursion_prototype()
        {
            function A() {}

            A.prototype.factorial = meth( 'factorial'
                                          , (that, n, acc ) =>
                                          acc == null  ?  mret( self, n, 1 )
                                          : n > 1  ?  mret( self, n-1, acc*n )
                                          : acc
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



        

        , function meth_arrow_self_recursion_backtick()
        {
            var o = {
                factorial : meth( 'factorial'
                                  , `(that, n, acc ) =>
                                  acc == null  ?  mret( self, n, 1 )
                                  : n > 1  ?  mret( self, n-1, acc*n )
                                  : acc
                                  `)
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

        , function meth_arrow_self_recursion_prototype_backtick()
        {
            function A() {}

            A.prototype.factorial = meth( 'factorial'
                                          , `( that, n, acc ) =>
                                          acc == null  ?  mret( self, n, 1 )
                                          : n > 1  ?  mret( self, n-1, acc*n )
                                          : acc`
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






        , function meth_arrow_helper_function()
        {
            var o = {
                factorial : meth( 'factorial', (that, n) => mret( factsub, n, 1 ) )
                , factsub : meth( 'factsub'
                                  , (that, n, acc) =>
                                  n > 1  ?  mret( self, n-1, acc*n )
                                  : acc
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




        


        

        
        , function meth_arrow_isOdd_isEven_object()
        {
            var o = {
                isOdd : meth( 'isOdd', (that, n) =>
                              n < 0  ?  mret( self, -n )
                              :  n === 0  ?  false
                              :  mret( isEven, n-1 )
                            )
                , isEven : meth( 'isEven', (that, n) =>
                                 n < 0  ?  mret( self, -n )
                                 :  n === 0  ?  true
                                 :  mret( isOdd, n-1 )
                               )
            };
            return [-7, -1, 1, 3, 5, 37 ].every( x => o.isOdd(x) )
                && [-8, -2, 0, 2, 4, 6, 48].every( x => o.isEven(x))
            ;    
        }
        
        , function meth_arrow_isOdd_isEven_prototype()
        {
            function A() {}
            A.prototype.isOdd =
                meth( 'isOdd' , (that, n) =>
                      n < 0  ?  mret( self, -n )
                      :  n === 0  ?  false
                      :  mret( isEven, n-1 )
                    );
            A.prototype.isEven =
                meth( 'isEven', (that, n) =>
                      n < 0  ?  mret( self, -n )
                      :  n === 0  ?  true
                      :  mret( isOdd, n-1 )
                    );
            
            var o = new A;
            return [-7, -1, 1, 3, 5, 37 ].every( x => o.isOdd(x) )
                && [-8, -2, 0, 2, 4, 6, 48].every( x => o.isEven(x))
            ;    
        }
        
    ];

                                } // end of function `get_test_arr_es6()`

})(global  ||  exports  ||  this);
