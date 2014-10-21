#version 3.7;
//
// Church.pov - 
//
// Default Colors
//
#declare SIDEWALLCOLOR = color rgb <1,1,1>;
#declare CEILINGCOLOR =  color rgb <1,1,1>;
#declare FRONTCOLOR =  color rgb <1,1,1>;
#declare CURTAINCOLOR = color rgb <248/255,231/255,184/255>;
#declare FLOORCOLOR = color rgb <87/255,44/255,51/255>;
#declare SUNLIGHT_RIGHT = <.4,.4,.4>;
#declare SUNLIGHT_LEFT = <.125,.125,.125>;



//
// Include Files
//
#include "colors.inc"
#include "church_colors.inc"
#include "woodmaps.inc"
#include "woods.inc"                
#include "glass.inc"                                                               
#include "textures.inc"
#include "metals.inc"
#include "golds.inc"

#declare DEBUG = 0;
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
#declare CAMERAZOOM = .9;                // WIDEANGLE < 1.0 (NORMAL) < ZOOMIN
//
// Camera 5 Setup
//
#declare CAMERA5_LOCATION = <20,5,0>;    // <13,4,6>
#declare CAMERA5_LOOKAT =  <0,2,0>;      // <3,2,0>
#declare CAMERA5_FADE = 20;              // Distance Camera flash is at full intensity
#declare PERSPECTIVE = 0;
//
// Amount of Ambient Light
//
#declare GLOBAL_AMBIENT = <.1,.1,.1>;
#declare ROOM_AMBIENT = <.1,.1,.1>;
#declare ROOM_DIFFUSE = .6;

#include "church_texture.inc"

#if(DEBUG = 0)
//                           
// Light Controls
//
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
// Objects                                                                  
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
// DEBUG Mode
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
// Objects                                                                  
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
// Color Scheme Control
//
// The background is used to set the color of the Background      

                                    
background { color Black } 

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
//      2 - Colored Walls 
//      3 - Mural               
//
#declare COLOR_SCHEME = 0;
//
// White Color Scheme
//
#if(COLOR_SCHEME = 0)
#declare SIDEWALLCOLOR = color rgb <255/255,250/255,235/255>;
#declare CEILINGCOLOR =  color rgb <255/255,250/255,235/255>;
#declare FRONTCOLOR =  color rgb <255/255,250/255,235/255>;
#declare CURTAINCOLOR = color rgb <248/255,231/255,184/255>;
#end
//
// User Definable Color Scheme
//
// Change the rgb values to change the color
// of front wall, side walls and ceiling
//                 
#if(COLOR_SCHEME = 1)
#declare SIDEWALLCOLOR = color rgb <1,.5,1>;
#declare CEILINGCOLOR =  color rgb <1,.25,1>;
#declare FRONTCOLOR =  color rgb <1,.5,1>;
#declare CURTAINCOLOR = color rgb <1,0,1>;
#end
//
// Colored Walls
//
// Front - Light Yellow
// Walls - Light Green
// Ceiling - Light Blue
//
#if(COLOR_SCHEME = 2)                                   
#declare SIDEWALLCOLOR = color rgb <150/255,236/255,151/255>;
#declare CEILINGCOLOR =  color rgb <165/255,247/255,240/255>;
#declare FRONTCOLOR =  color rgb <255/255,255/255,161/255>;
#declare CURTAINCOLOR = color rgb <248/255,231/255,184/255>;
#end
//
// Sistene Chapel Mural
//
// Front - Mural
// Walls - Light Green
// Ceiling - Light Blue
//
#if(COLOR_SCHEME = 3)                                   
#declare SIDEWALLCOLOR = color rgb <150/255,236/255,151/255>;
#declare CEILINGCOLOR =  color rgb <165/255,247/255,240/255>;
#declare FRONTCOLOR =  color rgb <255/255,255/255,161/255>;
#declare CURTAINCOLOR = color rgb <248/255,231/255,184/255>;
#declare JESUS = 0;
#declare MURAL = 1;
#end

#include "church_texture.inc"
//
// Only use on final render
//
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
  
#include "church_cameras.inc"
#include "church_lights.inc"
//
// Basic Church, Walls, floor and Ceiling
//
#include "floor.inc"
object { FLOOR } 
#include "ceiling.inc"                      
object { CEILING }
#include "wall_front.inc"
object { WALL_FRONT }
#include "wall_back.inc"
object { WALL_BACK }
#include "wall_left.inc"
object { WALL_LEFT }
#include "wall_right.inc"                                        
object { WALL_RIGHT }

