//
// pov_lecturn.inc
//
#include "0_church_moldings.inc"
//
#declare LECTURN =
union {
difference {
box { <-6.75,0,-8.25>,<6.75,40.5,8.25>}
box { <6.5,7,-5.25>,<20,30.5,5.25> }
box { <-3.75,7,-8>,<3.75,30.5,-10> }
box { <-3.75,7,-8>,<3.75,30.5,-10> scale <1,1,-1>}
 texture { T_White }
}
prism { linear_spline -8.75,8.75,5,<-8.75,0>,<-8.75,6>,<8.75,2>,<8.75,0>,<-8.75,0> rotate <-90,180,0> translate <0,40.5,0>texture { T_White }}
object { Raised_Panel(6.5,19.5,0.5) rotate <0,90,0> translate<6.5,18.75,0> texture { T_WHITE }}
object { Raised_Panel(3.5,19.5,0.5) translate<0,18.75,8> texture { T_WHITE }}
object { Raised_Panel(3.5,19.5,0.5) translate<0,18.75,8> scale <1,1,-1> texture { T_WHITE }}

object { Board(13.5,3,0.5,1,1,T_PEW) translate <0,0,8.25> }
object { Board(13.5,3,0.5,1,1,T_PEW) translate <0,0,8.25> scale <1,1,-1>}
object { Board(16.5,3,0.5,1,1,T_PEW) rotate <0,90,0> translate <6.75,0,0> }
object { Board(16.5,3,0.5,1,1,T_PEW) rotate <0,90,0> translate <6.75,0,0>  scale <-1,1,1>}
// TOp
box { <0,0,-10.75>,<18.95,1,10.75> rotate <0,0,12.875> translate <-9.237,42.389,0> texture { T_White }}
union {
box { <0,0,-11>,<19.45,1,11> texture { T_PEW }}
object { Bull_Nose(19.45,1,2,.5,1,1,T_PEW) translate <19.45/2,0,11> }
object { Bull_Nose(19.45,1,2,.5,1,1,T_PEW) translate <19.45/2,0,11> scale <1,1,-1>}
object { Bull_Nose(22,1,2,.5,1,1,T_PEW) scale <1,1,-1> rotate <0,90,0> translate <0,0,0> }
object { Bull_Nose(22,1,2,.5,1,1,T_PEW) rotate <0,90,0> translate <19.45,0,0> }
rotate <0,0,12.875> translate <-9.237,42.389,0> }
object { Rect_Trim(13.5) translate <0,33.5,8.25> }
object { Rect_Trim(13.5) scale <1,1,-1> translate <0,33.5,-8.25>  }
object { Rect_Trim(16.5) rotate <0,90,0> translate <6.75,33.5,0> }
object { Rect_Trim(16.5) rotate <0,90,0> translate <6.75,33.5,0>  scale <-1,1,1>}
}         