## fext.js
Fast explicit tail calls in JavaScript

Classically tail calls are automatically optimized (LISP...) . In JavaScript, 
programmers may well not know which "return" statements are optimized by the engine, and which not.
This would lead to practical issues when debugging/optimizing ([2009](http://neopythonic.blogspot.de/2009/04/final-words-on-tail-calls.html)).

Another possibility is to **explicitly mark the tail calls that will be optimized**. Several JavaScript extensions were proposed that add new keywords to the language ([2014](http://glat.info/mlocjs2014/index.html#7), [2016](https://github.com/tc39/proposal-ptc-syntax)).

As of 2018, progress is "slow" and the Chrome team has already *removed* the self-recursion optimization from its JavaScript engine.

It turns out that we can do this with today's JavaScript, without extending the language. **fext.js** demonstrates this.

## fext.js: Getting started

Two entry points:
 * `mfun(...)` returns an optimized function,
 * `meth(...)` returns an optimized method.
 
 In both cases, use `return mret(<expr>)` to mark the tail calls to be optimized, for example:
 
 ```js
 var gcd = mfun(
        (a, b) => a > b  ?  mret( self, a-b, b )
            :     a < b  ?  mret( self, b-a, a )
            :     a
 );
 console.log( gcd( 2*3*5*17, 3*5*19 ) );  // 15 (3*5)
 ```
 
 Mutual recursion is supported:
 ```js
 var namespacekey = {}  // whatever object

,   isOdd = mfun( namespacekey
                  , 'isOdd'
                  , n => n < 0    ?  mret( self, -n )
                  :      n === 0  ?  false
                  :      mret( isEven, n-1 )
                )
,  isEven = mfun( namespacekey
                  , 'isEven'
                  , n => n < 0    ?  mret( self, -n )
                  :      n === 0  ?  true
                  :      mret( isOdd, n-1 )
                )
;
console.log( isOdd( 84327681 ) );  // true (no call stack issue)
```
 
