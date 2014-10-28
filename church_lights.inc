//
// Outside Sunlight
//
//light_source { <30,30,0> color rgb 1 }

#if(SUNLIGHT=1)
light_source { <1,1,1> color SUNLIGHTCOLOR area_light <-100,-100,0> <100,100,0> 16, 8  adaptive 1 jitter translate <400,175,-400>}

light_source { <0,0,0> color rgb SUNLIGHT_RIGHT area_light <-16,-4,0> <8,4,0> 8, 16 adaptive 1 jitter rotate <0,60,0> translate <7,4.71,-30>     translate <5,0,0> }
light_source { <0,0,0> color rgb SUNLIGHT_RIGHT area_light <-16,-4,0> <8,4,0> 8, 16 adaptive 1 jitter rotate <0,60,0> translate <20.92,4.71,-30> translate <5,0,0> }
light_source { <0,0,0> color rgb SUNLIGHT_RIGHT area_light <-16,-4,0> <8,20,0> 8, 16 adaptive 1 jitter rotate <0,60,0> translate <27.92,4.71,-30> translate <5,0,0> }
light_source { <0,0,0> color rgb SUNLIGHT_RIGHT area_light <-16,-4,0> <8,20,0> 8, 16 adaptive 1 jitter rotate <0,60,0> translate <34.92,4.71,-30> translate <5,0,0> }
light_source { <0,0,0> color rgb SUNLIGHT_RIGHT area_light <-16,-4,0> <8,20,0> 8, 16 adaptive 1 jitter rotate <0,60,0> translate <41.92,4.71,-30> translate <5,0,0> }
light_source { <0,0,0> color rgb SUNLIGHT_LEFT area_light <-3.25,-5,0> <3.25,5,0> 4, 8 adaptive 1 jitter translate <27.92,4.71,30> }
light_source { <0,0,0> color rgb SUNLIGHT_LEFT area_light <-3.25,-5,0> <3.25,5,0> 4, 8 adaptive 1 jitter translate <34.92,4.71,30> }
light_source { <0,0,0> color rgb SUNLIGHT_LEFT area_light <-3.25,-5,0> <3.25,5,0> 4, 8 adaptive 1 jitter translate <41.92,4.71,30> }
#end

//light_source { <0,0,0> color rgb <2,2,2> area_light <-30,10,0> <30,10,0> 8, 4 adaptive 1 jitter translate <30,10, 50> }
//
// Spottlights
//
#if (SPOTLIGHT=1)
//
// Spot Light above pulpit

light_source {
  <13.57,17.5,-5.38>                 // light's position (translated below)                                                   
  color rgb SPOTLIGHTCOLOR       // light's color
  spotlight               // this kind of light source
  area_light <-1,0,-1><1,0,1> 2,2 adaptive 1 jitter
  point_at <13.57, 4, -5.38>      // direction of spotlight
  radius 4                // hotspot (inner, in degrees)
  tightness 10            // tightness of falloff (1...100) lower is softer, higher is tighter
  falloff 20               // intensity falloff radius (outer, in degrees)
}
                                                      
//
// Spot light above lecturn
//
light_source {
  <13.57,17.5,5.38>                 // light's position (translated below)
  color rgb SPOTLIGHTCOLOR       // light's color
  spotlight               // this kind of light source
  area_light <-1,0,-1><1,0,1> 2,2 adaptive 1 jitter  
  point_at <13.57, 4, 5.38>      // direction of spotlight
  radius 4                // hotspot (inner, in degrees)
  tightness 20            // tightness of falloff (1...100) lower is softer, higher is tighter
  falloff 20               // intensity falloff radius (outer, in degrees)
}  
//
// Spot light on Jesus
//
light_source {
  <4,17.8,0>                 // light's position (translated below)
  color SPOTLIGHTCOLOR       // light's color
  area_light <-2,0,-2><2,0,2> 3,3 adaptive 1 jitter 
  spotlight               // this kind of light source
  point_at <0,16, 0>      // direction of spotlight
  radius 70                // hotspot (inner, in degrees)
// tightness 50            // tightness of falloff (1...100) lower is softer, higher is tighter
  falloff 100              // intensity falloff radius (outer, in degrees)
  fade_distance 5 fade_power 2
}

