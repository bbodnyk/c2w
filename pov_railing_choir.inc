//
// Choir_railing
//
#include "0_church_moldings.inc"
//
#declare RAILING_CHOIR = 
union {
box { <127,0,0>,<129,32,-162.96> texture { T_White } }
box { <127,32,-82>,<129,44,-162.96> texture { T_White } }
box { <0,0,0>,<129,32,-2> texture { T_White } }
object { Pew_Top3(81,T_PEW) rotate <0,-90,0> scale <1,1,1> translate <128,44,-162.96> }
object { Pew_Top3(91,T_PEW) rotate <0,-90,0> scale <1,1,1> translate <128,32,-81.8614> clipped_by {plane {<-1,0,1>,0 translate <129,0,0> }} }
object { Pew_Top3(130,T_PEW) translate <0,32,-1> clipped_by {plane {<1,0,-1>,0 translate <129,0,0> }}}
object { Board(129,4,1,1,0,T_PEW) translate <129/2,0,0> }
object { Board(163,4,1,0,1,T_PEW) translate <163/2,0,0> rotate <0,90,0> translate <129,0,0>}
}