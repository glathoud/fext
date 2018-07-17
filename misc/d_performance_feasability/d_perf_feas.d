#!/usr/bin/env rdmd
// -*- coding: utf-8 -*-

import std.datetime.stopwatch : benchmark, StopWatch;
import std.stdio;

enum N = 599999999;
enum BN = 10;  // 1 for a quick test

/*
ldc2 --version
LDC - the LLVM D compiler (1.10.0):
  based on DMD v2.080.1 and LLVM 6.0.0

rm *.o *.bin 2>/dev/null ; ldc2 -O d_perf_feas.d  -ofd_perf_feas.bin ; d_perf_feas.bin
N:  599999999
BN: 10

2 secs, 326 ms, 428 μs, and 9 hnsecs
384 ms, 113 μs, and 8 hnsecs
1 sec, 172 ms, 698 μs, and 8 hnsecs
785 ms, 708 μs, and 5 hnsecs

7 secs, 751 ms, 360 μs, and 4 hnsecs
2 secs, 492 ms, 150 μs, and 3 hnsecs
2 secs, 627 ms, 762 μs, and 8 hnsecs
4 secs, 231 ms, 4 μs, and 9 hnsecs
7 secs, 541 ms, 930 μs, and 1 hnsec
2 secs, 481 ms, 479 μs, and 9 hnsecs
2 secs, 630 ms, 64 μs, and 5 hnsecs
3 secs, 823 ms, 198 μs, and 3 hnsecs

---
dmd --version
DMD64 D Compiler v2.080.1

rm *.o *.bin 2>/dev/null ; dmd -O -inline d_perf_feas.d  -ofd_perf_feas.bin ; d_perf_feas.bin

N:  599999999
BN: 10

6 secs, 870 ms, 129 μs, and 5 hnsecs
1 sec, 614 ms, 118 μs, and 2 hnsecs
1 sec, 816 ms, 643 μs, and 2 hnsecs
1 sec, 529 ms, and 900 μs

14 secs, 690 ms, 307 μs, and 6 hnsecs
9 secs, 705 ms, 352 μs, and 9 hnsecs
9 secs, 491 ms, 455 μs, and 3 hnsecs
9 secs, 573 ms, 716 μs, and 2 hnsecs
9 secs, 501 ms, 403 μs, and 9 hnsecs
10 secs, 772 ms, 211 μs, and 6 hnsecs
11 secs, 18 ms, 172 μs, and 7 hnsecs
11 secs, 468 ms, and 666 μs

*/

void main()
{
  writeln( "N:  ", N );
  writeln( "BN: ", BN );
  
  auto r = benchmark!
    ( wrap!isOdd_unrolled_inline
      , wrap!isOdd_unrolled_inline_expansion_3
      , wrap!isOdd_unrolled_inline_expansion_2
      , wrap!isOdd_unrolled_inline_expansion_1
      )( BN );
  writeln;
  foreach (a; r)
    writeln( a );


  auto r_subfun = benchmark!
    ( wrap!isOdd_unrolled_subfun
      , wrap!isOdd_unrolled_subfun_pragma_inline_2_expansion_3
      , wrap!isOdd_unrolled_subfun_pragma_inline_2_expansion_2
      , wrap!isOdd_unrolled_subfun_pragma_inline_2_expansion_1
      , wrap!isOdd_unrolled_subfun_pragma_inline_2
      , wrap!isOdd_unrolled_subfun_expansion_3
      , wrap!isOdd_unrolled_subfun_expansion_2
      , wrap!isOdd_unrolled_subfun_expansion_1

      // Could not inline function
      // , wrap!isOdd_unrolled_subfun_pragma_inline
      )( BN );
  writeln;
  foreach (a; r_subfun)
    writeln( a );
}

void wrap( alias f, alias n=N )()
{
  assert( false == f( 0 ) );
  assert( true  == f( 1 ) );
  assert( false == f( 2 ) );
  assert( true  == f( 3 ) );

  assert( true  == f( 125 ) );
  assert( false  == f( 126 ) );
  assert( false  == f( 1000 ) );

  assert( false  == f( 10000 ) );
  assert( true  == f( 10001 ) );

  assert( (0 != n % 2) == f( n ) );
}

