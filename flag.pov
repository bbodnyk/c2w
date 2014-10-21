// The following two "includes" contain standard color
// and texture definitions.

#include "colors.inc"
#include "textures.inc"

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
  location <715.625,776.592,715.717>
  right <-1,0,0>
  up <0,4/3,0>
  direction <0,0,10.00>
  look_at < -0.665, 60.375, -0.442>
}

// By default, at least two point light sources are
// defined for the scene. The first is positioned
// directly above the camera's point_at location
// while the second is located at the camera
// location.

// The lights are given an rgb value of <1,1,1>.
// If the scene is not bright enough, try increasing
// the rgb values; for example <1.25,1.25,1.25>.

light_source { < -0.665,992.426, -0.442> color rgb <1,1,1> }

light_source { <715.625,776.592,715.717> color rgb <1,1,1> }
// The background is used to set the color of the Background

background { color Black }

// The plane below is used to represent the floor. Depending
// upon the options specified it may have an opaque color,
// a checkered pigment, a mirrored finish or a texture.

//plane {<0,1,0>, 0.000000
//   pigment { checker color White color Black scale <1,1,1> }
//   finish { reflection .15 }
//}


// The following are the Pro/ENGINEER objects translated from
// the .slp files.

#include "flag.inc"
object { FLAG  }

