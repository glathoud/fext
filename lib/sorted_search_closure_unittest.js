/*global global exports*/

var global, exports;
(function (global) {

    'use strict';

    global.get_test_arr_sorted_search_closure = get_test_arr_sorted_search_closure;

    function get_test_arr_sorted_search_closure()
    {
        return [

            function sorted_search_closure_test()
            {
                var sortedArray = [ 0, 0, 0, 0, 1, 1, 3, 4, 6, 6, 7, 8, 9, 10, 10, 10,
                                    11, 13, 14, 14, 15 ];
                assert( '"0###3" === sortedSearchClosure( v, 0 ).join("###")', sortedArray );
                assert( '"4###5" === sortedSearchClosure( v, 1 ).join("###")', sortedArray );
                assert( 'null === sortedSearchClosure( v, 2 )', sortedArray );
                assert( '"8###9" === sortedSearchClosure( v, 6 ).join("###")', sortedArray );
                assert( 'null === sortedSearchClosure( v, 12 ) ', sortedArray );
                assert( '"18###19" === sortedSearchClosure( v, 14 ).join("###")', sortedArray );
                assert( '"20###20" === sortedSearchClosure( v, 15 ).join("###")', sortedArray );

                return true;
                
                function assert(codestring, /*?optional?*/v) 
                {
                    if (!new Function( 'v', 'return ' + codestring + ';' )( v )) 
                        throw new Error( 'Failed test: ' + codestring ); 
                }
            }

        ];

    }

})(global  ||  exports  ||  this);