bool isOdd_unrolled_inline( uint n )
{
  int case_i = 0;
  while( true ) {
    switch( case_i ) {
    case 0:
      if (n < 1) return false;
      n--;
      case_i = 1;
      continue;

    case 1:
      if (n < 1) return true;
      n--;
      case_i = 0;
      continue;
    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }
}


bool isOdd_unrolled_inline_expansion_1( uint n )
{
  int case_i = 0;
  while( true ) {
    switch( case_i ) {
    case 0:
      if (n < 1) return false;
      n--;
      case_i = 1;

      if (n < 1) return true;
      n--;
      case_i = 0;
      
      continue;

    case 1:
      if (n < 1) return true;
      n--;
      case_i = 0;

      if (n < 1) return false;
      n--;
      case_i = 1;

      continue;
    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }
}


bool isOdd_unrolled_inline_expansion_2( uint n )
{
  int case_i = 0;
  while( true ) {
    switch( case_i ) {
    case 0:
      if (n < 1) return false;
      n--;
      case_i = 1;

      if (n < 1) return true;
      n--;
      case_i = 0;
      
      if (n < 1) return false;
      n--;
      case_i = 1;

      continue;

    case 1:
      if (n < 1) return true;
      n--;
      case_i = 0;

      if (n < 1) return false;
      n--;
      case_i = 1;

      if (n < 1) return true;
      n--;
      case_i = 0;

      continue;
    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }
}



bool isOdd_unrolled_inline_expansion_3( uint n )
{
  int case_i = 0;
  while( true ) {
    switch( case_i ) {
    case 0:
      if (n < 1) return false;
      n--;
      case_i = 1;

      if (n < 1) return true;
      n--;
      case_i = 0;
      
      if (n < 1) return false;
      n--;
      case_i = 1;

      if (n < 1) return true;
      n--;
      case_i = 0;
      
      continue;

    case 1:
      if (n < 1) return true;
      n--;
      case_i = 0;

      if (n < 1) return false;
      n--;
      case_i = 1;

      if (n < 1) return true;
      n--;
      case_i = 0;

      if (n < 1) return false;
      n--;
      case_i = 1;

      continue;
    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }
}



bool isOdd_unrolled_subfun_expansion_3( uint n )
{
  int case_i = 0;
  bool ret;

  void isOdd_impl()
  {
    if (n < 1)
      {
        case_i = -1; ret = false; return;
      }

    n = n-1;
    case_i = 1;
  }

  void isEven_impl()
  {
    if (n < 1)
      {
        case_i = -1; ret = true; return;
      }

    n = n-1;
    case_i = 0;
  }


  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl();
      if (case_i == -1) return ret;
      isEven_impl();
      if (case_i == -1) return ret;
      isOdd_impl();
      if (case_i == -1) return ret;
      isEven_impl();
      continue;

    case 1:
      isEven_impl();
      if (case_i == -1) return ret;
      isOdd_impl();
      if (case_i == -1) return ret;
      isEven_impl();
      if (case_i == -1) return ret;
      isOdd_impl();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}



bool isOdd_unrolled_subfun_expansion_2( uint n )
{
  int case_i = 0;
  bool ret;

  void isOdd_impl()
  {
    if (n < 1)
      {
        case_i = -1; ret = false; return;
      }

    n = n-1;
    case_i = 1;
  }

  void isEven_impl()
  {
    if (n < 1)
      {
        case_i = -1; ret = true; return;
      }

    n = n-1;
    case_i = 0;
  }


  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl();
      if (case_i == -1) return ret;
      isEven_impl();
      if (case_i == -1) return ret;
      isOdd_impl();
      continue;

    case 1:
      isEven_impl();
      if (case_i == -1) return ret;
      isOdd_impl();
      if (case_i == -1) return ret;
      isEven_impl();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}



bool isOdd_unrolled_subfun_expansion_1( uint n )
{
  int case_i = 0;
  bool ret;

  void isOdd_impl()
  {
    if (n < 1)
      {
        case_i = -1; ret = false; return;
      }

    n = n-1;
    case_i = 1;
  }

  void isEven_impl()
  {
    if (n < 1)
      {
        case_i = -1; ret = true; return;
      }

    n = n-1;
    case_i = 0;
  }


  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl();
      if (case_i == -1) return ret;
      isEven_impl();
      continue;

    case 1:
      isEven_impl();
      if (case_i == -1) return ret;
      isOdd_impl();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}



bool isOdd_unrolled_subfun( uint n )
{
  int case_i = 0;
  bool ret;

  void isOdd_impl()
  {
    if (n < 1)
      {
        case_i = -1; ret = false; return;
      }

    n = n-1;
    case_i = 1;
  }

  void isEven_impl()
  {
    if (n < 1)
      {
        case_i = -1; ret = true; return;
      }

    n = n-1;
    case_i = 0;
  }


  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl();
      continue;

    case 1:
      isEven_impl();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}

/*
bool isOdd_unrolled_subfun_pragma_inline( uint n )
// Here inline does not work, probably because of `return`
{
  int case_i = 0;
  bool ret;

  void isOdd_impl()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = false; return;
      }
    
    n = n-1;
    case_i = 1;
  }

  void isEven_impl()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = true; return;
      }

    n = n-1;
    case_i = 0;
  }
  

  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl();
      continue;

    case 1:
      isEven_impl();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}
*/

bool isOdd_unrolled_subfun_pragma_inline_2( uint n )
{
  int case_i = 0;
  bool ret;

  void isOdd_impl_2()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = false;
      }
    else
      {
        n = n-1;
        case_i = 1;
      }
  }

  void isEven_impl_2()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = true;
      }
    else
      {
        n = n-1;
        case_i = 0;
      }
  }
  

  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl_2();
      continue;

    case 1:
      isEven_impl_2();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}




