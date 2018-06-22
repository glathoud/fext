#!/usr/bin/env rdmd

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
$ rm *.o *.bin 2>/dev/null ; dmd -inline is0mod3*.d d_perf_feas_is0mod3.d  -ofd_perf_feas_is0mod3.bin ; d_perf_feas_is0mod3.bin
*/

void main()
{
  writeln( "N:  ", N );
  writeln( "BN: ", BN );
  
  auto r = benchmark!
    ( wrap!is0mod3_inline_body_false_expansion_0
      , wrap!is0mod3_inline_body_false_expansion_1
      , wrap!is0mod3_inline_body_false_expansion_2
      , wrap!is0mod3_inline_body_false_expansion_4
      , wrap!is0mod3_unrolled_inline_expansion_0
      , wrap!is0mod3_unrolled_inline_expansion_1
      , wrap!is0mod3_unrolled_inline_expansion_2
      , wrap!is0mod3_unrolled_inline_expansion_4

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
