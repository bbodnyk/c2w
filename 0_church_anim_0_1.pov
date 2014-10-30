#version 3.7;
//
// Rendering of Chambers Hill United Methodist Church
//
// This is the top level scene file for rendering. It contains various
// switches for setting colors of certain objects and lights and locations
// of cameras
//
// NOTE: Most of the configuration files use feet units. On the other hand,
// many of the objects are defined in inches. Objects defined in inches
// are scaled by 1/12 to convert their units to feet.
//
//=================== Scene Control =========================
//
// Debug mode is normally used for testing lighting configurations
// where most of the scene objects are turned off to speed up the rendering time.
//
#declare DEBUG = 0;  // Set to 1 for debugging
//
// Animation Control - Set to 0 for single renderings.
//
#declare ANIMATION = 1;
//
// Animation Sequence
//
#declare ANIMATION_SEQUENCE = 0;
#declare ANIMATION_SUBSEQUENCE = 1;
//
// Amount of Ambient Light
//
// Ambient light is the amount of illumination an object receives when it
// is not directly illuminated by light.

// NOTE: These values have been carefully tweeked by illuminating the church
// with just sunlight. They normally should be left as is.
//
#declare GLOBAL_AMBIENT = <0,0,0>;
#declare ROOM_AMBIENT = <0,0,0>;
#declare ROOM_DIFFUSE = .6;
#declare TREE_EMISSION = 1.0;
#declare FLAME_EMISSION = 1.0;
//
// Lighting Colors
//
// These settings control the colors of the various light sources
// in the scene. Colors are defined with rgb values which can be
// scaled to increase or decrease the light intensity.
//
#declare SUNLIGHTCOLOR =         <1,1,1>*4.0;          // Direct Sunlight
#declare SUNLIGHT_RIGHT =        <1,1,1>*0.3;          // Diffuse Sunlight
#declare SUNLIGHT_LEFT =         <1,1,1>*0.125;        // Diffuse Sunlight
#declare SPOTLIGHTCOLOR =        <.75,.75,.5>*1.0;     // Spotlights in front of church
#declare SIDECEILINGLIGHTCOLOR = <1,1,150/255>*1.0;    // Side Ceiling light color
#declare SIDEWALLLIGHTCOLOR =    <1,1,150/255>*1.0;    // Wall sconces light color
#declare CHANDELIERLIGHTCOLOR =  <1,1,150/255>*1.0;    // Chandelier light color
//
// Camera Control
//
// 1 - Back Left
// 2 - Back Center
// 3 - Middle - Center
// 4 - Front - Left
// 5 - User Defined
// 6 - Motion Camera
//
// The scene has 4 default camera locations and one user definable camera.
//
#declare CAMERA = 1;                      // 1 THRU 5
#declare CAMERAZOOM = 1;                  // WIDEANGLE < 1.0 (NORMAL) < ZOOMIN
#declare CAMERA5_FADE = 20;               // Distance Camera flash is at full intensity
#declare PERSPECTIVE = 0;                 // Set to 1 for perspective camera
//
// Camera 5 Setup
//
#declare CAMERA5_LOCATION = <8,6,0>;    // <13,4,6>
#declare CAMERA5_LOOKAT =  <0,14.5,0>;      // <3,2,0>

