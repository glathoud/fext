## fext.js
Fast explicit tail calls in JavaScript [[live page](http://glat.info/fext)] [[Node.js package](https://www.npmjs.com/package/fext)]

Classically, tail calls are automatically optimized (LISP...) . In JavaScript, 
programmers may well not know which "return" statements are optimized by the engine, and which not.
This would lead to practical issues when debugging/optimizing ([2009](http://neopythonic.blogspot.de/2009/04/final-words-on-tail-calls.html)).

As of 2018, progress is "slow" and the Chrome team has already *removed* the automatic self-recursion tail call optimization from its JavaScript engine.

Another possibility is to **explicitly mark the tail calls that will be optimized**. Several JavaScript extensions were proposed that add new keywords to the language ([2013](http://glat.info/js.metaret/), [2016](https://github.com/tc39/proposal-ptc-syntax)).

It turns out that we can do this with today's JavaScript, without extending the language.

**fext.js** demonstrates this.

## API

Two entry points:
 * `mfun(...)` returns an optimized function,
 * `meth(...)` returns an optimized method.

## Debugging

Just append a "D" character:

 * turn `mfun()` into `mfunD()`.
 * turn `mret()` into `mretD()`.

...to turn off the optimizations. You can then use logging and
breakpoints.

## Getting started

Wrap the whole function with `mfun(...)` and use `return mret(<expr>)` to mark the tail calls to be optimized.

Self-recursion example:
```html
<script src="fext.js"></script>
<script>
  var gcd = mfun(
         (a, b) => a > b  ?  mret( mself, a-b, b )
             :     a < b  ?  mret( mself, b-a, a )
             :     a
  );
  console.log( gcd( 2*3*5*17, 3*5*19 ) );  // 15 (3*5)
</script>
```


## Mutual recursion
 
 ```js
 var groupkey = {}  // whatever object (won't be modified)

,   isOdd = mfun( groupkey
                  , "isOdd"
                  , n => n < 0    ?  mret( mself, -n )
                  :      n === 0  ?  false
                  :      mret( isEven, n-1 )
                )
,  isEven = mfun( groupkey
                  , "isEven"
                  , n => n < 0    ?  mret( mself, -n )
                  :      n === 0  ?  true
                  :      mret( isOdd, n-1 )
                )
;
console.log( isOdd( 84327681 ) );   // true (no call stack issue)
console.log( isEven( 84327681 ) );  // false (no call stack issue)
```
 
`groupkey` is only used as a key to determine "groups" of function that know each other.

You can conveniently omit `groupkey`:
```js
// The default `groupkey` is the returned function
// `var isOdd` in this case
var isOdd = mfun( n => n < 0    ?  mret( mself, -n )
                  :    n === 0  ?  false
                  :    mret( isEven, n-1 )
                )
,  isEven = mfun( isOdd  // <<< `isOdd` is used here as `groupkey`
                  , "isEven"
                  , n => n < 0    ?  mret( mself, -n )
                  :      n === 0  ?  true
                  :      mret( isOdd, n-1 )
                )
;
console.log( isOdd( 84327681 ) );   // true (no call stack issue)
console.log( isEven( 84327681 ) );  // false (no call stack issue)
```

## Namespace alternative

In some situations the globals `mfun`, `meth`, `mfunD`, etc. may feel
annoying. Solution: use the `fext.*` namespace. Below, an example in
the Node.js context:

```js
var fx = require( '../fext' ).fext;
            
var isOdd = fx.mfun( function isOdd( n ) {
    return n > 0  ?  fx.mret( isEven, n-1 )
        :  n < 0  ?  fx.mret( fx.mself, -n )
        :  false
    ;
})
,  isEven = fx.mfun( isOdd, function isEven( n ) {
    return n > 0  ?  fx.mret( isOdd, n-1 )
        :  n < 0  ?  fx.mret( fx.mself, -n )
        :  true
    ;
})
console.log( isOdd( 8951531 ) ); // true ; no call stack issue
```

### Shortcut

Note that `fext === fext.mfun` as a shortcut for the simplest cases, especially in the Node.js context:

```js
var fx = require( '../fext' ).fext;

var self_recursive_fun = fx( ... );
```

...and in the IE11 context, when relying one the `fext` namespace, this gives easy access to arrow functions:
```js
var sum_two = fext('(x,y) => x+y');
```

## Methods

Self-recursion example:
 ```js
 var o = {
    gcd : meth( "gcd"
                , (that, a, b) => a > b  ?  mret( that.mself, a-b, b )
                :                 a < b  ?  mret( that.mself, b-a, a )
                :                 a
              )
};
console.log( o.gcd( 2*3*5*17, 3*5*19 ) );  // 15 (3*5)
```

No need for `groupkey` here. Moreover, instead of:
```js
mfun( (a,b,c) => ... )
```
use:
```js
meth( "methodname", (that,a,b,c) => ... )
```
 * `"methodname"` MUST be the name of the method,
 * The first parameter MUST be `that`,
 * Inside the method, you MUST use `that` (and not `this`). Reason: `.bind()` slower in Firefox 60.
 * Use `that.` in the `mret` calls, as in:
```js
return mret( that.mself, ...)
```
or
```js
return mret( that.otherMethod, ... )
```

The `mret( that.<methodName> )` call syntax
 * makes clear we are calling a *method*, not just a simple function,
 * AND permits easy debugging through `methD`.
 
## Methods: Mutual recursion example
```js
var o = {
    isOdd : meth( "isOdd"
                  , (that, n) => n < 0  ?  mret( that.mself, -n )
                  :            n === 0  ?  false
                  :            mret( that.isEven, n-1 )
                )
    , isEven : meth( "isEven"
                     , (that, n) => n < 0  ?  mret( that.mself, -n )
                     :            n === 0  ?  true
                     :            mret( that.isOdd, n-1 )
                   )
};
console.log( o.isOdd( 84327681 ) );  // true (no call stack issue)
console.log( o.isEven( 84327681 ) ); // false (no call stack issue)
```

## Prototype methods

Pretty much the same as above.

```js
function A() {}
A.prototype.isOdd = meth( "isOdd"
                          , (that, n) => n < 0  ?  mret( that.mself, -n )
                          :            n === 0  ?  false
                          :            mret( that.isEven, n-1 )
                        );
A.prototype.isEven = meth( "isEven"
                           , (that, n) => n < 0  ?  mret( that.mself, -n )
                           :            n === 0  ?  true
                           :            mret( that.isOdd, n-1 )
                         );
var o = new A;
console.log( o.isOdd( 84327681 ) );  // true (no call stack issue)
console.log( o.isEven( 84327681 ) ); // false (no call stack issue)
```

## Speed test

The higher, the better. 100.0 is the highest in each row, (2.6) is a
standard deviation, and [9.34e8] is the absolute speed in iterations
per second.

| Browser     | isOdd_mfun |  isOdd_meth | isOdd_metaret | isOdd_tailtramp |
| :---        |       ---: |        ---: |          ---: |            ---: |
| Firefox 60  | 95.5 (2.6) | 100.0 (1.4) |    81.2 (0.2) |      0.1 (<0.1) |
|             |  [9.34e+8] |   [9.78e+8] |     [7.93e+8] |       [1.25e+6] |
| ----        |       ---- |        ---- |          ---- |            ---- |
| Chromium 66 | 98.5 (0.3) | 100.0 (4.9) |    52.0 (0.1) |      0.7 (<0.1) |
|             |  [8.87e+8] |   [9.00e+8] |     [4.68e+8] |       [6.12e+6] |
| ----        |       ---- |        ---- |          ---- |            ---- |
| Chrome 67   | 99.8 (0.8) | 100.0 (0.3) |    62.2 (0.2) |      0.8 (<0.1) |
|             |  [7.49e+8] |   [7.51e+8] |     [4.67e+8] |       [6.18e+6] |

 * `isOdd_mfun` and `isOdd_meth`: Proposed "explicit" approach. Uses standard JavaScript.
 * `isOdd_metaret` Another "explicit" approach ([2013](http://glat.info/js.metaret/)). Extends JavaScript with new keywords.
 * `isOdd_tailtramp`: The fastest trampoline implementation that I could find.

For more details, explanations, and run this test in your browser,
either open the [live instance](http://glat.info/fext/) or open the
[./index.html](./index.html) file here.

## Browser support

Modern browsers, and IE11, as of June 2018.

## Unit tests

Either in the browser ([live instance](http://glat.info/fext/)) or in the command-line (e.g. [Nashorn](https://github.com/glathoud/fext/tree/master/nashorn)).

## An example: `sortedSearch`

Code: [lib/sorted_search.js](lib/sorted_search.js)

Tests: [lib/sorted_search_unittest.js](lib/sorted_search_unittest.js)

The code in that example shows an issue when having to pass too many
parameters around: the code contains 5 times the same list of
parameters, as in the code excerpt:

```js

var improveFirst = mfun( improveFirst )
,   improveLast  = mfun( improveFirst, improveLast )
;   

function sortedSearch(sortedArray, x, /*?fun?*/less, /*?fun?*/equal)
{
   // ...
   return improveFirst(
       sortedArray, x, less, equal, isFirstFound, isLastFound
       , first_found, last_found, i, j, imax, jmin
   );     
}

function improveFirst(
    sortedArray, x, less, equal, isFirstFound, isLastFound
    , first_found, last_found, i, j, imax, jmin
)
{
    // ...

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
    // ...

    return mret(
        improveFirst
        , sortedArray, x, less, equal, isFirstFound, isLastFound
        , first_found, last_found, i, j, imax, jmin
    );
}

```

The straightforward answer to this issue would be to put all
parameters in an object, but this leads to a performance degradation
(see "Performance cost of passing parameters through an object"
further below).

An alternative is to declare the parameters only once, use closure
and `eval` so that the generated code has access to the parameters
through the closure.

For a complete example see:

Code: [lib/sorted_search_closure.js](lib/sorted_search_closure.js)

Tests: [lib/sorted_search_closure_unittest.js](lib/sorted_search_closure_unittest.js)

Excerpt:

```js

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
    improveFirst = eval( improveFirst.getEvalImpl() );
    improveLast  = eval( improveLast.getEvalImpl() );
    
    var first_found
    ,    last_found
    ,             i
    ,             j
    ,          imax
    ,          jmin
    ;
    var sortedArray, x, less, equal;
    
    function sortedSearchClosure
    (in_sortedArray, in_x, /*?fun?*/in_less, /*?fun?*/in_equal)
    /*
      In a sorted array, search for first & last occurences of `x`.
      
      If `x` found, return `[ first_index, last_index ]` (integers).
      
      If `x` not found, return `null`.
    */
    {
        // ...
        
        return improveFirst();
    }

    function improveFirst()
    {
        // ...

        return mret( improveLast );
    }

    function improveLast()
    {
        // ...
        return mret( improveFirst );
    }
```

## Performance cost of passing parameters through an object

To measure the extra overhead of wrapping parameters inside an
object, we use the isOdd/isEven case, since each function does very
little in itself. First the results, then the detailed
implementations.

| Browser     | isOdd_mfun  | isOdd_mfun_obj | isOdd_mfun_obj_inplace |
| :---        | ---:        | ---:           | ---:                   |
| Firefox 60  | 89.0 (5.4)  | 24.8 (1.6)     | 19.3 (0.3)             |
|             | [8.02e+8]   | [2.24e+8]      | [1.74e+8]              |
| ----        | ----        | ----           | ----                   |
| Chromium 66 | 100.0 (2.3) | 47.9 (0.7)     | 87.6 (0.8)             |
|             | [8.35e+8]   | [4.00e+8]      | [7.31e+8]              |


| Browser     | isOdd_meth | isOdd_meth_obj | isOdd_meth_obj_inplace |
| :---        | ---:       | ---:           | ---:                   |
| Firefox 60  | 94.0 (2.1) | 26.3 (0.5)     | 18.7 (0.5)             |
|             | [8.47e+8]  | [2.37e+8]      | [1.69e+8]              |
| ----        | ----       | ----           | ----                   |
| Chromium 66 | 99.2 (1.7) | 45.6 (0.2)     | 87.9 (0.9)             |
|             | [8.28e+8]  | [3.80e+8]      | [7.34e+8]              |

To obtain the best performance, it is preferable to pass parameters
separately: `isOdd_mfun` and `isOdd_meth`. If there are too many
parameters, one can use closure, see `sortedSearchClosure` just
above.

### `*_obj` implementations:

For the full details, see the `*_obj` functions in
[test/fext_speedtest.js](test/fext_speedtest.js)

Excerpt:
```js
function isOdd_mfun_obj( niter )
{
    // The default `namespacekey` is the returned
    // function `var isOdd` in this case.
    var isOdd = mfun( function isOdd( o ) {
        let n = o.n;
        if (n > 0)
        {
            o = { n : n-1 };
            return mret( isEven, o );
        }
        else if (n < 0)
        {
            o = { n : -n };
            return mret( mself, o );
        }
        else
        {
            return false;                
        }
    })

    ,  isEven = mfun( isOdd, function isEven( o ) {
        let n = o.n;
        if (n > 0)
        {
            o = { n : n-1 };
            return mret( isOdd, o );
        }
        else if (n < 0)
        {
            o = { n : -n };
            return mret( mself, o );
        }
        else
        {
            return true;
        }
    })
    ;
    // Sanity check
    isOdd_isEven_check( isOdd, isEven, function (n) { return {n:n}; } );
    
    var result = isOdd( { n : niter } ); // <<< speedtest

    // Sanity check
    result === (niter % 2 !== 0)  ||  null.bug;
}

function isOdd_mfun_obj_inplace( niter )
{
    // The default `namespacekey` is the returned
    // function `var isOdd` in this case.
    var isOdd = mfun( function isOdd( o ) {
        let n = o.n;
        if (n > 0)
        {
            o.n--;
            return mret( isEven, o );
        }
        else if (n < 0)
        {
            o.n = -n;
            return mret( mself, o );
        }
        else
        {
            return false;                
        }
    })

    ,  isEven = mfun( isOdd, function isEven( o ) {
        let n = o.n;
        if (n > 0)
        {
            o.n--;
            return mret( isOdd, o );
        }
        else if (n < 0)
        {
            o.n = -n;
            return mret( mself, o );
        }
        else
        {
            return true;
        }
    })
    ;
    // Sanity check
    isOdd_isEven_check( isOdd, isEven, function (n) { return {n:n}; } );
    
    var result = isOdd( { n : niter } ); // <<< speedtest

    // Sanity check
    result === (niter % 2 !== 0)  ||  null.bug;
}
```