//
// alter.inc
//
#include "0_church_moldings.inc"

#declare POV_ALTER =
union {
merge {
// Basic White Block
box { <-65/2,0,0>,<65/2,35.5,23>  texture { T_WHITE }}
// Bottom Floor Trim
object { Board(65,4,1,1,1,T_PEW) translate <0,0,23> }
object { Board(65,4,1,1,1,T_PEW) scale <1,1,-1> translate <0,0,0> }
object { Board(23,4,1,1,1,T_PEW) rotate <0,90,0> translate <65/2,0,23/2> }
object { Board(23,4,1,1,1,T_PEW) rotate <0,90,0> translate <65/2,0,23/2> scale <-1,1,1>}
// Top
object { Board(67,1,4,0,0,T_PEW) translate <0,35.5,0> }
object { Board(67,1,6,0,0,T_PEW) translate <0,35.5,4> }
object { Board(67,1,4,0,0,T_PEW) translate <0,35.5,10> }
object { Board(67,1,6,0,0,T_PEW) translate <0,35.5,14> }
object { Board(67,1,4,0,0,T_PEW) translate <0,35.5,20> }
object { Bull_Nose(67,1,2,.5,1,1,T_PEW) translate <0,35.5,24> }
object { Bull_Nose(67,1,2,.5,1,1,T_PEW) scale <1,1,-1> translate <0,35.5,0> }
object { Bull_Nose(24,1,2,.5,1,1,T_PEW) rotate <0,90,0> translate <67/2,35.5,12> }
object { Bull_Nose(24,1,2,.5,1,1,T_PEW) rotate <0,90,0> translate <67/2,35.5,12>  scale <-1,1,1> }
// Side Rect Trim
object { Rect_Trim(65) translate <0,26.5,23> }
object { Rect_Trim(65) scale <1,1,-1> translate <0,26.5,0>  }
object { Rect_Trim(23) rotate <0,90,0> translate <65/2,26.5,23/2> }
object { Rect_Trim(23) rotate <0,90,0> translate <65/2,26.5,23/2>  scale <-1,1,1>}
// Raised Panel

}
}