//
// Turn front mural off by default
//
#declare MURAL = 0;
//
// ==========================================================
//
// Predefined Color Scemes
//      0 - Default - White
//      1 - User Definable
//      2 - Colored Walls, Green Walls, Blue Ceiling, Yellow Front 
//      3 - Mural               
//
#declare COLOR_SCHEME = 0;
//
// Colors for Color Scene 1
//
#declare USERSIDEWALLCOLOR = <1,1,1>;
#declare USERCEILINGCOLOR = <1,1,1>;
#declare USERFRONTCOLOR = <1,1,1>;
#declare USERCURTAINCOLOR = <1,1,1>;
#declare USERFLOORCOLOR = color rgb <87/255,44/255,51/255>;
//                           
// Light Controls - No Debugging
//
// The following switches control what lights are turned on in a
// scene.
//
#if(DEBUG = 0)
#declare CAMERAFLASH = 0;       // 0 (off) or 1 (on) - Camara Flash
#declare SUNLIGHT = 1;          // 0 (off) or 1 (on) - Natural sunlight coming in from the windows
#declare SPOTLIGHT = 0;         // 0 (off) or 1 (on) - Above Jesus, pulpit and lecturn
#declare SIDECEILINGLIGHTS = 0; // 0 (off) or 1 (on) - Upper side lights along length of church
#declare SIDEWALLLIGHTS = 0;    // 0 (off) or 1 (on) - Wall sconces
#declare CEILINGLIGHTS = 0;     // 0 (off) or 1 (on) - Chandekiers (Needs CHANDELIER=1 )
#declare CANDLE_ON = 1;         // 0 (off) or 1 (on)
#declare BACKLIGHTS = 1;        // Can be turned off if doing closeups of front 
#declare AREA_LITES = 1;        // Replaces area_lights with point light sources for test purposes.
#declare TREE_EMISSION = 1.0;
#declare FLAME_EMISSION = 1.0;
//                       
// Object Controls - No Debugging                                                                  
//                                       
#declare ALTERSTUFF = 1;        // 0 (off) or 1 (on)
#declare PEWS = 1;              // 0 (off) or 1 (on)
#declare POV_PEWS = 0;          // 0 (off) or 1 (on)
#declare PEWS_CHOIR = 1;        // 0 (off) or 1 (on)
#declare RAILINGS = 1;          // 0 (off) or 1 (on)
#declare HYMNALS = 1;           // 0 (off) or 1 (on)
#declare LIGHTFIXTURES =1;      // 0 (off) or 1 (on)
#declare CHANDELIER = 1;        // 0 (off) or 1 (on)
#declare JESUS = 1;             // 0 (off) or 1 (on) (Automatically turned off for color scheme 3)
#declare SCREEN = 1;            // 0 (off) or 1 (on)
#declare VIDEO_ON = 0;
#else
//
// Light Controls - DEBUG Mode
//
#declare CAMERAFLASH = 0;       // 0 (off) or 1 (on)
#declare SUNLIGHT = 1;          // 0 (off) or 1 (on) - Natural sunlight coming in from the windows
#declare SPOTLIGHT = 0;         // 0 (off) or 1 (on)
#declare SIDECEILINGLIGHTS = 0; // 0 (off) or 1 (on)
#declare SIDEWALLLIGHTS = 0;    // 0 (off) or 1 (on)
#declare CEILINGLIGHTS = 0;     // 0 (off) or 1 (on) (Needs CHANDELIER=1 )
#declare CANDLE_ON = 0;         // 0 (off) or 1 (on) 
#declare BACKLIGHTS = 1;        // Can be turned off if doing closeups of front
#declare TREE_EMISSION = 1.0;
#declare FLAME_EMISSION = 1.0; 
#declare AREA_LITES = 1;
//                       
// Object Controls - DEBUG Mode                                                                  
//                                       
#declare ALTERSTUFF = 0;        // 0 (off) or 1 (on)
#declare PEWS = 0;              // 0 (off) or 1 (on)
#declare POV_PEWS = 0;          // 0 (off) or 1 (on)
#declare PEWS_CHOIR = 0;        // 0 (off) or 1 (on)
#declare RAILINGS = 0;          // 0 (off) or 1 (on)
#declare HYMNALS = 0;           // 0 (off) or 1 (on)
#declare LIGHTFIXTURES =1;     // 0 (off) or 1 (on)
#declare CHANDELIER = 0;        // 0 (off) or 1 (on)
#declare JESUS = 0;             // 0 (off) or 1 (on) (Automatically turned off for color scheme 3)
#declare SCREEN = 0;             // 0 (off) or 1 (on)
#declare VIDEO_ON = 0;
#end

//
// Only use on final render
//
// Radiosity is a technique to more accurately model ambient light. Many times
// the effect of turning radiosity on are subtle and the effects can only be
// noticed by carefully comparing two identical images; one without radiosity and
// another with it. Ambient light is automatically turned off when using radiosity.
//
// WARNING: Turning Radiosity on can dramatically increase rendering times.
//
#declare RADIOSITY = 0;

