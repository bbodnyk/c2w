//
// pov_flower_stand.inc
//
#include "0_church_moldings.inc"
//

#declare ALTER_FLOWER_STAND =
union {
difference {
box { <-11.5/2,0,-11.5/2>,<11.5/2,24,11.5/2> }
box { <-7.5/2,5,5.5>,<7.5/2,17.25,10> }
box { <-7.5/2,5,5.5>,<7.5/2,17.25,10> scale <1,1,-1>}
box { <-7.5/2,5,5.5>,<7.5/2,17.25,10> rotate <0,90,0>}
box { <-7.5/2,5,5.5>,<7.5/2,17.25,10> rotate <0,-90,0>}
texture { T_White }
}
object { Raised_Panel(5.5,10.25,0.5) translate<0,11.125,5.5> texture { T_WHITE }}
object { Raised_Panel(5.5,10.25,0.5) translate<0,11.125,5.5> scale <1,1,-1> texture { T_WHITE }}
object { Raised_Panel(5.5,10.25,0.5) translate<0,11.125,5.5> texture { T_WHITE } rotate <0,90,0> }
object { Raised_Panel(5.5,10.25,0.5) translate<0,11.125,5.5> texture { T_WHITE } rotate <0,-90,0> }
// Bottom Floor Trim
object { Board(11.5,3,0.5,1,1,T_PEW) translate <0,0,11.5/2> }
object { Board(11.5,3,0.5,1,1,T_PEW) scale <1,1,-1> translate <0,0,-11.5/2> }
object { Board(11.5,3,0.5,1,1,T_PEW) rotate <0,90,0> translate <11.5/2,0,0> }
object { Board(11.5,3,0.5,1,1,T_PEW) rotate <0,90,0> translate <11.5/2,0,0> scale <-1,1,1>}
// Top
box { <-12/2,24,-12/2>,<12/2,24.75,12/2> texture { T_PEW } rotate <0,90,0>}
object { Bull_Nose(12,.75,2,.5,1,1,T_PEW) translate <0,24,12/2> }
object { Bull_Nose(12,.75,2,.5,1,1,T_PEW) scale <1,1,-1> translate <0,24,-12/2> }
object { Bull_Nose(12,.75,2,.5,1,1,T_PEW) rotate <0,90,0> translate <12/2,24,0> }
object { Bull_Nose(12,.75,2,.5,1,1,T_PEW) rotate <0,90,0> translate <12/2,24,0>  scale <-1,1,1> }
// Side Rect Trim
object { Rect_Trim(11.5) translate <0,20,11.5/2> }
object { Rect_Trim(11.5) scale <1,1,-1> translate <0,20,-11.5/2>  }
object { Rect_Trim(11.5) rotate <0,90,0> translate <11.5/2,20,0> }
object { Rect_Trim(11.5) rotate <0,90,0> translate <11.5/2,20,0>  scale <-1,1,1>}

}