bool isOdd_unrolled_subfun_pragma_inline_2_expansion_1( uint n )
{
  int case_i = 0;
  bool ret;

  void isOdd_impl_2()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = false;
      }
    else
      {
        n = n-1;
        case_i = 1;
      }
  }

  void isEven_impl_2()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = true;
      }
    else
      {
        n = n-1;
        case_i = 0;
      }
  }
  

  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl_2();
      if (case_i == -1) return ret;
      isEven_impl_2();
      continue;

    case 1:
      isEven_impl_2();
      if (case_i == -1) return ret;
      isOdd_impl_2();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}



bool isOdd_unrolled_subfun_pragma_inline_2_expansion_2( uint n )
{
  int case_i = 0;
  bool ret;

  void isOdd_impl_2()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = false;
      }
    else
      {
        n = n-1;
        case_i = 1;
      }
  }

  void isEven_impl_2()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = true;
      }
    else
      {
        n = n-1;
        case_i = 0;
      }
  }
  

  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl_2();
      if (case_i == -1) return ret;
      isEven_impl_2();
      if (case_i == -1) return ret;
      isOdd_impl_2();
      continue;

    case 1:
      isEven_impl_2();
      if (case_i == -1) return ret;
      isOdd_impl_2();
      if (case_i == -1) return ret;
      isEven_impl_2();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}


bool isOdd_unrolled_subfun_pragma_inline_2_expansion_3( uint n )
{
  int case_i = 0;
  bool ret;

  void isOdd_impl_2()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = false;
      }
    else
      {
        n = n-1;
        case_i = 1;
      }
  }

  void isEven_impl_2()
  {
    pragma( inline, true );

    if (n < 1)
      {
        case_i = -1; ret = true;
      }
    else
      {
        n = n-1;
        case_i = 0;
      }
  }
  

  while( true ) {
    switch( case_i ) {
    case 0:
      isOdd_impl_2();
      if (case_i == -1) return ret;
      isEven_impl_2();
      if (case_i == -1) return ret;
      isOdd_impl_2();
      if (case_i == -1) return ret;
      isEven_impl_2();
      continue;

    case 1:
      isEven_impl_2();
      if (case_i == -1) return ret;
      isOdd_impl_2();
      if (case_i == -1) return ret;
      isEven_impl_2();
      if (case_i == -1) return ret;
      isOdd_impl_2();
      continue;

    case -1:
      return ret;

    default:
      assert( false, "bug" );
    }
    assert( false, "bug" );
  }

}