//
// Corner Soptlights
//

light_source {
  <14.25,11.5,-24>                 // light's position (translated below)                                                   
  color SPOTLIGHTCOLOR       // light's color
  spotlight               // this kind of light source
  point_at <0, 6, -22>      // direction of spotlight
  radius 80                // hotspot (inner, in degrees)
  tightness 10            // tightness of falloff (1...100) lower is softer, higher is tighter
  falloff 120               // intensity falloff radius (outer, in degrees)
  fade_distance 7 fade_power 2
}

light_source {
  <14.25,11.5,24>                 // light's position (translated below)                                                   
  color SPOTLIGHTCOLOR       // light's color
  spotlight               // this kind of light source
  point_at <0, 6, 22>      // direction of spotlight
  radius 80                // hotspot (inner, in degrees)
  tightness 10            // tightness of falloff (1...100) lower is softer, higher is tighter
  falloff 120               // intensity falloff radius (outer, in degrees)
  fade_distance 7 fade_power 2
}  
#end

//
// Video Screen Light
//

#if(VIDEO_ON = 1)
light_source { <0,0,0> color rgb <1,1,1> area_light <0,-2.4,-4.5><0,2.4,4.5> 4,4 adaptive 1 jitter fade_distance 1 fade_power 2 translate <5.0, 10.0, 10.0>}
#end
//
// Lights along side of the ceiling
//
#if (SIDECEILINGLIGHTS = 1)
#if (AREA_LITES = 1 )
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <7.5, 13.5, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <9.5, 13.5, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <11.5, 13.5, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <13.5, 13.5, -23.5>}               

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 rotate<-45,0,0> translate <7.5, 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 rotate<-45,0,0> translate <9.5, 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 rotate<-45,0,0> translate <11.5, 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 rotate<-45,0,0> translate <13.5, 13.25, 23.5>}     
#else
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <7.5, 13.25, -24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <9.5, 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <11.5, 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <13.5, 13.25, -24>}               

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <7.5, 13.25, 24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <9.5, 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <11.5, 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <13.5, 13.25, 24>}     
#end

#if (BACKLIGHTS = 1)
#if (AREA_LITES = 1)
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <18., 13.5, -23.5>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <20., 13.5, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <22., 13.5, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <24., 13.5, -23.5>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <18., 13.25, 23.5>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <20., 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <22., 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <24., 13.25, 23.5>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <28., 13.25, -23.5>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <30., 13.25, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <32., 13.25, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <34., 13.25, -23.5>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <28., 13.25, 23.5>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <30., 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <32., 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <34., 13.25, 23.5>} 

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <38., 13.25, -23.5>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <40., 13.25, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <42., 13.25, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <44., 13.25, -23.5>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <38., 13.25, 23.5>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <40., 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <42., 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <44., 13.25, 23.5>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <48., 13.25, -23.5>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <50., 13.25, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <52., 13.25, -23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <54., 13.25, -23.5>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <48., 13.25, 23.5>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <50., 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <52., 13.25, 23.5>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR area_light <-2,0,0><2,1,0> 4, 2 adaptive 1 jitter fade_distance 2 fade_power 2 translate <54., 13.25, 23.5>}
#else
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <18., 13.25, -24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <20., 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <22., 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <24., 13.25, -24>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <18., 13.25, 24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <20., 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <22., 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <24., 13.25, 24>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <28., 13.25, -24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <30., 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <32., 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <34., 13.25, -24>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <28., 13.25, 24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <30., 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <32., 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <34., 13.25, 24>} 

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <38., 13.25, -24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <40., 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <42., 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <44., 13.25, -24>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR1 fade_distance 2 fade_power 2 translate <38., 13.25, 24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <40., 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <42., 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <44., 13.25, 24>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <48., 13.25, -24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <50., 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <52., 13.25, -24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <54., 13.25, -24>}

light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <48., 13.25, 24>} 
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <50., 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <52., 13.25, 24>}
light_source { <0,0,0> color SIDECEILINGLIGHTCOLOR fade_distance 2 fade_power 2 translate <54., 13.25, 24>}
#end
#end
#end

