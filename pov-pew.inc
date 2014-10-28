//
// pov-pew.inc
//
#declare POV_PEW_END =
object {
union{
prism { linear_spline 0,2,6,<0,0>,<-18,0>,<-18,25>,<-11,25>,<-11,35>,<0,35> rotate <-90,0,0> texture { T_White  } }
box {<0.5,0,-1.5>,<-18.5,4,1.5> translate<0,0,-1> texture { T_PEW rotate <0,90,0> scale <4,4,4> }}
box {<-11.0,25,-1.5>,<-18.5,26,1.5> translate<0,0,-1> texture { T_PEW rotate <0,90,0> scale <4,4,4> }}
box {<0.5,35,-1.5>,<-11.5,36,1.5> translate<0,0,-1> texture { T_PEW rotate <0,90,0> scale <4,4,4> }}
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
object { POV_PEW_END translate <0,0,-99> }
object { POV_PEW_END scale <1,1,-1> translate <0,0,99> }
}