//box { <20,0,-24><60,16,-24.5> pigment { color White }}

#include "column_ledge.inc"
object { COLUMN_LEDGE }
#include "speakers.inc"
object { SPEAKERS }
#include "picture_arch.inc"
object { PICTURE_ARCH translate <0.5/12,0,0> }
#include "outside.inc"
object { OUTSIDE hollow scale <1.25,1,1> translate <-30,-6,-10> }

#if(SCREEN = 1)
#include "video_screen.inc"     
object {VIDEO_SCREEN  scale <1/12,1/12,1/12> rotate <0,90,0> translate <5.0, 10.0, 10.0>}
#end

#if(RAILINGS = 1)
#include "railing_front.inc"
#include "railing_choir.inc"
#include "railing_organ.inc"
object { RAILING_FRONT }
object { RAILING_CHOIR }
object { RAILING_ORGAN }
#end

#if(PEWS = 1)
#include "pews.inc"
object { PEWS }
#end

#if(PEWS_CHOIR = 1)
#include "pews_choir.inc"
object { PEWS_CHOIR }
#end                                                                     

#if(JESUS = 1)
#include "picture.inc"
object { PICTURE scale <1/12,1/12,1/12> scale <1,1.125,1> rotate <0,90,0> translate <1/12,6.33,0>} 

#include "frame.inc"
object { FRAME scale <1/12,1/12,1/12> scale <1,1.125,1> rotate <0,90,0> translate <1/12,6.33,0>}
#end

#if(ALTERSTUFF = 1)                        


#include "cross.inc"
object { CROSS scale <1/12,1/12,1/12> translate <0,4,0> }
      
#include "spotlight.inc"      
object { SPOTLIGHT scale <1/12,1/12,1/12> translate <4,18,0> }

#include "hanging_light.inc"
object { HANGING_LIGHT scale <1/12,1/12,1/12> translate <6,18,0> }
object { FLAME scale <1/12,1/12,1/12> translate <6, 15.5, 0>}
light_source { <0,0,0> color rgb <1,1,1> fade_distance .5 fade_power 2 shadowless translate <6,15.5,0> }


#include "alter.inc"
object { ALTER scale <1/12,1/12,1/12> rotate <0,90,0> translate <3.37,0,0> }

#include "alter_cloth.inc"        
object { ALTER_CLOTH scale <1/12,1/12,1/12> 
        texture {
        pigment { image_map { jpeg "alter_fall.jpg"  once } translate <-.5,-.575,0> rotate <0,90,0> scale <4,5,6.5> }
        finish { ambient GLOBAL_AMBIENT diffuse .6 }
        } translate <4.41+1/12,2.875,0>}

#include "chalice.inc"
object { CHALICE scale <1/12,1/12,1/12> rotate <0,70,0> translate <3.8,2.875,-1.97> }

#include "bread_basket.inc"
object { BREAD_BASKET scale <1/12,1/12,1/12> scale <1.25,1.25,1.25> rotate <0,25,0> translate <3.67,2.89,1.75> }

#include "vase.inc"                                                        
object { VASE scale <1/12,1/12,1/12> translate <3,2.89,-2.128> }
object { VASE scale <1/12,1/12,1/12> rotate <0,90,0> translate <3,2.89,2.128> }
                                                                                            
#include "alter_flower_stand.inc"
object { ALTER_FLOWER_STAND  scale <1/12,1/12,1/12> translate <3.35,0,3.77> }
object { ALTER_FLOWER_STAND  scale <1/12,1/12,1/12> translate <3.35,0,-3.77> }

                
#include "bible.inc"
object { BIBLE scale <1/12,1/12,1/12> translate <3.37,2.875,0> }
#include "bible_cloth.inc"
object { BIBLE_CLOTH scale <1/12,1/12,1/12> translate <3.37,2.875,0> }

#include "pulpit.inc"
object { PULPIT scale <1/12,1/12,1/12> translate <13.57,0,-6.37> }
#include "microphone.inc"
object { MICROPHONE scale <1/12,1/12,1/12> translate <13.83,3.52,-5.41> } 

#include "pulpit_cloth.inc"
object { PULPIT_CLOTH scale <1/12,0.75/12,.75/12> translate <13.57,1.01,-6.37>}

#include "lecturn.inc"          
object { LECTURN scale <1/12,1/12,1/12> translate <13.84,0,5.817> } 