#include "rad_def.inc"
global_settings {
  assumed_gamma 1.0
  #if (RADIOSITY=1)
  radiosity {
    //Rad_Settings(Radiosity_Default, off, off)
    //Rad_Settings(Radiosity_Debug, off, off)
    //Rad_Settings(Radiosity_Fast, off, off)
    //Rad_Settings(Radiosity_Normal, off, off)
    //Rad_Settings(Radiosity_2Bounce, off, off)
    //Rad_Settings(Radiosity_Final, off, off)

    //Rad_Settings(Radiosity_OutdoorLQ, off, off)
    //Rad_Settings(Radiosity_OutdoorHQ, off, off)
    //Rad_Settings(Radiosity_OutdoorLight, off, off)
    //Rad_Settings(Radiosity_IndoorLQ, off, off)
    //Rad_Settings(Radiosity_IndoorHQ, off, off)

  }
  #end
}

//
// Animation Section
//
#if(ANIMATION = 1)
//
// Camera 6 is intended to be used for animations, i.e. rendering a sequence of
// images that when stitched together into an avi can be played back. This is most
// commonly done by use of the "clock" variable that varies from 0 to 1. Using this
// variable the cameras location can be made to change between movie frames.
//
// Camera moves from back of the church to the front over 1/2 the count
//
#declare CAMERA = 6;
//
// Animation Sequence 0 - Lighting Sequence
//
#if ( ANIMATION_SEQUENCE = 0 )
//
// Subsequence 0 - Sunrise, no inside lights
//
#if ( ANIMATION_SUBSEQUENCE = 0 )
#declare CAMERA6_LOCATION = <59.3,4,20.5>;
#declare CAMERA6_ZOOM = 1;
#declare CAMERA6_FADE = 20;
#declare CAMERA6_LOOKAT = <0,4,0>;

#declare GLOBAL_AMBIENT = <0,0,0>;
#declare ROOM_AMBIENT = <0,0,0>;
#declare ROOM_DIFFUSE = .6;
#declare TREE_EMISSION = 0;
#declare SUNLIGHTCOLOR =         <1,1,1>*4.0;          // Direct Sunlight
#declare SUNLIGHT_RIGHT =        <1,1,1>*0.3;          // Diffuse Sunlight
#declare SUNLIGHT_LEFT =         <1,1,1>*0.125;        // Diffuse Sunlight
//
// Sunrise - Start diffuse light first
//
#declare SUNLIGHT_RIGHT =        <1,1,1>*0.3*clock;          // Diffuse Sunlight
#declare SUNLIGHT_LEFT =         <1,1,1>*0.125*clock;        // Diffuse Sunlight
#declare SUNLIGHTCOLOR =         <0,0,0>;
#declare GLOBAL_AMBIENT = <0.005*clock,0.005*clock,0.005*clock>;
#declare ROOM_AMBIENT = <0.005*clock,0.005*clock,0.005*clock>;
#declare TREE_EMISSION = 1.0*(clock/0.5);
//
// Start direct sunlight 1/2 way thru
//
#if( clock > 0.5 )
#declare clock2 = (clock-0.5)/0.5;
#declare SUNLIGHTCOLOR = <1,1,1>*4.0*clock2;          // Direct Sunlight
#declare TREE_EMISSION = 1.0;
#end
#end // End of Subseqence 0
//
// Subsequence 1 - Inside lights come on
//
#if( ANIMATION_SUBSEQUENCE = 1 )
#declare CAMERA6_LOCATION = <59.3,4,20.5>;
#declare CAMERA6_ZOOM = 1;
#declare CAMERA6_FADE = 20;
#declare CAMERA6_LOOKAT = <0,4,0>;
#declare GLOBAL_AMBIENT = <.005,.005,.005>;
#declare ROOM_AMBIENT = <.005,.005,.005>;
#declare ROOM_DIFFUSE = .6;
#declare TREE_EMISSION = 1;
#declare SUNLIGHTCOLOR =         <1,1,1>*4.0;          // Direct Sunlight
#declare SUNLIGHT_RIGHT =        <1,1,1>*0.3;          // Diffuse Sunlight
#declare SUNLIGHT_LEFT =         <1,1,1>*0.125;        // Diffuse Sunlight
//
// Make sure lights are on 
//
#declare SPOTLIGHT = 1;
#declare SIDEWALLLIGHTS = 1;
#declare CEILINGLIGHTS = 0;
#declare CHANDELIER = 1;
#declare FLAME_EMISSION = 1.0;
#declare SPOTLIGHTCOLOR = <0,0,0>;
#declare SIDEWALLLIGHTCOLOR = <0,0,0>;
#declare CHANDELIERLIGHTCOLOR =  <1,1,150/255>*1.0;
//
// Spotlights Come on in 1/4 sequence
//
#if(clock <= 0.25)
#declare spotclock = ((clock)/0.25);
#declare SPOTLIGHTCOLOR = <.75,.75,.5>*((1-cos(spotclock*pi))/2);
#else
#declare SPOTLIGHTCOLOR =  <.75,.75,.5>*1.0;
#end
//
// Side Wall Lights Come on from 1/4 to 1/2 of subsequence
//
#if (clock <= 0.25) #declare SIDEWALLLIGHTCOLOR = <0,0,0>; #declare FLAME_EMISSION = 0; #end
#if (clock > 0.25 & clock <= 0.5)
#declare sideclock = ((clock-.25)/0.25);
#declare FLAME_EMISSION = sideclock;
#declare SIDEWALLLIGHTCOLOR = <.75,.75,.5>*((1-cos(sideclock*pi))/2);
#end
#if (clock > 0.5) #declare SIDEWALLLIGHTCOLOR = <.75,.75,.5>*1.0; #declare FLAME_EMISSION = 1.0; #end
//
// Chandeliers Lights come on from 1/2 to end - Sunlight fades away
//
#if(clock<=0.5)
#declare CHANDELIERLIGHTCOLOR =  <0,0,0>;
#declare CEILINGLIGHTS = 0;
#else
#declare CEILINGLIGHTS = 1;
#declare ceilclock = (clock - 0.5)/0.5;
#declare CHANDELIERLIGHTCOLOR =  <1,1,150/255>*((1-cos(ceilclock*pi))/2);
#declare sunclock = 1.0-ceilclock;
#declare SUNLIGHTCOLOR =         <1,1,1>*4.0*((1-cos(sunclock*pi))/2);          // Direct Sunlight
#declare SUNLIGHT_RIGHT =        <1,1,1>*0.3*((1-cos(sunclock*pi))/2);          // Diffuse Sunlight
#declare SUNLIGHT_LEFT =         <1,1,1>*0.125*((1-cos(sunclock*pi))/2);        // Diffuse Sunlight
#end

