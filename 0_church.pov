#version 3.7;
//
// Set to 1 for debugging
//
#declare DEBUG = 0;
//
// Amount of Ambient Light
//
#declare GLOBAL_AMBIENT = <.005,.005,.005>;
#declare ROOM_AMBIENT = <.005,.005,.005>;
#declare ROOM_DIFFUSE = .6;
//
// Lighting Colors
//
#declare SUNLIGHTCOLOR = <4,4,4>;                 // Direct SUnlight
#declare SUNLIGHT_RIGHT = <.3,.3,.3>;             // Diffuse Sunlight
#declare SUNLIGHT_LEFT = <.125,.125,.125>;        // Diffuse Sunlight
//#declare SPOTLIGHTCOLOR = <1.25,.6,.35>;        // Yellow Orange
#declare SPOTLIGHTCOLOR = <.75,.75,.5>;           // Yellow
#declare SIDECEILINGLIGHTCOLOR = <1,1,150/255>;
#declare SIDEWALLLIGHTCOLOR = <1,1,150/255>;
#declare CHANDELIERLIGHTCOLOR = <1,1,150/255>;

//
//=================== Scene Control =========================
//
// Camera Control
//
// 1 - Back Left
// 2 - Back Center
// 3 - Middle - Center
// 4 - Front - Left
// 5 - User Defined
//
#declare CAMERA = 2;                    // 1 THRU 5
#declare CAMERAZOOM = .8;               // WIDEANGLE < 1.0 (NORMAL) < ZOOMIN
#declare PERSPECTIVE = 0;               // Set to 1 for perspective camera
//
// Camera 5 Setup
//
#declare CAMERA5_LOCATION = <56,4,24>;    // <13,4,6>
#declare CAMERA5_LOOKAT =  <20,8,-24>;      // <3,2,0>
#declare CAMERA5_FADE = 20;              // Distance Camera flash is at full intensity

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
#if(DEBUG = 0)
#declare CAMERAFLASH = 0;       // 0 (off) or 1 (on) - Camara Flash
#declare SUNLIGHT = 1;          // 0 (off) or 1 (on) - Natural sunlight coming in from the windows
#declare SPOTLIGHT = 1;         // 0 (off) or 1 (on) - Above Jesus, pulpit and lecturn
#declare SIDECEILINGLIGHTS = 0; // 0 (off) or 1 (on) - Upper side lights along length of church
#declare SIDEWALLLIGHTS = 0;    // 0 (off) or 1 (on) - Wall sconces
#declare CEILINGLIGHTS = 0;     // 0 (off) or 1 (on) - Chandekiers (Needs CHANDELIER=1 )
#declare BACKLIGHTS = 1;        // Can be turned off if doing closeups of front 
#declare AREA_LITES = 1;
//#declare SUNLIGHT_LEFT = <1,1,1>;    // Outside sunlight intensity
//#declare SUNLIGHT_RIGHT = <2,2,2>;    // Outside sunlight intensity
//                       
// Object Controls - No Debugging                                                                  
//                                       
#declare ALTERSTUFF = 1;        // 0 (off) or 1 (on)
#declare PEWS = 1;              // 0 (off) or 1 (on)
#declare PEWS_CHOIR = 1;        // 0 (off) or 1 (on)
#declare RAILINGS = 1;          // 0 (off) or 1 (on)
#declare HYMNALS = 1;           // 0 (off) or 1 (on)
#declare HYMN_BOARD = 1;        // 0 (off) or 1 (on)
#declare LIGHTFIXTURES =1;     // 0 (off) or 1 (on)
#declare CHANDELIER = 1;        // 0 (off) or 1 (on)
#declare JESUS = 1;             // 0 (off) or 1 (on) (Automatically turned off for color scheme 3)
#declare SCREEN = 1;             // 0 (off) or 1 (on)
#else
//
// Light Controls - DEBUG Mode
//
#declare CAMERAFLASH = 0;       // 0 (off) or 1 (on)
#declare SUNLIGHT = 1;          // 0 (off) or 1 (on) - Natural sunlight coming in from the windows
#declare SPOTLIGHT = 1;         // 0 (off) or 1 (on)
#declare SIDECEILINGLIGHTS = 0; // 0 (off) or 1 (on)
#declare SIDEWALLLIGHTS = 0;    // 0 (off) or 1 (on)
#declare CEILINGLIGHTS = 0;     // 0 (off) or 1 (on) (Needs CHANDELIER=1 )
#declare BACKLIGHTS = 1;        // Can be turned off if doing closeups of front 
#declare AREA_LITES = 1;
//                       
// Object Controls - DEBUG Mode                                                                  
//                                       
#declare ALTERSTUFF = 0;        // 0 (off) or 1 (on)
#declare PEWS = 0;              // 0 (off) or 1 (on)
#declare PEWS_CHOIR = 0;        // 0 (off) or 1 (on)
#declare RAILINGS = 0;          // 0 (off) or 1 (on)
#declare HYMNALS = 0;           // 0 (off) or 1 (on)
#declare HYMN_BOARD = 0;        // 0 (off) or 1 (on)
#declare LIGHTFIXTURES =0;     // 0 (off) or 1 (on)
#declare CHANDELIER = 0;        // 0 (off) or 1 (on)
#declare JESUS = 0;             // 0 (off) or 1 (on) (Automatically turned off for color scheme 3)
#declare SCREEN = 0;             // 0 (off) or 1 (on)
#end

//
// Only use on final render
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
  
#include "0_church_scene_body.pov"