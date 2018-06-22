#!/usr/bin/env rdmd

import std.datetime.stopwatch : benchmark, StopWatch;
import std.stdio;

enum N = 599999999;
enum BN = 10;  // 1 for a quick test

/*
2018-06-22 

$ rm *.o *.bin 2>/dev/null ; dmd -inline d_perf_feas.d  -ofd_perf_feas.bin ; d_perf_feas.bin
N:  599999999
BN: 10

13 secs, 49 ms, 879 μs, and 8 hnsecs
14 secs, 18 ms, 433 μs, and 8 hnsecs
13 secs, 805 ms, 68 μs, and 1 hnsec
14 secs, 637 ms, 992 μs, and 4 hnsecs

21 secs, 999 ms, and 231 μs
13 secs, 438 ms, 473 μs, and 4 hnsecs
13 secs, 347 ms, 329 μs, and 4 hnsecs
13 secs, 464 ms, 620 μs, and 9 hnsecs
13 secs, 625 ms, 338 μs, and 7 hnsecs
17 secs, 264 ms, 555 μs, and 3 hnsecs
18 secs, 267 ms, 21 μs, and 3 hnsecs
22 secs, 15 ms, 540 μs, and 3 hnsecs


$ rm *.o *.bin 2>/dev/null ; dmd -inline d_perf_feas.d  -ofd_perf_feas.bin ; d_perf_feas.bin
N:  599999999
BN: 1

1 sec, 331 ms, 661 μs, and 5 hnsecs
1 sec, 398 ms, 611 μs, and 1 hnsec
1 sec, 379 ms, 22 μs, and 9 hnsecs
1 sec, 458 ms, and 660 μs

2 secs, 208 ms, 215 μs, and 6 hnsecs
1 sec, 345 ms, 151 μs, and 7 hnsecs
1 sec, 338 ms, 705 μs, and 9 hnsecs
1 sec, 349 ms, 797 μs, and 2 hnsecs
1 sec, 349 ms, 77 μs, and 9 hnsecs
1 sec, 729 ms, 860 μs, and 2 hnsecs
1 sec, 836 ms, 602 μs, and 3 hnsecs
2 secs, 199 ms, 169 μs, and 6 hnsecs

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
