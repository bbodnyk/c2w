// The following two "includes" contain standard color
// and texture definitions.



#declare SIDEWALLCOLOR = color rgb <1,1,1>;
#declare CEILINGCOLOR =  color rgb <1,1,1>;
#declare FRONTCOLOR =  color rgb <1,1,1>;
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

// The camera defined below is positioned based upon the
// specified rotations about the Y and Y axis.

// The ratio of the right to up vectors should match
// the ratio of the width and height of the rendered
// image.

// The direction vector may be adjusted to zoom the
// camera in or out. Z values greater than 10.00 will
// cause the camera to zoom in while values less
// than 10.00 will cause the camera to zoom out. 

camera {
  location <1187.686,300,1195.743>
  right <-4/3,0,0>
  up <0,1,0>
  direction <0,0,30>
  look_at < -8.277, 0,  0.000>
}
light_source { <1187.686,500,1195.743> color rgb <2,2,2> }

// By default, at least two point light sources are
// defined for the scene. The first is positioned
// directly above the camera's point_at location
// while the second is located at the camera
// location.

// The lights are given an rgb value of <1,1,1>.
// If the scene is not bright enough, try increasing
// the rgb values; for example <1.25,1.25,1.25>.

light_source { < -8.277,1657.017,  0.000> color rgb <1,1,1> }


// The background is used to set the color of the Background

background { color White }

// The following are the Pro/ENGINEER objects translated from
// the .slp files.

#include "pew.inc"
object { PEW rotate<0,90,0> translate <0,0,101> }

//#include "axis.inc"
//object { AXIS scale <2,2,2> }