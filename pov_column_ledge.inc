//
// pov_column_ledge.inc
//
#include "0_church_moldings.inc"
//
#declare COLUMN_LEDGE = 
union {
box { <0,0,0>,<3.5,1,-18.5> }
box { <0,0,-17>,<60,1,-18.5> }
prism { linear_spline -.25,.25,5,<0,0>,<0,15.3543>,<1.6667,15>,<1.6667,0>,<0,0> rotate <0,90,90> translate <14.75,-12,-18.5+1.6667> texture { T_White }}
object { CEILING_COVE(3.5*12,1,0,T_White) scale <1/12,1/12,1/12> translate <3.5/2,1,0> }
object { CEILING_COVE(17*12,-1,1,T_White) scale <1/12,1/12,1/12> translate <17/2,0,0> rotate <0,90,0> translate <3.5,1,0> texture { T_PEW }}
object { CEILING_COVE(12*12,0,-1,T_White) scale <1/12,1/12,1/12> translate <12/2+3.5,1,-17>}
texture { T_White }
}