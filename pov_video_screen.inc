//
//pov_video_screen.inc
//
#declare CHAIN = 
union {
torus { 1.0,0.25  rotate<0,0,90> scale <1,1,1> rotate<0,0,0>}
#declare link_count = 0;
#while ( link_count < 18 )
#declare ydiff = 3.5 * link_count;           
torus { 1.0,0.175  rotate<90,0,0> scale <.5,1,1> translate <0,1.75+ydiff,0> rotate<0,0,0>}
torus { 1.0,0.175  rotate<0,0,90> scale <1,1,.5> translate <0,1.75*2+ydiff,0> rotate<0,0,0>}
#declare link_count = link_count + 1;
#end
}

#macro SCREEN(OPEN,ON,IMAGE,EMISSION)
union {
union {

//box { <0,0,-60>,<6,-3,60> }

//box { <0,-3,-60>,<1.5,-8,60> }
//cylinder { <3,-3,-60><3,-3,60>,3 texture { T_White }}

superellipsoid{ <1,0.01> 
     scale <.5,.5,.5>     
     scale <6,6,120> 
     rotate<0,0,0> 
     translate<3,-3,0>
     texture{ T_White }
   } // -------------- end superellipsoid
   
superellipsoid{ <0.01,0.01> 

     texture{ T_White }
     scale <3,1.5,60> 
     rotate<0,0,0> 
     translate<3,-1.5,0>
   } // -------------- end superellipsoid
//

superellipsoid{ <0.01,0.01> 
     scale <.5,.5,.5>     
     scale <3,3,120> 
     rotate<0,0,0> 
     translate<1.5,-4.5,0>
     texture{ T_White }
   } // -------------- end superellipsoid  
//
difference {
superellipsoid{ <0.01,0.01> 
     scale <.5,.5,.5>     
     scale <1.5,2,120> 
     rotate<0,0,0> 
     translate<.75,-7,0>
     texture{ T_White }
   } // -------------- end superellipsoid
box { <0.25,-10,-59.75>,<1.25,0,59.75> pigment { color rgb <.5,.5,.5>}}
} // end of difference   
object { CHAIN translate <3,0,50> }
object { CHAIN translate <3,0,-50> }
      
   texture { T_White }
}

#if(ON = 0.0)
#declare T_Video = texture { T_VIDEOSCREEN  finish { ambient EMISSION }  }
#else #declare T_Video = texture { pigment { image_map { jpeg IMAGE } rotate <0,90,0> scale <1,75,125> translate <0,-3,-66>  } finish { ambient 0 diffuse 0 emission EMISSION} }
#end
//
// Screen Portion
//
#declare ydiff = 70*OPEN;
union {
difference {
box { <0.25,-6,-59.5>,<0.5,-10-ydiff,59.5> texture { pigment { color rgb <.0125,.0125,.0125> } } }
box { <0.325,0,-58.5>,<1,-8-ydiff,58.5> texture { T_Video } }
}
cylinder { <0.75,-9.5-ydiff,-60>,<0.75,-9.5-ydiff,60>,.75 pigment { color rgb <.0125,.0125,.0125> }  }
}
}
#end
