#!/usr/bin/env rdmd
// -*- coding: utf-8 -*-

import std.datetime.stopwatch : benchmark, StopWatch;
import std.stdio;

import is0mod3_inline_body_false_expansion_0;
import is0mod3_inline_body_false_expansion_1;
import is0mod3_inline_body_false_expansion_2;
import is0mod3_inline_body_false_expansion_4;
import is0mod3_unrolled_inline_expansion_0;
import is0mod3_unrolled_inline_expansion_1;
import is0mod3_unrolled_inline_expansion_2;
import is0mod3_unrolled_inline_expansion_4;

enum N = 499999999;
enum BN = 10;  // 1 for a quick test
/*
ldc2 --version
LDC - the LLVM D compiler (1.10.0):
  based on DMD v2.080.1 and LLVM 6.0.0

rm *.o *.bin 2>/dev/null ; ldc2 -O is0mod3*.d d_perf_feas_is0mod3.d  -ofd_perf_feas_is0mod3.bin ; d_perf_feas_is0mod3.bin
N:  499999999
BN: 10

4 secs, 251 ms, 23 μs, and 6 hnsecs
2 secs, 540 ms, 174 μs, and 4 hnsecs
1 sec, 336 ms, 432 μs, and 1 hnsec
1 sec, 445 ms, 874 μs, and 2 hnsecs
6 secs, 491 ms, 906 μs, and 3 hnsecs
3 secs, 601 ms, 190 μs, and 2 hnsecs
2 secs, 539 ms, 847 μs, and 9 hnsecs
1 sec, 690 ms, 821 μs, and 7 hnsecs

---
dmd --version
DMD64 D Compiler v2.080.1

rm *.o *.bin 2>/dev/null ; dmd -O -inline is0mod3*.d d_perf_feas_is0mod3.d  -ofd_perf_feas_is0mod3.bin ; d_perf_feas_is0mod3.bin
N:  499999999
BN: 10

4 secs, 247 ms, 958 μs, and 4 hnsecs
5 secs, 659 ms, 823 μs, and 5 hnsecs
5 secs, 965 ms, 552 μs, and 5 hnsecs
5 secs, 584 ms, 417 μs, and 1 hnsec
15 secs, 193 ms, 198 μs, and 6 hnsecs
12 secs, 805 ms, 843 μs, and 6 hnsecs
12 secs, 253 ms, 73 μs, and 7 hnsecs
14 secs, 509 ms, 495 μs, and 2 hnsecs

*/

void main()
{
  writeln( "N:  ", N );
  writeln( "BN: ", BN );
  
  auto r = benchmark!
    ( wrap!is0mod3_unrolled_inline_expansion_0
      , wrap!is0mod3_unrolled_inline_expansion_1
      , wrap!is0mod3_unrolled_inline_expansion_2
      , wrap!is0mod3_unrolled_inline_expansion_4

      , wrap!is0mod3_inline_body_false_expansion_0
      , wrap!is0mod3_inline_body_false_expansion_1
      , wrap!is0mod3_inline_body_false_expansion_2
      , wrap!is0mod3_inline_body_false_expansion_4

     )( BN );
  writeln;
  foreach (a; r)
    writeln( a );

}


void wrap( alias f, alias n=N )()
{
  assert( true == f( 0 ) );
  assert( false  == f( 1 ) );
  assert( false == f( 2 ) );
  assert( true  == f( 3 ) );

  assert( false  == f( 125 ) );
  assert( true  == f( 126 ) );
  assert( false  == f( 1000 ) );

  assert( false  == f( 10000 ) );
  assert( false  == f( 10001 ) );

  assert( (0 == n % 3) == f( n ) );
}
