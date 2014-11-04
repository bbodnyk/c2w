//
// pov_pencil.inc
//
#declare PENCIL =
union {
prism { linear_spline 0,8,6,<.155,0>,<.077,-.135>,<-.077,-.135>,<-.155,0>,<-.077,.135>,<0.077,.135> texture { T_MandarinOrange }}
cylinder {<0,0,0>,<0,0.5,0>,.175  translate <0,8,0> texture { T_White }  }
torus { 0.175,0.015 translate <0,8.125,0>  texture { T_White } }
torus { 0.175,0.015 translate <0,8.25,0>  texture { T_White } }
torus { 0.175,0.015 translate <0,8.375,0>  texture { T_White } }
superellipsoid{ <1.0,0.175> scale <.165,.165,.165> rotate <90,0,0> translate <0,8.5,0>  texture { pigment { color rgb <255/255,85/255,63/255>  } }}
}


             

