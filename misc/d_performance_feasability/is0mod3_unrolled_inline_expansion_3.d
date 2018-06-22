bool is0mod3_unrolled_inline_expansion_3( int x )
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
            __fext_inline_loop_3__: for(;;) {
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
                        break __fext_inline_loop_3__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_3__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_3__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=1, x = x-1)  ;
                        }
                        break __fext_inline_loop_3__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_3__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_3__;

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
            __fext_inline_loop_7__: for(;;) {
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
                        break __fext_inline_loop_7__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_7__;

                      }
                    if (x == 2)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_7__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=2, x = x-1)  ;
                        }
                        break __fext_inline_loop_7__;

                      }
                    if (x < 0)
                      {
                        {
                          (__fext_case_i__=0, x = x+3)  ;
                        }
                        break __fext_inline_loop_7__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_7__;

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
            __fext_inline_loop_11__: for(;;) {
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
                        break __fext_inline_loop_11__;

                      }
                    if (x == 1)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_11__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_11__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=0, x = x-1)  ;
                        }
                        break __fext_inline_loop_11__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_11__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_11__;

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
          }
          else if (__fext_case_i__ == 1) {
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
            __fext_inline_loop_15__: for(;;) {
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
                        break __fext_inline_loop_15__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_15__;

                      }
                    if (x == 2)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_15__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=2, x = x-1)  ;
                        }
                        break __fext_inline_loop_15__;

                      }
                    if (x < 0)
                      {
                        {
                          (__fext_case_i__=0, x = x+3)  ;
                        }
                        break __fext_inline_loop_15__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_15__;

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
            __fext_inline_loop_19__: for(;;) {
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
                        break __fext_inline_loop_19__;

                      }
                    if (x == 1)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_19__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_19__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=0, x = x-1)  ;
                        }
                        break __fext_inline_loop_19__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_19__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_19__;

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
            __fext_inline_loop_22__: for(;;) {
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
                        break __fext_inline_loop_22__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_22__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_22__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=1, x = x-1)  ;
                        }
                        break __fext_inline_loop_22__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_22__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_22__;

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
          }
          else {
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
            __fext_inline_loop_27__: for(;;) {
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
                        break __fext_inline_loop_27__;

                      }
                    if (x == 1)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_27__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_27__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=0, x = x-1)  ;
                        }
                        break __fext_inline_loop_27__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_27__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_27__;

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
            __fext_inline_loop_30__: for(;;) {
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
                        break __fext_inline_loop_30__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_30__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_30__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=1, x = x-1)  ;
                        }
                        break __fext_inline_loop_30__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_30__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_30__;

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
          } continue __fext_main_loop__;

        case 1: __fext_inline_loop_34__: for(;;) {
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
                    break __fext_inline_loop_34__;

                  }
                if (x == 1)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_34__;

                  }
                if (x == 2)
                  {
                    {
                      return true  ;
                    }
                    break __fext_inline_loop_34__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=2, x = x-1)  ;
                    }
                    break __fext_inline_loop_34__;

                  }
                if (x < 0)
                  {
                    {
                      (__fext_case_i__=0, x = x+3)  ;
                    }
                    break __fext_inline_loop_34__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  break __fext_inline_loop_34__;

                }
              }
            }
          }

          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 1) {
          __fext_inline_loop_35__: for(;;) {
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
                      break __fext_inline_loop_35__;

                    }
                  if (x == 1)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_35__;

                    }
                  if (x == 2)
                    {
                      {
                        return true  ;
                      }
                      break __fext_inline_loop_35__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=2, x = x-1)  ;
                      }
                      break __fext_inline_loop_35__;

                    }
                  if (x < 0)
                    {
                      {
                        (__fext_case_i__=0, x = x+3)  ;
                      }
                      break __fext_inline_loop_35__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_35__;

                  }
                }
              }
            }

            if (__fext_case_i__ == -1) return __fext_ret__;
            if (__fext_case_i__ == 1) {
            __fext_inline_loop_36__: for(;;) {
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
                        break __fext_inline_loop_36__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_36__;

                      }
                    if (x == 2)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_36__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=2, x = x-1)  ;
                        }
                        break __fext_inline_loop_36__;

                      }
                    if (x < 0)
                      {
                        {
                          (__fext_case_i__=0, x = x+3)  ;
                        }
                        break __fext_inline_loop_36__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_36__;

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
            __fext_inline_loop_40__: for(;;) {
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
                        break __fext_inline_loop_40__;

                      }
                    if (x == 1)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_40__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_40__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=0, x = x-1)  ;
                        }
                        break __fext_inline_loop_40__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_40__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_40__;

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
            __fext_inline_loop_43__: for(;;) {
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
                        break __fext_inline_loop_43__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_43__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_43__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=1, x = x-1)  ;
                        }
                        break __fext_inline_loop_43__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_43__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_43__;

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
          }
          else if (__fext_case_i__ == 2) {
          __fext_inline_loop_47__: for(;;) {
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
                      break __fext_inline_loop_47__;

                    }
                  if (x == 1)
                    {
                      {
                        return true  ;
                      }
                      break __fext_inline_loop_47__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_47__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=0, x = x-1)  ;
                      }
                      break __fext_inline_loop_47__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_47__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_47__;

                  }
                }
              }
            }

            if (__fext_case_i__ == -1) return __fext_ret__;
            if (__fext_case_i__ == 2) {
            __fext_inline_loop_48__: for(;;) {
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
                        break __fext_inline_loop_48__;

                      }
                    if (x == 1)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_48__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_48__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=0, x = x-1)  ;
                        }
                        break __fext_inline_loop_48__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_48__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_48__;

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
            __fext_inline_loop_51__: for(;;) {
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
                        break __fext_inline_loop_51__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_51__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_51__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=1, x = x-1)  ;
                        }
                        break __fext_inline_loop_51__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_51__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_51__;

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
          }
          else {
          __fext_inline_loop_55__: for(;;) {
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
                      break __fext_inline_loop_55__;

                    }
                  if (x == 1)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_55__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_55__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=1, x = x-1)  ;
                      }
                      break __fext_inline_loop_55__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_55__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_55__;

                  }
                }
              }
            }

            if (__fext_case_i__ == -1) return __fext_ret__;
            if (__fext_case_i__ == 0) {
            __fext_inline_loop_56__: for(;;) {
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
                        break __fext_inline_loop_56__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_56__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_56__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=1, x = x-1)  ;
                        }
                        break __fext_inline_loop_56__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_56__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_56__;

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
            __fext_inline_loop_60__: for(;;) {
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
                        break __fext_inline_loop_60__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_60__;

                      }
                    if (x == 2)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_60__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=2, x = x-1)  ;
                        }
                        break __fext_inline_loop_60__;

                      }
                    if (x < 0)
                      {
                        {
                          (__fext_case_i__=0, x = x+3)  ;
                        }
                        break __fext_inline_loop_60__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_60__;

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
            __fext_inline_loop_64__: for(;;) {
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
                        break __fext_inline_loop_64__;

                      }
                    if (x == 1)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_64__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_64__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=0, x = x-1)  ;
                        }
                        break __fext_inline_loop_64__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_64__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_64__;

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
          } continue __fext_main_loop__;

        case 2: __fext_inline_loop_67__: for(;;) {
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
                    break __fext_inline_loop_67__;

                  }
                if (x == 1)
                  {
                    {
                      return true  ;
                    }
                    break __fext_inline_loop_67__;

                  }
                if (x == 2)
                  {
                    {
                      return false  ;
                    }
                    break __fext_inline_loop_67__;

                  }
                if (x > 2)
                  {
                    {
                      (__fext_case_i__=0, x = x-1)  ;
                    }
                    break __fext_inline_loop_67__;

                  }
                if (x < 0)
                  {
                    {
                      (x = x+3)  ;
                    }
                    break __fext_inline_loop_67__;

                  }
                {
                  {
                    assert( false, "invalid_x" );
                  }
                  break __fext_inline_loop_67__;

                }
              }
            }
          }

          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 2) {
          __fext_inline_loop_68__: for(;;) {
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
                      break __fext_inline_loop_68__;

                    }
                  if (x == 1)
                    {
                      {
                        return true  ;
                      }
                      break __fext_inline_loop_68__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_68__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=0, x = x-1)  ;
                      }
                      break __fext_inline_loop_68__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_68__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_68__;

                  }
                }
              }
            }

            if (__fext_case_i__ == -1) return __fext_ret__;
            if (__fext_case_i__ == 2) {
            __fext_inline_loop_69__: for(;;) {
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
                        break __fext_inline_loop_69__;

                      }
                    if (x == 1)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_69__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_69__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=0, x = x-1)  ;
                        }
                        break __fext_inline_loop_69__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_69__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_69__;

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
            __fext_inline_loop_72__: for(;;) {
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
                        break __fext_inline_loop_72__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_72__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_72__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=1, x = x-1)  ;
                        }
                        break __fext_inline_loop_72__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_72__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_72__;

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
          }
          else {
          __fext_inline_loop_76__: for(;;) {
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
                      break __fext_inline_loop_76__;

                    }
                  if (x == 1)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_76__;

                    }
                  if (x == 2)
                    {
                      {
                        return false  ;
                      }
                      break __fext_inline_loop_76__;

                    }
                  if (x > 2)
                    {
                      {
                        (__fext_case_i__=1, x = x-1)  ;
                      }
                      break __fext_inline_loop_76__;

                    }
                  if (x < 0)
                    {
                      {
                        (x = x+3)  ;
                      }
                      break __fext_inline_loop_76__;

                    }
                  {
                    {
                      assert( false, "invalid_x" );
                    }
                    break __fext_inline_loop_76__;

                  }
                }
              }
            }

            if (__fext_case_i__ == -1) return __fext_ret__;
            if (__fext_case_i__ == 0) {
            __fext_inline_loop_77__: for(;;) {
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
                        break __fext_inline_loop_77__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_77__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_77__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=1, x = x-1)  ;
                        }
                        break __fext_inline_loop_77__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_77__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_77__;

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
            __fext_inline_loop_81__: for(;;) {
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
                        break __fext_inline_loop_81__;

                      }
                    if (x == 1)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_81__;

                      }
                    if (x == 2)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_81__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=2, x = x-1)  ;
                        }
                        break __fext_inline_loop_81__;

                      }
                    if (x < 0)
                      {
                        {
                          (__fext_case_i__=0, x = x+3)  ;
                        }
                        break __fext_inline_loop_81__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_81__;

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
            __fext_inline_loop_85__: for(;;) {
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
                        break __fext_inline_loop_85__;

                      }
                    if (x == 1)
                      {
                        {
                          return true  ;
                        }
                        break __fext_inline_loop_85__;

                      }
                    if (x == 2)
                      {
                        {
                          return false  ;
                        }
                        break __fext_inline_loop_85__;

                      }
                    if (x > 2)
                      {
                        {
                          (__fext_case_i__=0, x = x-1)  ;
                        }
                        break __fext_inline_loop_85__;

                      }
                    if (x < 0)
                      {
                        {
                          (x = x+3)  ;
                        }
                        break __fext_inline_loop_85__;

                      }
                    {
                      {
                        assert( false, "invalid_x" );
                      }
                      break __fext_inline_loop_85__;

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
          } continue __fext_main_loop__;

        default: return __fext_ret__;
        }
    }

  assert(false,"bug");
}
