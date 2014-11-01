#declare SIDEWALLCOLOR = color rgb <1,1,1>;
#declare CEILINGCOLOR =  color rgb <1,1,1>;
#declare FRONTCOLOR =  color rgb <1,1,1>;
#declare CURTAINCOLOR = color rgb <248/255,231/255,184/255>;
#declare FLOORCOLOR = color rgb <87/255,44/255,51/255>;
#declare MURAL = 0;
#declare CEILINGLIGHTS = 1;
#declare GLOBAL_AMBIENT = <.2,.2,.2>;
#declare ROOM_AMBIENT = <.2,.2,.2>;
#declare ROOM_DIFFUSE = .5;
#declare FLAME_EMISSION = 1;

#include "colors.inc"
#include "church_colors.inc"
#include "woodmaps.inc"
#include "woods.inc"                
#include "glass.inc"                                                               
#include "textures.inc"
#include "metals.inc"
#include "golds.inc"
#include "church_texture.inc"

camera {
  location <8,8,18>
  right <-4/3,0,0>
  up <0,1,0>
  direction <0,0,4>
  look_at < -1,1,8>
}
light_source { <8,8,18> color rgb <1,1,1>}


//light_source { <0,20,0> color rgb <1,1,1>}

background { color Black }



#include "axis.inc"
object { AXIS scale <4/12,4/12,4/12> translate < 0,0,100/12>}

plane {<0,1,0>,0 pigment { checker color White color Black scale <1,1,1>}}

#include "pov-pew.inc"
object { POV_PEW scale <1/12,1/12,1/12>}