/*
#declare Red_Glow =
 interior{ //---------------------
    media{ method 3
           emission 0.75
           scattering{ 1, 0.1 // color of scattering haze
           extinction  2
           }
           density{ spherical
                    turbulence 0
                    color_map {
                    [0.00 rgb <0,0,0>]
                    [0.25 rgb <1,1,0>]
                    [0.45 rgb <1,1,0>]
                    [0.55 rgb <1,1,1>]
                    [0.90 rgb <2,2,2>]
                    [1.00 rgb <2,2,2>]
                   } // end color_map
           } // end of density          
           scale <.1,.1,.1>
           translate <0,0,0>
     }
     
  } // end of interior

#declare Ember_Texture =
texture {
pigment { granite
          color_map {
          [0.0 rgb <1,1,1,1> ]
          [0.25 rgb <1,1,1,1> ]
          [1.0 rgb <0,0,0,1>]
          }
          scale <.3,.1,.1>
        }      }

#declare RadiusVal   = .175; // (0 < RadiusVal) outer sphere of influence on other components
#declare StrengthVal = 1.0; // (+ or -) strength of component's radiating density

#declare BULB =
object {
blob {
  // threshold (0.0 < threshold <= StrengthVal) surface falloff threshold #
  threshold 0.6
  sphere { < 0, 0, 0>, RadiusVal*1.5, StrengthVal }
  sphere { < .125, 0, 0>, RadiusVal, StrengthVal }
  sphere { <0,-.125,0>, RadiusVal, StrengthVal }
  sphere { <0,.125,0>, RadiusVal, StrengthVal }
  sphere { <.125,0,.050>, RadiusVal, StrengthVal }
  sphere { <-.125,0,.050>, RadiusVal, StrengthVal }
//  cylinder { -X, +X, RadiusVal, StrengthVal }
  // [sturm]
  scale <.5,1,.5> 
  texture { pigment { color rgbf<1,1,1,1> }}
//  texture{ Ember_Texture }
  hollow // allows fog or media effects inside
  interior { Red_Glow }  
}}
*/                     

//
// Lights on Walls
//
#if (SIDEWALLLIGHTS = 1)
#include "light_bulb.inc"
light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless translate <17.42,6.6,-23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <17.42,6.55,-23.89>}                                                                                                                    
object { FLAME scale <1/12,1/12,1/12> translate <17.42,6.625,-23.89>}
light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless  translate <24.42,6.6,-23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <24.42,6.55,-23.89>}
object { FLAME scale <1/12,1/12,1/12> translate <24.42,6.625,-23.89>}
light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless  translate <31.42,6.6,-23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <31.42,6.55,-23.89>}
object { FLAME scale <1/12,1/12,1/12> translate <31.42,6.625,-23.89>}
light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless  translate <38.42,6.6,-23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <38.42,6.55,-23.89>}
object { FLAME scale <1/12,1/12,1/12> translate <38.42,6.625,-23.89>}
light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless  translate <45.42,6.6,-23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <45.42,6.55,-23.89>}
object { FLAME scale <1/12,1/12,1/12> translate <45.42,6.625,-23.89>}

light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless  translate <24.42,6.6,23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <24.42,6.55,23.89>}
object { FLAME scale <1/12,1/12,1/12> translate <24.42,6.625,23.89>}
light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless  translate <31.42,6.6,23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <31.42,6.55,23.89>}
object { FLAME scale <1/12,1/12,1/12> translate <31.42,6.625,23.89>}
light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless  translate <38.42,6.6,23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <38.42,6.55,23.89>}
object { FLAME scale <1/12,1/12,1/12> translate <38.42,6.625,23.89>}
light_source { <0,0,0> color SIDEWALLLIGHTCOLOR fade_distance 1 fade_power 2 shadowless  translate <45.42,6.6,23.89> }
object { LIGHT_BULB hollow scale <.1,.1,.1> translate <45.42,6.55,23.89>}
object { FLAME scale <1/12,1/12,1/12> translate <45.42,6.625,23.89>}
#end
