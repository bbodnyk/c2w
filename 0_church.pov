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
// Amount of Ambient Light
//
// Ambient light is the amount of illumination an object receives when it
// is not directly illuminated by light.

// NOTE: These values have been carefully tweeked by illuminating the church
// with just sunlight. They normally should be left as is.
//
#declare GLOBAL_AMBIENT = <.005,.005,.005>;
#declare ROOM_AMBIENT = <.005,.005,.005>;
#declare ROOM_DIFFUSE = .6;
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
//
// The scene has 4 default camera locations and one user definable camera.
//
#declare CAMERA = 2;                      // 1 THRU 5
#declare CAMERAZOOM = 1;                  // WIDEANGLE < 1.0 (NORMAL) < ZOOMIN
#declare CAMERA5_FADE = 20;               // Distance Camera flash is at full intensity
#declare PERSPECTIVE = 0;                 // Set to 1 for perspective camera
//
// Camera 5 Setup
//
#declare CAMERA5_LOCATION = <20,10,10>;    // <13,4,6>
#declare CAMERA5_LOOKAT =  <5.0, 10.0, 10.0>;      // <3,2,0>
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
#declare SPOTLIGHT = 1;         // 0 (off) or 1 (on) - Above Jesus, pulpit and lecturn
#declare SIDECEILINGLIGHTS = 1; // 0 (off) or 1 (on) - Upper side lights along length of church
#declare SIDEWALLLIGHTS = 1;    // 0 (off) or 1 (on) - Wall sconces
#declare CEILINGLIGHTS = 1;     // 0 (off) or 1 (on) - Chandekiers (Needs CHANDELIER=1 )
#declare BACKLIGHTS = 1;        // Can be turned off if doing closeups of front 
#declare AREA_LITES = 1;        // Replaces area_lights with point light sources for test purposes.
//                       
// Object Controls - No Debugging                                                                  
//                                       
#declare ALTERSTUFF = 1;        // 0 (off) or 1 (on)
#declare PEWS = 1;              // 0 (off) or 1 (on)
#declare PEWS_CHOIR = 1;        // 0 (off) or 1 (on)
#declare RAILINGS = 1;          // 0 (off) or 1 (on)
#declare HYMNALS = 1;           // 0 (off) or 1 (on)
#declare LIGHTFIXTURES =1;      // 0 (off) or 1 (on)
#declare CHANDELIER = 1;        // 0 (off) or 1 (on)
#declare JESUS = 1;             // 0 (off) or 1 (on) (Automatically turned off for color scheme 3)
#declare SCREEN = 1;            // 0 (off) or 1 (on)
#else
//
// Light Controls - DEBUG Mode
//
#declare CAMERAFLASH = 1;       // 0 (off) or 1 (on)
#declare SUNLIGHT = 0;          // 0 (off) or 1 (on) - Natural sunlight coming in from the windows
#declare SPOTLIGHT = 1;         // 0 (off) or 1 (on)
#declare SIDECEILINGLIGHTS = 0; // 0 (off) or 1 (on)
#declare SIDEWALLLIGHTS = 0;    // 0 (off) or 1 (on)
#declare CEILINGLIGHTS = 0;     // 0 (off) or 1 (on) (Needs CHANDELIER=1 )
#declare BACKLIGHTS = 1;        // Can be turned off if doing closeups of front 
#declare AREA_LITES = 1;
//                       
// Object Controls - DEBUG Mode                                                                  
//                                       
#declare ALTERSTUFF = 1;        // 0 (off) or 1 (on)
#declare PEWS = 0;              // 0 (off) or 1 (on)
#declare PEWS_CHOIR = 0;        // 0 (off) or 1 (on)
#declare RAILINGS = 0;          // 0 (off) or 1 (on)
#declare HYMNALS = 0;           // 0 (off) or 1 (on)
#declare LIGHTFIXTURES =0;     // 0 (off) or 1 (on)
#declare CHANDELIER = 0;        // 0 (off) or 1 (on)
#declare JESUS = 0;             // 0 (off) or 1 (on) (Automatically turned off for color scheme 3)
#declare SCREEN = 0;             // 0 (off) or 1 (on)
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
// Load Main body of the scene
//  
#include "0_church_scene_body.pov"