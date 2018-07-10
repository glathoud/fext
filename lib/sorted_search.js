/*global global exports*/

var global, exports;
(function (global) {

    'use strict';

    // API
    
    global.sortedSearch = sortedSearch;

    // --- API implementation

    var improveFirst = mfun( improveFirst )
    ,   improveLast  = mfun( improveFirst, improveLast )
    ;
    
    function sortedSearch(sortedArray, x, /*?fun?*/less, /*?fun?*/equal)
    {
        // In a sorted array, search for first and last occurences of `x`.
        //
        // If `x` found, return `[ first_index, last_index ]`
        // (integers).
        //
        // If `x` not found, return `null`.
        
        less  ||  (less = less_dflt);
        equal ||  (equal = equal_dflt);
        
        var first_found = false
        ,    last_found = false
        ,             i = 0
        ,             j = sortedArray.length - 1
        ,          imax = j
        ,          jmin = i
        ;
        
        return improveFirst(
            sortedArray, x, less, equal, isFirstFound, isLastFound
            , first_found, last_found, i, j, imax, jmin
        );
    }

    function less_dflt(a,b) { return a < b; }

    function equal_dflt(a,b) { return a == b; }

    function isFirstFound( sortedArray, i, equal, x )
    {
        return equal(x, sortedArray[i])  &&
            (i < 1  ||  !equal(x, sortedArray[i - 1]));
    }

    function isLastFound( sortedArray, j, equal, x)
    {
        return equal(x, sortedArray[j])  &&
            (j > sortedArray.length - 2  || !equal(x, sortedArray[j + 1]));
    }
    
    // --- Private details

    function improveFirst(
        sortedArray, x, less, equal, isFirstFound, isLastFound
        , first_found, last_found, i, j, imax, jmin
    )
    {
        first_found = first_found ||
            isFirstFound(sortedArray, i, equal, x);

        // Termination tests

        if (!(i <= j))
        {
            if (i > j)
                return null;    // Done: `x` not found.
            else
                null.bug;
        }
        
        if (first_found && last_found)
            return [i, j];  // Done: `x` found.

        // Update

        if (!first_found)
        {
            i++;

            imax = Math.min( imax, j );

            let ind = i + ((imax - i) >> 1)
            , v_ind = sortedArray[ind]
            ;

            if (less(v_ind, x) ||
                isFirstFound(sortedArray, ind, equal, x)
               )
                i = ind;
            else
                imax = ind;
        }

        return mret(
            improveLast
            , sortedArray, x, less, equal, isFirstFound, isLastFound
            , first_found, last_found, i, j, imax, jmin
        );
    }

    function improveLast(
        sortedArray, x, less, equal, isFirstFound, isLastFound
        , first_found, last_found, i, j, imax, jmin
    )
    {
        last_found = last_found ||
            isLastFound(sortedArray, j, equal, x);

        // Termination tests already done in `improveFirst`, 
        // not needed here.

        // Update

        if (!last_found)
        {
            j--;

            jmin = Math.max( jmin, i );

            let ind = j - ((j - jmin) >> 1)
            , v_ind = sortedArray[ind]
            ;

            if (less(x, v_ind) ||
                isLastFound(sortedArray, ind, equal, x)
               )
                j = ind;
            else
                jmin = ind;
        }

        return mret(
            improveFirst
            , sortedArray, x, less, equal, isFirstFound, isLastFound
            , first_found, last_found, i, j, imax, jmin
        );
    }

})(global  ||  exports  ||  this);




// Exploration: can we use the evil `eval` to prevent parameter
// repetition?

var global, exports;
(function (global) {

    'use strict';

    // API
    
    global.sortedSearchLocal = sortedSearchLocal;

    // --- API implementation

    // First "declare" all functions so that co-dependencies can be
    // solved.
    //
    // Use `mfunD` to debug
    var improveFirst = mfun( improveFirst )
    ,   improveLast  = mfun( improveFirst, improveLast )
    ;
    
    // Now we can implement them, using evil access to the local
    // lexical scope so that we do not need to write parameters
    // repeatedly 5 times (see above `function sortedSearch(...)`).
    improveFirst = eval( improveFirst.getImplEval() );
    improveLast  = eval( improveLast.getImplEval() );
    
    var first_found
    ,    last_found
    ,             i
    ,             j
    ,          imax
    ,          jmin
    ;
    var sortedArray, x, less, equal;
    
    function sortedSearchLocal(in_sortedArray, in_x, /*?fun?*/in_less, /*?fun?*/in_equal)
    {
        // In a sorted array, search for first and last occurences of `x`.
        //
        // If `x` found, return `[ first_index, last_index ]`
        // (integers).
        //
        // If `x` not found, return `null`.

        sortedArray = in_sortedArray;
        x = in_x;
        less = in_less  ||  less_dflt;
        equal = in_equal  ||  equal_dflt;
        
        first_found     = false
        ,    last_found = false
        ,             i = 0
        ,             j = sortedArray.length - 1
        ,          imax = j
        ,          jmin = i
        ;
        
        return improveFirst();
    }

    function less_dflt(a,b) { return a < b; }

    function equal_dflt(a,b) { return a == b; }

    function isFirstFound( sortedArray, i, equal, x )
    {
        return equal(x, sortedArray[i])  &&
            (i < 1  ||  !equal(x, sortedArray[i - 1]));
    }

    function isLastFound( sortedArray, j, equal, x)
    {
        return equal(x, sortedArray[j])  &&
            (j > sortedArray.length - 2  || !equal(x, sortedArray[j + 1]));
    }
    
    // --- Private details

    function improveFirst()
    {
        first_found = first_found ||
            isFirstFound(sortedArray, i, equal, x);

        // Termination tests

        if (!(i <= j))
        {
            if (i > j)
                return null;    // Done: `x` not found.
            else
                null.bug;
        }
        
        if (first_found && last_found)
            return [i, j];  // Done: `x` found.

        // Update

        if (!first_found)
        {
            i++;

            imax = Math.min( imax, j );

            let ind = i + ((imax - i) >> 1)
            , v_ind = sortedArray[ind]
            ;

            if (less(v_ind, x) ||
                isFirstFound(sortedArray, ind, equal, x)
               )
                i = ind;
            else
                imax = ind;
        }

        return mret( improveLast );
    }

    function improveLast()
    {
        last_found = last_found ||
            isLastFound(sortedArray, j, equal, x);

        // Termination tests already done in `improveFirst`, 
        // not needed here.

        // Update

        if (!last_found)
        {
            j--;

            jmin = Math.max( jmin, i );

            let ind = j - ((j - jmin) >> 1)
            , v_ind = sortedArray[ind]
            ;

            if (less(x, v_ind) ||
                isLastFound(sortedArray, ind, equal, x)
               )
                j = ind;
            else
                jmin = ind;
        }

        return mret( improveFirst );
    }

})(global  ||  exports  ||  this);
