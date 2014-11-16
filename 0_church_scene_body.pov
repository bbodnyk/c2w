
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

#declare MURAL = 0;
#declare PERSPECTIVE = 0;
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

#include "church_texture.inc"



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

//
// White Color Scheme
//
#if(COLOR_SCHEME = 0)
#declare SIDEWALLCOLOR = color rgb <255/255,250/255,235/255>;
#declare CEILINGCOLOR =  color rgb <255/255,250/255,235/255>;
#declare FRONTCOLOR =  color rgb <255/255,250/255,235/255>;
#declare CURTAINCOLOR = color rgb <248/255,231/255,184/255>;
#declare FLOORCOLOR = color rgb <87/255,44/255,51/255>;
#end
//
// User Definable Color Scheme
//
// Change the rgb values to change the color
// of front wall, side walls and ceiling
//                 
#if(COLOR_SCHEME = 1)
#declare SIDEWALLCOLOR = color USERSIDEWALLCOLOR;
#declare CEILINGCOLOR =  color USERCEILINGCOLOR;
#declare FRONTCOLOR =  color USERFRONTCOLOR;
#declare CURTAINCOLOR = color USERCURTAINCOLOR;
#declare FLOORCOLOR = color USERFLOORCOLOR;
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
#declare JESUS = 1;
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

#include "church_cameras.inc"
#include "church_lights.inc" 


sky_sphere {
  pigment {
    gradient y
      color_map {
        [ 0.5  color CornflowerBlue ]
        [ 1.0  color MidnightBlue ]
        }
    scale 2
    translate -1
    }
  emission rgb <1,1,1>
  }



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
#include "left_outside.inc"
object { LEFT_OUTSIDE translate <0,0,2/12>}
#include "outside.inc"
object { OUTSIDE hollow scale <1.25,1,1> translate <-30,-6,-10> }
object { OUTSIDE hollow scale <1.25,1,1> scale <-1,1,1> translate <-30-30,-6,-10> }
object { OUTSIDE hollow scale <1.25,1,1> scale <-1,1,1> translate <120,-6,-10> }

#include "column_ledge.inc"
object { COLUMN_LEDGE }
//#include "pov_column_ledge.inc"
//object { COLUMN_LEDGE translate <0,12,-5.38877>}

#include "speakers.inc"
object { SPEAKERS }
#include "picture_arch.inc"
object { PICTURE_ARCH finish{ ambient GLOBAL_AMBIENT }translate <0.5/12,0,0> }

#if(WINDOWS = 1)
#include "window.inc"
object { WINDOW scale <1/12,1/12,1/12> translate <7.0,4.71,-24.58> }
object { WINDOW scale <1/12,1/12,1/12> translate <20.92,4.71,-24.58> }
object { WINDOW scale <1/12,1/12,1/12> translate <27.92,4.71,-24.58> }
object { WINDOW scale <1/12,1/12,1/12> translate <34.92,4.71,-24.58> }
object { WINDOW scale <1/12,1/12,1/12> translate <41.92,4.71,-24.58> }
object { WINDOW scale <1/12,1/12,1/12> scale <1,1,-1> translate <27.92,4.71,24.58> }
object { WINDOW scale <1/12,1/12,1/12> scale <1,1,-1> translate <34.92,4.71,24.58> }
object { WINDOW scale <1/12,1/12,1/12> scale <1,1,-1> translate <41.92,4.71,24.58> }
#include "door_small.inc"
object { DOOR_SMALL scale <1/12,1/12,1/12> translate <20.92,-2,24.92> }
#end


#if(RAILINGS = 1)
#include "railing_front.inc"
//#include "railing_choir.inc"
#include "railing_organ.inc"
object { RAILING_FRONT }
//object { RAILING_CHOIR }
object { RAILING_ORGAN }
#include "pov_railing_choir.inc"
object { RAILING_CHOIR scale <1/12,1/12,1/12> translate <1.5,0,-10.92> }
#end


