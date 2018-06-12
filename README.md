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
 
 ```
 
 Mutual recursion is supported.
 
