## fext.js
Fast explicit tail calls in JavaScript

Classically (LISP etc.) tail calls are automatically optimized. In JavaScript, 
programmers may well not know which "return" statements are optimized by the engine, and which not.
This would lead to practical issues when debugging/optimizing ([2009](http://neopythonic.blogspot.de/2009/04/final-words-on-tail-calls.html)).

Another possibility is to **explicitly mark the tail calls that will be optimized**. Several JavaScript extensions were proposed that add new keywords to the language ([2014](http://glat.info/mlocjs2014/index.html#7), [2016](https://github.com/tc39/proposal-ptc-syntax)).

As of 2018, progress is "slow" and the Chrome team has already *removed* the self-recursion optimization from its JavaScript engine.

Can we do this without having to extend the language?