#if(PEWS = 1)
#include "pov-pew.inc"
#declare pewcount=0;
#while (pewcount<12)
object { PEW(198,1) scale <1/12,1/12,1/12> translate <284/12+(pewcount*3),-2,99/12+38/12> }
object { PEW(198,1) scale <1/12,1/12,1/12> translate <284/12+(pewcount*3),-2,-(99/12+38/12)> } 
#declare pewcount = pewcount + 1;
#end
#end



#if(PEWS_CHOIR = 1)
//#include "pews_choir.inc"
//object { PEWS_CHOIR }
#include "pov-pew.inc"
object { PEW(72,0) scale <1/12,1/12,1/12> rotate <0,90,0> translate <9,0,-10.87> }
object { PEW(122,0) scale <1/12,1/12,1/12> rotate <0,90,0> translate <6.75,0,-13.91> }
object { PEW(63,0) scale <1/12,1/12,1/12> rotate <0,90,0> translate <4.63,1,-16.91> }
object { PEW(48,0) scale <1/12,1/12,1/12> rotate <0,90,0> translate <9.84,0.5,-16.91> }
object { PEW(118,0) scale <1/12,1/12,1/12> rotate <0,90,0> translate <6.92,1.0,-20.66> }
object { PEW(138,0) scale <1/12,1/12,1/12> rotate <0,90,0> translate <6.09,1.5,-24.41> }
//
object { PEW(72,0) scale <1/12,1/12,1/12> rotate <0,-90,0> translate <9.57,0,10.35> }
#end                                                                     

#if(JESUS = 1)
#include "picture.inc"
object { PICTURE scale <1/12,1/12,1/12> scale <1,1.125,1> rotate <0,90,0> translate <1/12,6.33,0>} 

#include "frame.inc"
object { FRAME scale <1/12,1/12,1/12> scale <1,1.125,1> rotate <0,90,0> translate <1/12,6.33,0>}
#end
//
// Exploding Light
//
/*
sphere { <0,14.5,0>,1 
	pigment{ rgbt 1}
	interior{ media{ emission rgbf <100, 100, 100, 0.1>
			 density{ cylindrical color_map{
			 	  [0 rgb 1]
			 	  [1 rgb 0]}
			 	  turbulence 0.15}
			 	  }
			 }}

*/
//
// Debug Objects
//
#if(DEBUG = 1)

#end

#if(HANGINGLAMP = 1)
#include "hanging_light.inc"
object { HANGING_LIGHT scale <1/12,1/12,1/12> translate <6,18,0> }
object { FLAME scale <1/12,1/12,1/12> translate <6, 15.5, 0>}
#if(HANGINGLAMP_LIGHT = 1)
light_source { <0,0,0> color rgb <1,1,1> fade_distance .5 fade_power 2 shadowless translate <6,15.5,0> }
#end
#end
/*
#if(OBJECT_BOX = 1)
#include "box_video_screen.inc"
#else
#include "video_screen.inc"
#end     
object {VIDEO_SCREEN  scale <1/12,1/12,1/12> rotate <0,90,0> translate <5.0, 10.0, 10.0>}
*/
/*
#if(SCREEN_OPEN != 0.0)
#if(OBJECT_BOX = 1)
#include "box_video_screen_image.inc"
#else
#include "video_screen_image.inc"
#end     
object {VIDEO_SCREEN_IMAGE  scale <1/12,1/12,1/12> rotate <0,90,0> translate <5.0, 10.0, 10.0>}
#end
*/

#include "pov_video_screen.inc"
object { SCREEN(SCREEN_OPEN,VIDEO_ON,VIDEO_IMAGE,VIDEO_EMISSION) scale<1/12,1/12,1/12> translate <5.0,13,10.0> }

//
// Alter, Bible, Cross, Pulpit, Lecturn, etc.
//
#if(ALTERSTUFF = 1)                        


#include "pov_alter.inc"
object { POV_ALTER scale <1/12,1/12,1/12> rotate <0,90,0> translate <3.37-1.0,0,0> }

#if(OBJECT_BOX = 1)
#include "box_cross.inc"
#else
#include "cross.inc"
#end
object { CROSS scale <1/12,1/12,1/12> translate <0,4,0> } 

