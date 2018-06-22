bool is0mod3_unrolled_inline_expansion_1( int x )
{
  int __fext_case_i__ = 0;
  bool __fext_ret__;
  int  __fext_arg_x__;

 __fext_main_loop__: for (;;)
    {
      switch( __fext_case_i__)
        {
        case 0: __fext_inline_loop_1__: for(;;) {
            {
              /*return x == 0  ?  true
                :  x == 1  ?  false
                :  x == 2  ?  false
                :  x > 2  ?  mret( is2mod3, x-1 )
                :  x < 0  ?  mret( is0mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return true  ;
                    }
                    break __fext_inline_loop_1__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_1__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_1__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=1, x = x-1)  ;
                    }
                    break __fext_inline_loop_1__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    break __fext_inline_loop_1__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  break __fext_inline_loop_1__;

                }
              }
            }
          }

          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 0) {
            {
              /*return x == 0  ?  true
                :  x == 1  ?  false
                :  x == 2  ?  false
                :  x > 2  ?  mret( is2mod3, x-1 )
                :  x < 0  ?  mret( is0mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return true  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=1, x = x-1)  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    continue __fext_main_loop__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  continue __fext_main_loop__;

                }
              }
            }
          }
          else if (__fext_case_i__ == 1) {
            {
              /*return x == 0  ?  false
                :  x == 1  ?  false
                :  x == 2  ?  true
                :  x > 2    ?  mret( is1mod3, x-1 )
                :  x < 0    ?  mret( is0mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 2)
                  {
                    {
                      return true  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=2, x = x-1)  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x < 0)
                  {
                    {
                      (__fext_case_i__=0, x = x+3)  ;
                    }
                    continue __fext_main_loop__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  continue __fext_main_loop__;

                }
              }
            }
          }
          else {
            {
              /*return x == 0  ?  false
                :  x == 1  ?  true
                :  x == 2  ?  false
                :  x > 2  ?  mret( is0mod3, x-1 )
                :  x < 0  ?  mret( is1mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 1)
                  {
                    {
                      return true  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=0, x = x-1)  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    continue __fext_main_loop__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  continue __fext_main_loop__;

                }
              }
            }
          } continue __fext_main_loop__;

        case 1: __fext_inline_loop_5__: for(;;) {
            {
              /*return x == 0  ?  false
                :  x == 1  ?  false
                :  x == 2  ?  true
                :  x > 2    ?  mret( is1mod3, x-1 )
                :  x < 0    ?  mret( is0mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_5__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_5__;

                  }
                if (x == 2)
                  {
                    {
                      return true  ;
                    }
                    break __fext_inline_loop_5__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=2, x = x-1)  ;
                    }
                    break __fext_inline_loop_5__;

                  }
                if (x < 0)
                  {
                    {
                      (__fext_case_i__=0, x = x+3)  ;
                    }
                    break __fext_inline_loop_5__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  break __fext_inline_loop_5__;

                }
              }
            }
          }

          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 1) {
            {
              /*return x == 0  ?  false
                :  x == 1  ?  false
                :  x == 2  ?  true
                :  x > 2    ?  mret( is1mod3, x-1 )
                :  x < 0    ?  mret( is0mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 2)
                  {
                    {
                      return true  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=2, x = x-1)  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x < 0)
                  {
                    {
                      (__fext_case_i__=0, x = x+3)  ;
                    }
                    continue __fext_main_loop__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  continue __fext_main_loop__;

                }
              }
            }
          }
          else if (__fext_case_i__ == 2) {
            {
              /*return x == 0  ?  false
                :  x == 1  ?  true
                :  x == 2  ?  false
                :  x > 2  ?  mret( is0mod3, x-1 )
                :  x < 0  ?  mret( is1mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 1)
                  {
                    {
                      return true  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=0, x = x-1)  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    continue __fext_main_loop__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  continue __fext_main_loop__;

                }
              }
            }
          }
          else {
            {
              /*return x == 0  ?  true
                :  x == 1  ?  false
                :  x == 2  ?  false
                :  x > 2  ?  mret( is2mod3, x-1 )
                :  x < 0  ?  mret( is0mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return true  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=1, x = x-1)  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    continue __fext_main_loop__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  continue __fext_main_loop__;

                }
              }
            }
          } continue __fext_main_loop__;

        case 2: __fext_inline_loop_9__: for(;;) {
            {
              /*return x == 0  ?  false
                :  x == 1  ?  true
                :  x == 2  ?  false
                :  x > 2  ?  mret( is0mod3, x-1 )
                :  x < 0  ?  mret( is1mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_9__;

                  }
                if (x == 1)
                  {
                    {
                      return true  ;
                    }
                    break __fext_inline_loop_9__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_9__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=0, x = x-1)  ;
                    }
                    break __fext_inline_loop_9__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    break __fext_inline_loop_9__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  break __fext_inline_loop_9__;

                }
              }
            }
          }

          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 2) {
            {
              /*return x == 0  ?  false
                :  x == 1  ?  true
                :  x == 2  ?  false
                :  x > 2  ?  mret( is0mod3, x-1 )
                :  x < 0  ?  mret( is1mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 1)
                  {
                    {
                      return true  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=0, x = x-1)  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    continue __fext_main_loop__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  continue __fext_main_loop__;

                }
              }
            }
          }
          else {
            {
              /*return x == 0  ?  true
                :  x == 1  ?  false
                :  x == 2  ?  false
                :  x > 2  ?  mret( is2mod3, x-1 )
                :  x < 0  ?  mret( is0mod3, x+3 )
                :  null.invalid_x;*/
              {if (x == 0)
                  {
                    {
                      return true  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=1, x = x-1)  ;
                    }
                    continue __fext_main_loop__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    continue __fext_main_loop__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  continue __fext_main_loop__;

                }
              }
            }
          } continue __fext_main_loop__;

        default: return __fext_ret__;
        }
    }

  
  assert(false,"bug");
}
