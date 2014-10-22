#declare SIDEWALLCOLOR = color rgb <1,1,1>;
#declare CEILINGCOLOR =  color rgb <1,1,1>;
#declare FRONTCOLOR =  color rgb <1,1,1>;
#declare CURTAINCOLOR = color rgb <248/255,231/255,184/255>;
#declare MURAL = 0;
#declare CEILINGLIGHTS = 1;
#declare ROOM_AMBIENT = <.9,.9,.9>;
#declare ROOM_DIFFUSE = .5;

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
  location <4,2,-4>
  right <-4/3,0,0>
  up <0,1,0>
  direction <0,0,4>
  look_at < 0,.5,0>
}
light_source { <4,2,-4> color rgb <1,1,1>}

//light_source { <0,20,0> color rgb <1,1,1>}

background { color Black }

#include "alter_flower_stand.inc"
object { ALTER_FLOWER_STAND  scale <1/12,1/12,1/12> }