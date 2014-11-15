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

#declare VIDEO_SCREEN = 

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
superellipsoid{ <0.01,0.01> 
     scale <.5,.5,.5>     
     scale <1.5,2,120> 
     rotate<0,0,0> 
     translate<.75,-7,0>
     texture{ T_White }
   } // -------------- end superellipsoid
   
object { CHAIN translate <3,0,50> }
object { CHAIN translate <3,0,-50> }
      
   texture { T_White }
}