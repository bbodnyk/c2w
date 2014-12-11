//
// pov_chandelier.inc
//

#include "light_bulb.inc"

#declare LOWER_ARM = 
union {
cylinder { <1.125,-.25,0>,<1.125,.25,0>,.175 }
cylinder { <1.125,-.36,0>,<1.125,.36,0>,.125 }
torus { .5,.123 rotate <90,0,0> clipped_by { plane {-y,0}}  clipped_by { plane {-y,0} rotate <0,0,25.83> } translate <1.625,0.36,0 >  }
cylinder { <2.075,.5779,0>,<3.3193,-1.9926,0.>,.125 }
torus { 3,.123 rotate <90,0,0> clipped_by { plane {y,0}} clipped_by { plane {y,0} rotate <0,0,25.83> } translate <6,-.69,0>}
cylinder { <9,-.69,0>,<9,0,0>,.125 }
lathe {
linear_spline
8,
<0,0>,<0,1.5>,<.625,1.5>,<.625,.5>,<1.175,.5>,<1.175,.375>,<.25,0>,<0,0>
translate <9,-.69,0> }
cylinder { <0,0,0>,<0,2.0,0>,0.45 translate <9,.5,0> texture { T_White }}
object { LIGHT_BULB scale <1.25,1.25,1.25> translate <9,2.5,0> }
object { FLAME2 scale <1,1.5,1> translate <9,2.5,0> }
#if(CEILINGLIGHTS = 1)light_source { <9,3.0,0> color rgb CHANDELIERLIGHTCOLOR fade_distance 2.375 fade_power 3 shadowless} #end
texture { T_Gold }

}

#declare UPPER_ARM =
union {
//cylinder { <.85,1.9,0>,<.85,2.4,0>,.175  translate <0,0,0> }
cylinder { <.85,1.8,0>,<.85,2.5,0>,.125  translate <0,0,0> }
torus { .5,.125 rotate <90,0,0> clipped_by { plane {-y,0}}  clipped_by { plane {-y,0} rotate <0,0,25.83> } translate <1.35,2.5,0 >  }
cylinder { <1.6714,2.8830,0>,<4.2072,0.7552,0.>,.125 }
torus { 1,.123 rotate <90,0,0> clipped_by { plane {y,0}} clipped_by { plane {y,0} rotate <0,0,50> } translate <4.85,1.5213,0 >}

cylinder { <5.85,1.5,0>,<5.85,2.865,0>,.125  translate <0,0,0> }
lathe {
linear_spline
8,
<0,0>,<0,1.5>,<.625,1.5>,<.625,.5>,<1.175,.5>,<1.175,.375>,<.25,0>,<0,0>
translate <5.85,2.865,0> }
cylinder { <0,0,0>,<0,2.0,0>,0.45 translate <5.85,4.465,0> texture { T_White }}
object { LIGHT_BULB scale <1.25,1.25,1.25> translate <5.85,6.465,0> }
object { FLAME2 scale <1,1.5,1> translate <5.85,6.465,0> }
#if(CEILINGLIGHTS = 1)light_source { <5.85,6.965,0> color rgb CHANDELIERLIGHTCOLOR fade_distance 2.375 fade_power 3 shadowless} #end
texture { T_Gold }
}


#declare CHAIN = 
union {
#declare link_count = 0;
#while ( link_count < 30 )
#declare ydiff = 1.8 * link_count;           
torus { 0.5,0.05  rotate<90,0,0> scale <.5,1,1> translate <0,.9+ydiff,0> rotate<0,0,0>}
torus { 0.5,0.05  rotate<0,0,90> scale <1,1,.5> translate <0,.9*2+ydiff,0> rotate<0,0,0>}
#declare link_count = link_count + 1;
#end
superellipsoid { <.75,.1> rotate <90,0,0> scale <2,1,2> rotate <0,0,15> translate <0,55,0> }
}

#declare CHANDELIER_LIGHT =
union {
lathe {
linear_spline
9.
<0,.375>,<.5,.375>,<.5,.365>,<1,.25>,<1,-.25>,<.5,-.365>,<.5,-.375>,<0,-.375>,<0,.375>
texture { T_Gold } 
}
sphere { <0,-0.75,0>,.5  texture { T_Gold } }
sphere { <0,-2.25,0>,1.25  texture { T_Gold } }
sphere { <0,1.0,0>,0.875  texture { T_Gold } }
cylinder  { <0,1.9,0>,<0,2.4,0>,.75 texture { T_Gold }}
sphere { <0,3.0,0>,0.65  texture { T_Gold } }
sphere { <0,4.0,0>,0.5  texture { T_Gold } }
sphere { <0,4.5,0>,0.25  texture { T_Gold } }
torus { .25,.0625 rotate <90,0,0>  texture { T_Gold } translate <0,5,0> }
torus { .25,.0625 rotate <90,0,0>  texture { T_Gold } translate <0,-3.75,0> }
//
// Lower Arm
// 
#declare num = 0;
#while ( num <= 10 )
#declare ang = num * 36;
object { LOWER_ARM rotate <0,ang,0> }
#declare num = num + 1;
#end 
//
// Upper Arm
//
#declare num = 0;
#while ( num <= 5 )
#declare ang = 18 + num * 72;
object{ UPPER_ARM  rotate <0,ang,0>  }
#declare num = num + 1;
#end 
//
// Chain
//
object { CHAIN texture { T_Gold } rotate <0,90,0> translate <0,4.75,0>}

/*
#if(CEILINGLIGHTS = 1)
light_source { <0,0,0> color rgb CHANDELIERLIGHTCOLOR area_light <-12,-0,-12><12,0,-12> 2, 2 adaptive 1 jitter fade_distance 10 fade_power 3 translate <0,3,0>}
//sphere { <0,3,0>,2 pigment { color rgb <0,1,1> } }
#end
*/
}