#if(OBJECT_BOX = 1)
#include "box_alter_cloth.inc"
#else
#include "alter_cloth.inc"
#end        
object { ALTER_CLOTH scale <1/12,1/12,1/12> 
        texture {
        pigment { image_map { jpeg "alter_fall.jpg"  once } translate <-.5,-.575,0> rotate <0,90,0> scale <4,5,6.5> }
        finish { ambient GLOBAL_AMBIENT diffuse .6 }
        } translate <4.41+1/12,2.875,0>}

#if(OBJECT_BOX = 1)
#include "box_chalice.inc"
#else
#include "chalice.inc"
#end
object { CHALICE scale <1/12,1/12,1/12> rotate <0,70,0> translate <3.8,2.875,-1.97> }

#if(OBJECT_BOX = 1)
#include "box_bread_basket.inc"
#else
#include "bread_basket.inc"
#end
object { BREAD_BASKET scale <1/12,1/12,1/12> scale <1.25,1.25,1.25> rotate <0,25,0> translate <3.67,2.89,1.75> }

#include "pov_candle.inc"
object { CANDLE scale <1/12,1/12,1/12> translate <3,2.885,-2.13> }
object { CANDLE scale <1/12,1/12,1/12> translate <3,2.885,2.13> }

#if(OBJECT_BOX = 1)
#include "box_cross.inc"
#else
#include "cross.inc"
#end 
object { CROSS scale <1/12,1/12,1/12> translate <0,4,0> }

#if(OBJECT_BOX = 1)
#include "box_spotlight.inc"
#else
#include "spotlight.inc"
#end            
object { SPOTLIGHT scale <1/12,1/12,1/12> translate <3.68,17.4,0> }

#include "hanging_light.inc"
object { HANGING_LIGHT scale <1/12,1/12,1/12> translate <6,18,0> }
object { FLAME scale <1/12,1/12,1/12> translate <6, 15.5, 0>}
//light_source { <0,0,0> color rgb <1,1,1> fade_distance .5 fade_power 2 shadowless translate <6,15.5,0> }

#if(OBJECT_BOX = 1)
#include "box_alter_flower_stand.inc"
#else
#include "pov_flower_stand.inc"
#end                                                                                            
object { ALTER_FLOWER_STAND  scale <1/12,1/12,1/12> translate <3.35,0,3.77> }
object { ALTER_FLOWER_STAND  scale <1/12,1/12,1/12> translate <3.35,0,-3.77> }

#if(OBJECT_BOX = 1)
#include "box_vase.inc"
#else
#include "vase.inc"
#end                                                      
object { VASE scale <1/12,1/12,1/12> translate <3.35,24.75/12,3.77> }
object { VASE scale <1/12,1/12,1/12> rotate <0,90,0> translate <3.35,24.75/12,-3.77> }

#if(OBJECT_BOX = 1)
#include "box_bible.inc"
#else
#include "bible.inc"
#end                
object { BIBLE scale <1/12,1/12,1/12> translate <3.37,2.875,0> }
#include "bible_cloth.inc"
object { BIBLE_CLOTH scale <1/12,1/12,1/12> translate <3.37,2.875,0> }

//#if(OBJECT_BOX = 1)
//#include "box_pulpit.inc"
//#else
//#include "pulpit.inc"
//#end
//object { PULPIT scale <1/12,1/12,1/12> translate <13.57,0,-6.37> }

#include "pov_pulpit.inc"
object { PULPIT scale <1/12,1/12,1/12> translate <13.57-8.5/12,0,-6.37> }

#if(OBJECT_BOX = 1)
#include "box_microphone.inc"
#else
#include "microphone.inc"
#end 
object { MICROPHONE scale <1/12,1/12,1/12> translate <13.83,3.52,-5.41> } 

#if(OBJECT_BOX = 1)
#include "box_pulpit_cloth.inc"
#else
#include "pulpit_cloth.inc"
#end   
object { PULPIT_CLOTH scale <1/12,0.75/12,.75/12> translate <13.57,1.01,-6.37>}


#include "pov_lecturn.inc"                        
object { LECTURN scale <1/12,1/12,1/12> translate <13.84,0,5.817> } 

