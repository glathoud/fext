/*global global exports*/

var global, exports;
(function (global) {

    'use strict';

    global.get_test_arr_sorted_search = get_test_arr_sorted_search;

    function get_test_arr_sorted_search()
    {
        return [

            function sorted_search_test()
            {
                var sortedArray = [ 0, 0, 0, 0, 1, 1, 3, 4, 6, 6, 7, 8, 9, 10, 10, 10,
                                    11, 13, 14, 14, 15 ];
                assert( '"0###3" === sortedSearch( v, 0 ).join("###")', sortedArray );
                assert( '"4###5" === sortedSearch( v, 1 ).join("###")', sortedArray );
                assert( 'null === sortedSearch( v, 2 )', sortedArray );
                assert( '"8###9" === sortedSearch( v, 6 ).join("###")', sortedArray );
                assert( 'null === sortedSearch( v, 12 ) ', sortedArray );
                assert( '"18###19" === sortedSearch( v, 14 ).join("###")', sortedArray );
                assert( '"20###20" === sortedSearch( v, 15 ).join("###")', sortedArray );

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
