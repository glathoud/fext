#!/usr/bin/env rdmd

import std.stdio;
import std.string;

/*
./d_poc.d(7): Error: expression ["fa":"int fa( in int n )\x0a     {\x0areturn fb( n*2 );\x0a}", "fb":"int fb( in int n)\x0a     {\x0areturn n+1;\x0a}"] is not a constant

immutable string[string] group =
  [
     "fa" : `int fa( in int n )
     {
return fb( n*2 );
}`
, "fb" : `int fb( in int n)
     {
return n+1;
}`
       ];

mixin( group["fa"] );
mixin( group["fb"] );
*/

static string fext( in string code ) pure
{
string[string] slt; // some_local_state

slt["abc"]="xyz";

return code.replace( "mret!", "" ).replace( "xxx;", `writeln("`~slt["abc"]~`");`);
}


mixin(fext(q{

int fa( in int n )
{

xxx;

return mret!fb( n*2 );
}

int fb( in int n )
{
return n+1;
}

}));

void main()
{
writeln( fa(10) );
}

