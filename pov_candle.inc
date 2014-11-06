//
// pov_candle.inc
//
#declare CANDLE =
union { 
merge {
box {< -2,0,-2>,<2,.25,2>}
box {< -1.75,.25,-1.75>,<1.75,.5,1.75>}
box {< -1.5,.5,-1.5>,<1.5,.75,1.5>}
cylinder { <0,0,0>,<0,3,0>,.5 }
difference {
sphere { <0,2,0>,1.75 scale <1,4,1> }
box { <-2,4,-2>,<2,20,2> }
}
cylinder { <0,4,0>,<0,4.125,0>,1.75 }
torus { 1.75, 0.125 translate < 0,4.0615,0> }
cylinder { <0,4,0>,<0,12,0>,.75 }
difference {
sphere { <0,0,0>,1.25 scale <1,2,1> translate <0,12,0> }
box { <-2,12,-2>,<2,20,2> }
}
cylinder { <0,12,0>,<0,12.125,0>,1.5 }
torus { 1.25, 0.125 translate < 0,12.0615,0> }
cylinder { <0,12,0>,<0,13,0>,.85 }
cylinder { <0,13,0>,<0,24,0>,.75 texture { T_White }}
lathe {
  linear_spline
  5,
  <0, 0>, <0, 1.25>, <.375, 1.25>, <.75, 0>, <0, 0>
  translate <0,24,0> 
  }
torus { 0.75, 0.125 translate < 0,24.0615,0> }
torus { 0.375, 0.125 translate < 0,25.125,0> }
texture { T_Gold }
}
#if(CANDLE_ON = 1)object { FLAME translate <0, 26.25, 0>} #end
#if(CANDLE_ON = 1)light_source { <0,26.25,0> color rgb <1,1,.5> fade_distance 1 fade_power 2 shadowless } #end
} 