bool is0mod3_unrolled_inline_expansion_4( int x )
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_3__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 0) {
__fext_inline_loop_4__: for(;;) {
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
break __fext_inline_loop_4__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_4__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_4__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_4__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_4__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_4__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 1) {
__fext_inline_loop_5__: for(;;) {
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_6__: for(;;) {
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
break __fext_inline_loop_6__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_6__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_6__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_6__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_6__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_6__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_7__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 1) {
__fext_inline_loop_8__: for(;;) {
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
break __fext_inline_loop_8__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_8__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_8__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_8__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_8__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_8__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 2) {
__fext_inline_loop_9__: for(;;) {
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
break __fext_inline_loop_10__;

}
if (x == 1)
{
{
  return false  ;
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
  (__fext_case_i__=1, x = x-1)  ;
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_10__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_11__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 2) {
__fext_inline_loop_12__: for(;;) {
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
break __fext_inline_loop_12__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_12__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_12__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_12__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_12__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_12__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_13__: for(;;) {
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
  return false  ;
}
break __fext_inline_loop_13__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_13__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_13__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_13__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_15__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 1) {
__fext_inline_loop_16__: for(;;) {
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
break __fext_inline_loop_16__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_16__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_16__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_16__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_16__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_16__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 2) {
__fext_inline_loop_17__: for(;;) {
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
break __fext_inline_loop_17__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_17__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_17__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_17__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_17__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_17__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_18__: for(;;) {
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
break __fext_inline_loop_18__;

}
if (x == 1)
{
{
  return false  ;
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
  (__fext_case_i__=1, x = x-1)  ;
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_18__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_19__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 2) {
__fext_inline_loop_20__: for(;;) {
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
break __fext_inline_loop_20__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_20__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_20__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_20__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_20__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_20__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_22__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 0) {
__fext_inline_loop_23__: for(;;) {
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
break __fext_inline_loop_23__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_23__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_23__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_23__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_23__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_23__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 1) {
__fext_inline_loop_24__: for(;;) {
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
break __fext_inline_loop_24__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_24__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_24__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_24__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_24__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_24__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_25__: for(;;) {
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_25__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_27__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 2) {
__fext_inline_loop_28__: for(;;) {
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
break __fext_inline_loop_28__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_28__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_28__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_28__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_28__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_28__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_30__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 0) {
__fext_inline_loop_31__: for(;;) {
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
break __fext_inline_loop_31__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_31__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_31__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_31__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_31__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_31__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 1) {
__fext_inline_loop_32__: for(;;) {
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
break __fext_inline_loop_32__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_32__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_32__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_32__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_32__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_32__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_33__: for(;;) {
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
break __fext_inline_loop_33__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_33__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_33__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_33__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_33__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_33__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_36__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 1) {
__fext_inline_loop_37__: for(;;) {
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
break __fext_inline_loop_37__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_37__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_37__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_37__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_37__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_37__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 2) {
__fext_inline_loop_38__: for(;;) {
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
break __fext_inline_loop_38__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_38__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_38__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_38__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_38__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_38__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_39__: for(;;) {
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
break __fext_inline_loop_39__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_39__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_39__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_39__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_39__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_39__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_40__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 2) {
__fext_inline_loop_41__: for(;;) {
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
break __fext_inline_loop_41__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_41__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_41__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_41__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_41__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_41__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_42__: for(;;) {
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
break __fext_inline_loop_42__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_42__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_42__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_42__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_42__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_42__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_43__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 0) {
__fext_inline_loop_44__: for(;;) {
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
break __fext_inline_loop_44__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_44__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_44__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_44__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_44__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_44__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 1) {
__fext_inline_loop_45__: for(;;) {
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
break __fext_inline_loop_45__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_45__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_45__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_45__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_45__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_45__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_46__: for(;;) {
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
break __fext_inline_loop_46__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_46__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_46__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_46__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_46__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_46__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_48__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 2) {
__fext_inline_loop_49__: for(;;) {
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
break __fext_inline_loop_49__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_49__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_49__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_49__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_49__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_49__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_50__: for(;;) {
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
break __fext_inline_loop_50__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_50__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_50__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_50__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_50__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_50__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_51__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 0) {
__fext_inline_loop_52__: for(;;) {
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
break __fext_inline_loop_52__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_52__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_52__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_52__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_52__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_52__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 1) {
__fext_inline_loop_53__: for(;;) {
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
break __fext_inline_loop_53__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_53__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_53__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_53__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_53__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_53__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_54__: for(;;) {
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
break __fext_inline_loop_54__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_54__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_54__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_54__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_54__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_54__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_56__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 0) {
__fext_inline_loop_57__: for(;;) {
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
break __fext_inline_loop_57__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_57__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_57__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_57__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_57__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_57__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 1) {
__fext_inline_loop_58__: for(;;) {
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
break __fext_inline_loop_58__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_58__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_58__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_58__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_58__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_58__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_59__: for(;;) {
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
break __fext_inline_loop_59__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_59__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_59__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_59__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_59__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_59__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_60__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 1) {
__fext_inline_loop_61__: for(;;) {
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
break __fext_inline_loop_61__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_61__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_61__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_61__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_61__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_61__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 2) {
__fext_inline_loop_62__: for(;;) {
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
break __fext_inline_loop_62__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_62__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_62__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_62__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_62__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_62__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_63__: for(;;) {
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
break __fext_inline_loop_63__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_63__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_63__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_63__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_63__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_63__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_64__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 2) {
__fext_inline_loop_65__: for(;;) {
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
break __fext_inline_loop_65__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_65__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_65__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_65__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_65__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_65__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_66__: for(;;) {
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
break __fext_inline_loop_66__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_66__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_66__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_66__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_66__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_66__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_69__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 2) {
__fext_inline_loop_70__: for(;;) {
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
break __fext_inline_loop_70__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_70__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_70__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_70__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_70__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_70__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_71__: for(;;) {
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
break __fext_inline_loop_71__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_71__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_71__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_71__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_71__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_71__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_72__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 0) {
__fext_inline_loop_73__: for(;;) {
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
break __fext_inline_loop_73__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_73__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_73__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_73__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_73__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_73__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 1) {
__fext_inline_loop_74__: for(;;) {
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
break __fext_inline_loop_74__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_74__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_74__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_74__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_74__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_74__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_75__: for(;;) {
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
break __fext_inline_loop_75__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_75__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_75__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_75__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_75__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_75__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_77__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 0) {
__fext_inline_loop_78__: for(;;) {
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
break __fext_inline_loop_78__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_78__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_78__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_78__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_78__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_78__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 1) {
__fext_inline_loop_79__: for(;;) {
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
break __fext_inline_loop_79__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_79__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_79__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_79__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_79__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_79__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_80__: for(;;) {
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
break __fext_inline_loop_80__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_80__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_80__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_80__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_80__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_80__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_81__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 1) {
__fext_inline_loop_82__: for(;;) {
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
break __fext_inline_loop_82__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_82__;

}
if (x == 2)
{
{
  return true  ;
}
break __fext_inline_loop_82__;

}
if (x > 2)
{
{
  (__fext_case_i__=2, x = x-1)  ;
}
break __fext_inline_loop_82__;

}
if (x < 0)
{
{
  (__fext_case_i__=0, x = x+3)  ;
}
break __fext_inline_loop_82__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_82__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else if (__fext_case_i__ == 2) {
__fext_inline_loop_83__: for(;;) {
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
break __fext_inline_loop_83__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_83__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_83__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_83__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_83__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_83__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_84__: for(;;) {
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
break __fext_inline_loop_84__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_84__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_84__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_84__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_84__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_84__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
  assert( false, "invalid x" );
}
break __fext_inline_loop_85__;

}
}
                }
}

if (__fext_case_i__ == -1) return __fext_ret__;
if (__fext_case_i__ == 2) {
__fext_inline_loop_86__: for(;;) {
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
break __fext_inline_loop_86__;

}
if (x == 1)
{
{
  return true  ;
}
break __fext_inline_loop_86__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_86__;

}
if (x > 2)
{
{
  (__fext_case_i__=0, x = x-1)  ;
}
break __fext_inline_loop_86__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_86__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_86__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
}
                }
}
}
else {
__fext_inline_loop_87__: for(;;) {
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
break __fext_inline_loop_87__;

}
if (x == 1)
{
{
  return false  ;
}
break __fext_inline_loop_87__;

}
if (x == 2)
{
{
  return false  ;
}
break __fext_inline_loop_87__;

}
if (x > 2)
{
{
  (__fext_case_i__=1, x = x-1)  ;
}
break __fext_inline_loop_87__;

}
if (x < 0)
{
{
  (x = x+3)  ;
}
break __fext_inline_loop_87__;

}
{
{
  assert( false, "invalid x" );
}
break __fext_inline_loop_87__;

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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
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
  assert( false, "invalid x" );
}
continue __fext_main_loop__;

}
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
