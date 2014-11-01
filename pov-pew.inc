//
// pov-pew.inc
//

#include "0_church_moldings.inc"
//
#declare POV_PEW_END =
object {
union{
merge{
difference {
prism { linear_spline -1,1,6,<0,0>,<-18,0>,<-18,25>,<-11,25>,<-11,35>,<0,35> rotate <-90,0,0> texture { T_White  } }
box { <-9,6,-4>,<-2,33,-.75> texture { T_White  }}
}
box { <-8,7,.75>,<-3,32,1.> scale <1,1,-1> texture { T_White  }}
 
box {<0.5,0,-1.5>,<-18.5,4,1.5> texture { T_PEW rotate <0,90,0> scale <4,4,4> }}
}
object { Pew_Top4(10,T_PEW) translate <-5.5,35,0> }
object { Pew_Top3(6.5,T_PEW) scale <-1,1,1> translate <-5.5-5.5,25,0> }
}}

#declare POV_PEW =
union {
object {
merge {
difference {
box { <0,0,-99>,< -14.25, 18.25, 99> }
box { <-1.5,1.5,-100>,<-16,20,100> }
}
cylinder { <-.75,18.25,-99>,<-.75,18.25,99>,0.75 }
cylinder { <-14.25,0.75,-99>,<-14.25,0.75,99>,0.75 }
}
rotate <0,0,-3> translate <-1.65,12,0> 
texture { T_PEW scale <4,4,4>  }
}
object { POV_PEW_END translate <0,0,-100> }
object { POV_PEW_END scale <1,1,-1> translate <0,0,100> }
}