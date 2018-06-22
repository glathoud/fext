bool is0mod3_unrolled_inline_expansion_2( int x )
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
          __fext_inline_loop_2__: for(;;) {
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
                      break __fext_inline_loop_2__;

                    }
                  if (x == 1)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_2__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_2__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=1, x = x-1)  ;
                      }
                      break __fext_inline_loop_2__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_2__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_2__;

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
            }
          }
          else if (__fext_case_i__ == 1) {
          __fext_inline_loop_6__: for(;;) {
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
                      break __fext_inline_loop_6__;

                    }
                  if (x == 1)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_6__;

                    }
                  if (x == 2)
                    {
                      {
                        return true  ;
                      }
                      break __fext_inline_loop_6__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=2, x = x-1)  ;
                      }
                      break __fext_inline_loop_6__;

                    }
                  if (x < 0)
                    {
                      {
                        (__fext_case_i__=0, x = x+3)  ;
                      }
                      break __fext_inline_loop_6__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_6__;

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
            }
          }
          else {
          __fext_inline_loop_10__: for(;;) {
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
                      break __fext_inline_loop_10__;

                    }
                  if (x == 1)
                    {
                      {
                        return true  ;
                      }
                      break __fext_inline_loop_10__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_10__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=0, x = x-1)  ;
                      }
                      break __fext_inline_loop_10__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_10__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_10__;

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
            }
          } continue __fext_main_loop__;

        case 1: __fext_inline_loop_13__: for(;;) {
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
                    break __fext_inline_loop_13__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_13__;

                  }
                if (x == 2)
                  {
                    {
                      return true  ;
                    }
                    break __fext_inline_loop_13__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=2, x = x-1)  ;
                    }
                    break __fext_inline_loop_13__;

                  }
                if (x < 0)
                  {
                    {
                      (__fext_case_i__=0, x = x+3)  ;
                    }
                    break __fext_inline_loop_13__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  break __fext_inline_loop_13__;

                }
              }
            }
          }

          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 1) {
          __fext_inline_loop_14__: for(;;) {
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
                      break __fext_inline_loop_14__;

                    }
                  if (x == 1)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_14__;

                    }
                  if (x == 2)
                    {
                      {
                        return true  ;
                      }
                      break __fext_inline_loop_14__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=2, x = x-1)  ;
                      }
                      break __fext_inline_loop_14__;

                    }
                  if (x < 0)
                    {
                      {
                        (__fext_case_i__=0, x = x+3)  ;
                      }
                      break __fext_inline_loop_14__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_14__;

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
            }
          }
          else if (__fext_case_i__ == 2) {
          __fext_inline_loop_18__: for(;;) {
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
                      break __fext_inline_loop_18__;

                    }
                  if (x == 1)
                    {
                      {
                        return true  ;
                      }
                      break __fext_inline_loop_18__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_18__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=0, x = x-1)  ;
                      }
                      break __fext_inline_loop_18__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_18__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_18__;

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
            }
          }
          else {
          __fext_inline_loop_21__: for(;;) {
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
                      break __fext_inline_loop_21__;

                    }
                  if (x == 1)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_21__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_21__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=1, x = x-1)  ;
                      }
                      break __fext_inline_loop_21__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_21__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_21__;

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
            }
          } continue __fext_main_loop__;

        case 2: __fext_inline_loop_25__: for(;;) {
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
                    break __fext_inline_loop_25__;

                  }
                if (x == 1)
                  {
                    {
                      return true  ;
                    }
                    break __fext_inline_loop_25__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_25__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=0, x = x-1)  ;
                    }
                    break __fext_inline_loop_25__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    break __fext_inline_loop_25__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  break __fext_inline_loop_25__;

                }
              }
            }
          }

          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 2) {
          __fext_inline_loop_26__: for(;;) {
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
                      break __fext_inline_loop_26__;

                    }
                  if (x == 1)
                    {
                      {
                        return true  ;
                      }
                      break __fext_inline_loop_26__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_26__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=0, x = x-1)  ;
                      }
                      break __fext_inline_loop_26__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_26__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_26__;

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
            }
          }
          else {
          __fext_inline_loop_29__: for(;;) {
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
                      break __fext_inline_loop_29__;

                    }
                  if (x == 1)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_29__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_29__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=1, x = x-1)  ;
                      }
                      break __fext_inline_loop_29__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_29__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_29__;

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
            }
          } continue __fext_main_loop__;

        default: return __fext_ret__;
        }
    }

  assert(false,"bug");
}