#include "lecturn_cloth.inc"
object { LECTURN_CLOTH scale <1/12,1/12,1/12> translate <13.84,0,5.817>}

#include "LECTURN_mic.inc"
object { LECTURN_MIC }

#include "organ.inc"
object { ORGAN  scale <1/12,1/12,1/12> translate <9.57,0,10.35>}
#include "lamp.inc"
object { LAMP scale <1/12,1/12,1/12> rotate <0,90,0> translate <9.65,4.17,11> }

#include "piano.inc"
object { PIANO  scale <1/12,1/12,1/12> rotate <0,-70,0> translate <3.8,0,7.3>}

#include "baptism_font.inc"
object {BAPTISM_FONT scale <1/12,1/12,1/12> translate <16.584,-1.5,-23.33> }
#end

#if(HYMN_BOARD = 1)
#include "hymn_board.inc"
object { HYMN_BOARD scale <1/12,1/12,1/12> rotate <0,80,0> translate <15.75,6,-23.65> }
object { HYMN_BOARD scale <1/12,1/12,1/12> rotate <0,120,0> translate <15.75,6,23.65> }
#end

#if(LIGHTFIXTURES = 1)
#include "wall_light.inc"
object { WALL_LIGHT scale <1/12,1/12,1/12> translate <17.42,5.5,-24.58> }
object { WALL_LIGHT scale <1/12,1/12,1/12> translate <24.42,5.5,-24.58> }
object { WALL_LIGHT scale <1/12,1/12,1/12> translate <31.42,5.5,-24.58> }
object { WALL_LIGHT scale <1/12,1/12,1/12> translate <38.42,5.5,-24.58> }
object { WALL_LIGHT scale <1/12,1/12,1/12> translate <45.42,5.5,-24.58> }

object { WALL_LIGHT scale <1/12,1/12,1/12> rotate < 0,180,0> translate <24.42,5.5,24.58> }
object { WALL_LIGHT scale <1/12,1/12,1/12> rotate < 0,180,0> translate <31.42,5.5,24.58> }
object { WALL_LIGHT scale <1/12,1/12,1/12> rotate < 0,180,0> translate <38.42,5.5,24.58> }
object { WALL_LIGHT scale <1/12,1/12,1/12> rotate < 0,180,0> translate <45.42,5.5,24.58> }
#end

#if(CHANDELIER = 1)                    
#include "chandelier.inc"                                                        
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,180,0>  translate <21.67,17.66,-12.05>}
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,180,0> translate <37.67,17.66,-12.05>}
#if(BACKLIGHTS = 1)
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,180,0> translate <53.67,17.66,-12.05>}
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,0,0> translate <21.67,17.66,12.05>}
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,0,0> translate <37.67,17.66,12.05>}
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,0,0> translate <53.67,17.66,12.05>}
#end
#end
//
// Pew Hymnals, Bibles, Cards and Pencils
//
// hymnal_percent     - % of hymnals in pews
// bible_percent      - % of bibles in pews
// card_percent       - % of cards in pews
//
#if(HYMNALS = 1)
#include "hymnal.inc"
#include "pew_bible.inc"

#declare Times = 0;                  
#declare Count = 0;
#declare xdiff = 0;                                           
#declare zdiff = 0;
#declare rot = 0;
#declare hynm_percent = 0.15;
#declare bible_percent = 0.1;
#declare card_percent = 0.25;
#declare pencil_percent = 0.33;

#declare hymnal_seed = seed(1); // Hymnals
#declare bible_seed = seed(1); // Bibles
#declare card_seed = seed(1); // Bibles
#declare pencil_seed = seed(1); // Bibles