#end // End of Subsequence 1
#end // End of Sequence 0
//
// Animation Sequence 1
//
// Walk from back left to front
//
#if( ANIMATION_SEQUENCE = 1 )
//
// Path from back left to alter
//
#declare LocationSpline =
spline {
  cubic_spline
    -.1, <60,4,20.5>
    0.00, <59.3,4,20.5>
    0.25, <46.36,4,20.42>
    0.50, <31.54,4,20.59>
    0.60, <19.09,4,16.7>
    0.70, <20.17,4,9.63>
    0.75, <20.83,4,6.12>
    0.80, <20.9,4,2.56>
    0.90, <15.11,5.6,-.05>
    1.00, <8,6,0>
    1.1, <-1,0,0>
    }

//
// Camera location determined by spline
//

#declare CAMERA6_LOCATION = LocationSpline(clock);
#declare CAMERA6_ZOOM = 1;
#declare CAMERA6_FADE = 20;

#declare LookAtSpline =
spline {
  cubic_spline
  -.1, <-1,0,1>
  0.0, <0,4,0>
  0.5, <28,4,-25>
  1.0, <56,4,0>
  1.1, <1,0,1>
}
#declare CAMERA6_LOOKAT = <0,4,0>;


#if(clock<=0.5) #declare CAMERA6_LOOKAT = <0,4,0>;
#elseif(clock>0.7)  #declare CAMERA6_LOOKAT = <0,4,0>;
#else
#declare lookclock = (0.7 - clock)/0.2;
#if(lookclock <= 0.5)
#declare CAMERA6_LOOKAT = LookAtSpline(lookclock*2);
#else
#declare CAMERA6_LOOKAT = LookAtSpline((1.0-lookclock)*2);
#end
#end
//#declare text_str = concat(str(clock,4,3)," <",vstr(3,CAMERA6_LOCATION,",",3,3) ,"> <",vstr(3,CAMERA6_LOOKAT,",",3,3),">");
//#debug text_str
//#debug "\n"
#end