#if(OBJECT_BOX = 1)
#include "box_lecturn_cloth.inc"
#else
#include "lecturn_cloth.inc"
#end   
object { LECTURN_CLOTH scale <1/12,1/12,1/12> translate <13.9,-.75/12,5.817>}

#if(OBJECT_BOX = 1)
#include "box_LECTURN_mic.inc"
#else
#include "LECTURN_mic.inc"
#end 
object { LECTURN_MIC }

#if(OBJECT_BOX = 1)
#include "box_organ.inc"
#else
#include "organ.inc"
#end         
object { ORGAN  scale <1/12,1/12,1/12> translate <9.57,0,10.35>}
#include "lamp.inc"
object { LAMP scale <1/12,1/12,1/12> rotate <0,90,0> translate <9.65,4.17,11> }

#if(OBJECT_BOX = 1)
#include "box_piano.inc"
#else
#include "piano.inc"
#end         
object { PIANO  scale <1/12,1/12,1/12> rotate <0,-70,0> translate <3.8,0,7.3>}

#if(OBJECT_BOX = 1)
#include "box_baptism_font.inc"
#else
#include "baptism_font.inc"
#end         
object {BAPTISM_FONT scale <1/12,1/12,1/12> translate <16.584,-1.5,-23.33> }

#if(OBJECT_BOX = 1)
#include "box_hymn_board.inc"
#else
#include "hymn_board.inc"
#end               
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
object { WALL_LIGHT scale <1/12,1/12,1/12> rotate < 0,180,0> translate <52.42,5.5,24.58> }
#end

#if(CHANDELIER = 1)                    
#include "chandelier.inc"                                                        
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,180,0>  translate <21.67,17.66,-12.05>}
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,0,0>  translate <21.67,17.66,12.05>}
#if(BACKLIGHTS = 1)
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,180,0> translate <37.67,17.66,-12.05>}
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,0,0> translate <37.67,17.66,12.05>}
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,180,0> translate <53.67,17.66,-12.05>}
object { CHANDELIER scale <1/12,1/12,1/12> scale 1.5 rotate <0,0,0> translate <53.67,17.66,12.05>}
#end
#end
//
// Pew Hymnals, Bibles, Cards and Pencils
//
// hymnal_percent     - % of hymnals not in pews
// bible_percent      - % of bibles not in pews
// card_percent       - % of cards not in pews
// pencil_percent     - % of pencils not in pews
//
#if(HYMNALS = 1)

#if(OBJECT_BOX = 1)
#include "box_hymnal.inc"
#else
#include "hymnal.inc"
#end      

#if(OBJECT_BOX = 1)
#include "box_pew_bible.inc"
#else
#include "pew_bible.inc"
#end  

#declare Times = 0;                  
#declare Count = 0;
#declare xdiff = 0;                                           
#declare zdiff = 0;
#declare rot = 0;
#declare hynm_percent = 0.15;
#declare bible_percent = 0.05;
#declare card_percent = 0.25;
#declare pencil_percent = 0.33;

#declare hymnal_seed = seed(1); // Hymnals seed
#declare bible_seed = seed(1);  // Bibles seed
#declare card_seed = seed(1);   // Card seed
#declare pencil_seed = seed(1); // Pencil seed

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
box { <-1.75, -3.5, -.01>, <1.5, 3.5, .01> texture { pigment { image_map { jpeg "giving_card.jpg" } rotate <0,0,0> scale <3.75,7.5,4> } finish { ambient GLOBAL_AMBIENT } 
        translate <1.75,3.75,0>}}
        }
        
//#declare CARD2 = 
//object {                                                                                                                         
//box { <-1.75, -3.5, -.01>, <1.5, 3.5, .01> texture { pigment { image_map { jpeg "giving_card.jpg" } rotate <0,0,0> scale <3.75,7.5,4> } finish { ambient GLOBAL_AMBIENT }
//        translate <1.75,3.75,0>}}
//        }
        
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

#if(OBJECT_BOX = 1)
#include "box_pencil.inc"
#else
#include "pov_pencil.inc"
#end      

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
