/*global global exports*/

var global, exports;
(function (global) {

    'use strict';

    global.get_test_arr_sorted_search_closure =
        get_test_arr_sorted_search_closure;

    function get_test_arr_sorted_search_closure()
    {
        return [ sorted_search_closure_test ];
    }

    

    function sorted_search_closure_test()
    {
        var sortedArray =
            [ 0, 0, 0, 0, 1, 1, 3, 4, 6, 6, 7, 8, 9, 10, 10, 10,
              11, 13, 14, 14, 15 ];

        function f( s ) { assert( s, sortedArray ); }

        f( '"0###3" === sortedSearchClosure( v, 0 ).join("###")' );
        
        f( '"4###5" === sortedSearchClosure( v, 1 ).join("###")' );
        
        f( 'null === sortedSearchClosure( v, 2 )' );

        f( '"8###9" === sortedSearchClosure( v, 6 ).join("###")' );
        
        f( 'null === sortedSearchClosure( v, 12 )' );

        f
        ('"18###19" === sortedSearchClosure( v, 14 ).join("###")');
 
        f
        ('"20###20" === sortedSearchClosure( v, 15 ).join("###")');

        return true;
        
        function assert(codestring, /*?optional?*/v) 
        {
            var tmp_f =
                new Function( 'v', 'return ' + codestring + ';' );
            
            if (!tmp_f( v )) 
                throw new Error( 'Failed test: ' + codestring ); 
        }
    }
    
})(global  ||  exports  ||  this);