//
// Animation Sequence 2
//
// Look up at Jesus
//
#if( ANIMATION_SEQUENCE = 2 )
#declare CAMERA6_FADE = 20;
#declare CAMERA6_LOCATION = <8,6,0>;
#declare YLOOKAT = 4 + (clock*9.5);
#declare CAMERA6_LOOKAT = <0,YLOOKAT,0>;
#declare CAMERA6_ZOOM = 1+(clock*3);
#end
//
// Light on Jesus Face
//
#if( ANIMATION_SEQUENCE = 3 )
#declare  COLOR_SCHEME = 0;
//
// Light Sphere
//
#declare LIGHT_SPHERE =
object{
  sphere { <0,0,0>,1}
  hollow
  pigment{ color rgbf<1,1,1,1>}// clear!
  finish { ambient 0 diffuse 0 }
  interior {
    media {
      emission 1
      intervals 9
      samples 1, 20
      confidence 0.9999
      variance 1/100
      density{ spherical
               ramp_wave
//               turbulence 0.15
               color_map {
               [0.0 color rgb <0,0,0>]
               [0.5 color rgb <0,0,0>]
               [1.0 color rgb <1,1,1>]
                         } // end color_map
 //           scale <1,2.5,1>
          } // end of density
    }//end of media
}}
//
// Set camera
//
#if(clock <= 0.333)
#declare clock1 = clock/0.333;
//
// 1st Third - Move Back as light sphere grows
//
#declare CAMERA6_LOCATION = <8+(clock1*22),6+(clock1*-2),0>;
#declare CAMERA6_LOOKAT = <0,13.5,0>;
#declare CAMERA6_ZOOM = 4-(clock1*3);
#declare CAMERA6_FADE = 20;
//
// Scale the Light Sphere & intensity
//
#declare LIGHT_SPHERE_INTENSITY = clock1;
#declare LIGHT_SCALE = clock1 * 10; 
object { LIGHT_SPHERE scale LIGHT_SCALE translate < .7,13.5,0> }
light_source { < .7,13.5,0> color rgb <LIGHT_SPHERE_INTENSITY,LIGHT_SPHERE_INTENSITY,LIGHT_SPHERE_INTENSITY> }
#end
//
// 2nd Third - Move light sphere towards camera
//
#if(clock > 0.333 & clock <= 0.666)
#declare clock2 = (clock-0.333)/0.333;
#declare LIGHT_SPHERE_INTENSITY = 1;
#declare CAMERA6_LOCATION = <30,4,0>;
#declare CAMERA6_LOOKAT = <0,13.5-(clock2*9.5),0>;
#declare CAMERA6_ZOOM = 1;
#declare CAMERA6_FADE = 20; 
object { LIGHT_SPHERE scale 10 translate < .7+(clock2*24.3),13.5-(clock2*9.5),0> }
light_source { < .7+(clock2*24.3),13.5-(clock2*9.5),0> color rgb <LIGHT_SPHERE_INTENSITY,LIGHT_SPHERE_INTENSITY,LIGHT_SPHERE_INTENSITY> }
#end
//
// 3rd - Scale the light sphere to nothing
//
#if(clock > 0.666)
#declare clock3 = (clock-0.666)/0.333;
#declare CAMERA6_LOCATION = <30,4,0>;
#declare CAMERA6_LOOKAT = <0,4,0>;
#declare CAMERA6_ZOOM = 1;
#declare CAMERA6_FADE = 20; 
object { LIGHT_SPHERE scale 10-(clock3*10) translate < 24.3,4,0> }
#declare LIGHT_SPHERE_INTENSITY = 1-clock3;
light_source { < 24.3,4,0> color rgb <LIGHT_SPHERE_INTENSITY,LIGHT_SPHERE_INTENSITY,LIGHT_SPHERE_INTENSITY> }
#declare  COLOR_SCHEME = 3;
#end
#declare text_str = concat(str(clock,4,3)," <",vstr(3,CAMERA6_LOCATION,",",3,3) ,"> <",vstr(3,CAMERA6_LOOKAT,",",3,3),">");
#debug text_str
#debug "\n"
#end
//
// Additional Animation Sequences
//


#end
//
// Load Main body of the scene
//
  
#include "0_church_scene_body.pov"