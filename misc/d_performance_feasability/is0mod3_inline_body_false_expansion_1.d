module is0mod3_inline_body_false_expansion_1;

bool is0mod3_inline_body_false_expansion_1( int x )
{
  int __fext_case_i__ = 0;
  bool __fext_ret__;
  int  __fext_arg_x__;
  
  void is0mod3_fext()
  {

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
              (__fext_case_i__=-1,__fext_ret__ = true)  ;
            }
            return;

          }
        if (x == 1)
          {
            {
              (__fext_case_i__=-1,__fext_ret__ = false)  ;
            }
            return;

          }
        if (x == 2)
          {
            {
              (__fext_case_i__=-1,__fext_ret__ = false)  ;
            }
            return;

          }
        if (x > 2)
          {
            {
              (__fext_case_i__=1, x = x-1)  ;
            }
            return;

          }
        if (x < 0)
          {
            {
              (x = x+3)  ;
            }
            return;

          }
        {
          {
            assert( false, "invalid x" );
          }
          return;

        }
      }
    }
    assert(false, "bug");
  }

  void is2mod3_fext()
  {

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
              (__fext_case_i__=-1,__fext_ret__ = false)  ;
            }
            return;

          }
        if (x == 1)
          {
            {
              (__fext_case_i__=-1,__fext_ret__ = false)  ;
            }
            return;

          }
        if (x == 2)
          {
            {
              (__fext_case_i__=-1,__fext_ret__ = true)  ;
            }
            return;

          }
        if (x > 2)
          {
            {
              (__fext_case_i__=2, x = x-1)  ;
            }
            return;

          }
        if (x < 0)
          {
            {
              (__fext_case_i__=0, x = x+3)  ;
            }
            return;

          }
        {
          {
            assert( false, "invalid x" );
          }
          return;

        }
      }
    }
    assert( false, "bug");
  }

  void is1mod3_fext()
  {

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
              (__fext_case_i__=-1,__fext_ret__ = false)  ;
            }
            return;

          }
        if (x == 1)
          {
            {
              (__fext_case_i__=-1,__fext_ret__ = true)  ;
            }
            return;

          }
        if (x == 2)
          {
            {
              (__fext_case_i__=-1,__fext_ret__ = false)  ;
            }
            return;

          }
        if (x > 2)
          {
            {
              (__fext_case_i__=0, x = x-1)  ;
            }
            return;

          }
        if (x < 0)
          {
            {
              (x = x+3)  ;
            }
            return;

          }
        {
          {
            assert( false, "invalid x" );
          }
          return;

        }
      }
    }
    assert(false, "bug");
  }
  

 __fext_main_loop__: for (;;)
    {
      switch( __fext_case_i__)
        {
        case 0: is0mod3_fext();
          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 0) {
            is0mod3_fext();
          }
          else if (__fext_case_i__ == 1) {
            is2mod3_fext();
          }
          else {
            is1mod3_fext();
          } continue __fext_main_loop__;

        case 1: is2mod3_fext();
          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 1) {
            is2mod3_fext();
          }
          else if (__fext_case_i__ == 2) {
            is1mod3_fext();
          }
          else {
            is0mod3_fext();
          } continue __fext_main_loop__;

        case 2: is1mod3_fext();
          if (__fext_case_i__ == -1) return __fext_ret__;
          if (__fext_case_i__ == 2) {
            is1mod3_fext();
          }
          else {
            is0mod3_fext();
          } continue __fext_main_loop__;

        default: return __fext_ret__;
        }
    }

  assert(false, "bug");
}
