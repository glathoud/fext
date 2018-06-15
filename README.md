## fext.js
Fast explicit tail calls in JavaScript

Classically, tail calls are automatically optimized (LISP...) . In JavaScript, 
programmers may well not know which "return" statements are optimized by the engine, and which not.
This would lead to practical issues when debugging/optimizing ([2009](http://neopythonic.blogspot.de/2009/04/final-words-on-tail-calls.html)).

As of 2018, progress is "slow" and the Chrome team has already *removed* the automatic self-recursion optimization from its JavaScript engine.

Another possibility is to **explicitly mark the tail calls that will be optimized**. Several JavaScript extensions were proposed that add new keywords to the language ([2014](http://glat.info/mlocjs2014/index.html#7), [2016](https://github.com/tc39/proposal-ptc-syntax)).

It turns out that we can do this with today's JavaScript, without extending the language. **fext.js** demonstrates this.

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
         (a, b) => a > b  ?  mret( self, a-b, b )
             :     a < b  ?  mret( self, b-a, a )
             :     a
  );
  console.log( gcd( 2*3*5*17, 3*5*19 ) );  // 15 (3*5)
</script>
```
  
 ## Mutual recursion
 
 ```js
 var namespacekey = {}  // whatever object (won't be modified)

,   isOdd = mfun( namespacekey
                  , "isOdd"
                  , n => n < 0    ?  mret( self, -n )
                  :      n === 0  ?  false
                  :      mret( isEven, n-1 )
                )
,  isEven = mfun( namespacekey
                  , "isEven"
                  , n => n < 0    ?  mret( self, -n )
                  :      n === 0  ?  true
                  :      mret( isOdd, n-1 )
                )
;
console.log( isOdd( 84327681 ) );   // true (no call stack issue)
console.log( isEven( 84327681 ) );  // false (no call stack issue)
```
 
`namespacekey` is only used as a key to determine "groups" of function that know each other.

You can conveniently omit `namespacekey`:
```js
// The default `namespacekey` is the returned function
// `var isOdd` in this case
var isOdd = mfun( n => n < 0    ?  mret( self, -n )
                  :    n === 0  ?  false
                  :    mret( isEven, n-1 )
                )
,  isEven = mfun( isOdd
                  , "isEven"
                  , n => n < 0    ?  mret( self, -n )
                  :      n === 0  ?  true
                  :      mret( isOdd, n-1 )
                )
;
console.log( isOdd( 84327681 ) );   // true (no call stack issue)
console.log( isEven( 84327681 ) );  // false (no call stack issue)
```

## Methods

Self-recursion example:
 ```js
 var o = {
    gcd : meth( "gcd"
                , (that, a, b) => a > b  ?  mret( that.self, a-b, b )
                :                 a < b  ?  mret( that.self, b-a, a )
                :                 a
              )
};
console.log( o.gcd( 2*3*5*17, 3*5*19 ) );  // 15 (3*5)
```

No need for `namespacekey` here. Moreover, instead of:
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
return mret( that.self, ...)
```
or
```js
return mret( that.otherMethod, ... )
```

This method call syntax:
 * makes clear we are "mret'ing" another *method*
 * AND permits easy debugging through `methD`.
 
## Methods: Mutual recursion example
```js
var o = {
    isOdd : meth( "isOdd"
                  , (that, n) => n < 0  ?  mret( that.self, -n )
                  :            n === 0  ?  false
                  :            mret( that.isEven, n-1 )
                )
    , isEven : meth( "isEven"
                     , (that, n) => n < 0  ?  mret( that.self, -n )
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
                          , (that, n) => n < 0  ?  mret( that.self, -n )
                          :            n === 0  ?  false
                          :            mret( that.isEven, n-1 )
                        );
A.prototype.isEven = meth( "isEven"
                           , (that, n) => n < 0  ?  mret( that.self, -n )
                           :            n === 0  ?  true
                           :            mret( that.isOdd, n-1 )
                         );
var o = new A;
console.log( o.isOdd( 84327681 ) );  // true (no call stack issue)
console.log( o.isEven( 84327681 ) ); // false (no call stack issue)
```

## Speed test

In the browser: http://glat.info/fext/

## Unit tests

Either in the browser ([live instance](http://glat.info/fext/)) or in the command-line (e.g. [Nashorn](https://github.com/glathoud/fext/tree/master/nashorn)).

## An example: `sortedSearch`

Code: [lib/sorted_search.js](lib/sorted_search.js)

Tests: [lib/sorted_search_unittest.js](lib/sorted_search_unittest.js)