#while (Count < 12 )
#declare xdiff = Count * 3.0;
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>hynm_percent)object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,17.4>} #end
#if (rand(hymnal_seed)>hynm_percent)object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,-17.4>} #end
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>hynm_percent) object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,16.0>} #end
#if (rand(hymnal_seed)>hynm_percent) object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,-16.0>} #end
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;                                                                                            
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>hynm_percent) object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,12.1>} #end
#if (rand(hymnal_seed)>hynm_percent) object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,-12.1>} #end
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>hynm_percent) object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,10.8>} #end
#if (rand(hymnal_seed)>hynm_percent) object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,-10.8>} #end
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>hynm_percent)object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,6.9>} #end
#if (rand(hymnal_seed)>hynm_percent)object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,-6.9>} #end
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>hynm_percent)object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,5.5>} #end
#if (rand(hymnal_seed)>hynm_percent)object { HYMNAL scale <1/12,1/12,1/12> scale <.9,.9,.9> rotate <rot,0,0> rotate <0,0,-3.33> translate <56.78-xdiff,-0.49,-5.5>} #end
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>bible_percent)object { PEWBIBLE scale <1/12,1/12,1/12> scale <.8,.8,.8> rotate <rot,0,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.78-xdiff,-0.49,16.7>} #end
#if (rand(hymnal_seed)>bible_percent)object { PEWBIBLE scale <1/12,1/12,1/12> scale <.8,.8,.8> rotate <rot,0,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.78-xdiff,-0.49,-16.7>} #end
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>bible_percent)object { PEWBIBLE scale <1/12,1/12,1/12> scale <.8,.8,.8> rotate <rot,0,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.78-xdiff,-0.49,11.4>} #end
#if (rand(hymnal_seed)>bible_percent)object { PEWBIBLE scale <1/12,1/12,1/12> scale <.8,.8,.8> rotate <rot,0,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.78-xdiff,-0.49,-11.4>} #end
#declare rot = ((rand(hymnal_seed)-0.5)*2)*3;
#declare yrand = (rand(hymnal_seed))*0.1;
#if (rand(hymnal_seed)>bible_percent)object { PEWBIBLE scale <1/12,1/12,1/12> scale <.8,.8,.8> rotate <rot,0,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.78-xdiff,-0.49,6.2>} #end
#if (rand(hymnal_seed)>bible_percent)object { PEWBIBLE scale <1/12,1/12,1/12> scale <.8,.8,.8> rotate <rot,0,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.78-xdiff,-0.49,-6.2>} #end



#declare CARD = 
object {
box { <-1.75, -3.5, -.01>, <1.5, 3.5, .01> texture { pigment { image_map { jpeg "giving_card.jpg" } rotate <0,0,0> scale <3.75,7.5,4> } finish { ambient .1 }
        translate <1.75,3.75,0>}}
        }
        
#declare CARD2 = 
object {                                                                                                                         
box { <-1.75, -3.5, -.01>, <1.5, 3.5, .01> texture { pigment { image_map { jpeg "giving_card.jpg" } rotate <0,0,0> scale <3.75,7.5,4> } finish { ambient .1 }
        translate <1.75,3.75,0>}}
        }
        
#declare yrand = 3.5/12;        
#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,17.92>} #end
#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,-17.92>} #end

#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,15.42>} #end
#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,-15.42>} #end

#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,12.67>} #end
#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,-12.67>} #end

#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,10.17>} #end
#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,-10.17>} #end

#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,7.41>} #end 
#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,-7.41>} #end

#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,4.91>} #end
#if (rand(card_seed)>card_percent)object { CARD scale <1/12,1/12,1/12>  rotate<0,90,0> rotate <0,0,-3.33> translate <0,yrand,0> translate <56.6-xdiff,-0.42,-4.91>} #end             

#declare Count = Count+1;   // increment our counter
#end
//
// Pencils in pews
//
#include "pencil.inc"

#declare Count = 0;
#while (Count < 11 )
#declare xdiff = Count * 3.0;

#declare yrand = ((rand(pencil_seed)-0.5)*2)*(1/12);
#declare xrot = ((rand(pencil_seed)-0.5)*2)*3;
#declare yrot = ((rand(pencil_seed)-0.5)*2)*360;
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,18.167> } #end
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,-18.167> } #end
#declare yrand = ((rand(pencil_seed)-0.5)*2)*(1/12);
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,15.167> } #end
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,-15.167> } #end
#declare yrand = ((rand(pencil_seed)-0.5)*2)*(1/12);
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,12.917> } #end
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,-12.917> } #end
#declare yrand = ((rand(pencil_seed)-0.5)*2)*(1/12);
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,9.917> } #end
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,-9.917> } #end
#declare yrand = ((rand(pencil_seed)-0.5)*2)*(1/12);
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,7.667> } #end
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,-7.667> } #end
#declare yrand = ((rand(pencil_seed)-0.5)*2)*(1/12);
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,4.667> } #end
#if (rand(pencil_seed)>pencil_percent)object { PENCIL scale <1/12,1/12,1/12> rotate <xrot,0,0> rotate <0,yrot,0> translate <56.6-xdiff,-0.44+yrand,-4.667> } #end
#declare Count = Count+1;   // increment our counter
#end


#end
