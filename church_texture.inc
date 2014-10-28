// CHURCH TEXTURES

//
// White Trim
//
#declare T_White =
texture {
  pigment { color rgb White }
//    pigment { color rgb <0,0,156/255>}
  finish {
    ambient ROOM_AMBIENT          // ambient surface reflection color [0.1]
    diffuse ROOM_DIFFUSE          // amount [0.6]
    brilliance 1.0       // tightness of diffuse illumination [1.0]
    roughness 0.05     // (~1.0..0.0005) (dull->highly polished) [0.05]
    reflection { 0.01 }
    }
  }
//


#declare M_Wood_Pews =
color_map {          
    [0.0, 0.1 color rgb <0.4, 0.18, 0.16>
              color rgb <0.4, 0.18, 0.16>]
    [0.1, 0.9 color rgb <0.4, 0.18, 0.16>
              color rgb <0.24, 0.14, 0.14>]
    [0.9, 1.0 color rgb <0.24, 0.14, 0.14>
              color rgb <0.24, 0.14, 0.14>]
}
/*
#declare M_Wood_Pews =
color_map {          
    [0.0, 0.2 color rgb <.025,.015,.013>
              color rgb <.025,.015,.013>]
    [0.2, 0.4 color rgb <.025,.015,.013>
              color rgb <.025,.015,.013>]
    [0.4, 0.9 color rgb <.025,.015,.013>
              color rgb <.02,.01,.008>]
    [0.9, 1.0 color rgb <.02,.01,.008>
              color rgb <.025,.015,.013>]              
              
}
*/

#declare T_DarkWood  =
texture { 
        pigment { P_WoodGrain1A  color_map { M_Wood_Pews }}
        finish {  
            reflection { 0.005 }
            ambient GLOBAL_AMBIENT        
        }
        }
//
//
#declare T_BakersChoc      = texture { pigment { color BakersChoc }
                                       finish { ambient ROOM_AMBIENT diffuse ROOM_DIFFUSE }}
#declare T_NewTan      = texture { pigment { color NewTan }}
#declare T_Blue      = texture { pigment { color Blue }}
#declare T_Copper      = texture { pigment { color Copper }}
//#declare T_DarkWood  = texture { pigment { color BakersChoc }}

#declare T_DarkWood  =
texture { 
        pigment { P_WoodGrain1A  color_map { M_Wood_Pews }}
        finish {  
            reflection { 0.005 }
            ambient GLOBAL_AMBIENT        
        }
        }

#declare T_PEW_BASE = 
texture {
        pigment { color rgb <109/255,58/255,31/255> }
        }


#declare T_PEW_LAYER1 = 
texture {
        pigment {
                bozo 
                color_map {
                        [0.0 color rgbt <0.30, 0.10, 0.050,1>]
                        [0.8 color rgbt <0.25, 0.07, 0.038,1>]
                }
                warp { turbulence .1 }
                scale <3,1,3>
        }
        }                 

#declare T_PEW_LAYER2 = 
texture {
        pigment {
                bozo 
                color_map {
                        [0.0 color rgbf <20/255,18/255,8/255,1>]
                        [0.5 color rgbf <20/255,18/255,8/255,.75>]
                        [0.8 color rgbf <20/255,18/255,8/255,1>]
                }
                warp { turbulence .2 }
                scale <1,1,1>
        }
        }

/*                                                   
#declare T_PEWS = 
pigment {
    wood
    turbulence 0.2
    octaves 6
    scale <0.075, .075, 1>
    color_map {
        [0.1 rgb <0.30, 0.10, 0.050>]
        [0.3 rgb <0.25, 0.07, 0.038>] 
        [0.9 rgb <0.25, 0.07, 0.038>]
    }
}
*/

#declare T_PEWS = 
pigment {
    wood
    turbulence 0.2
    octaves 6
    scale <0.075, .075, 1>
    color_map {
        [0.1 rgb <0.25, 0.07, 0.038>]
        [0.3 rgb <0.12, 0.04, 0.020>] 
        [0.9 rgb <0.12, 0.04, 0.020>]
    }
}

#declare T_PEW =      
 texture { T_PEWS 
        finish {
        ambient GLOBAL_AMBIENT          // ambient surface reflection color [0.1]
        diffuse ROOM_DIFFUSE          // amount [0.6]
        brilliance 1.0       // tightness of diffuse illumination [1.0]    
        reflection { 0.005 }
        }         
 }
// texture { T_PEW_LAYER1 } 
                       
#declare T_DarkWoodTrim =
texture { 
        pigment { color rgb <.12,.04,.02>}
        finish {
        ambient GLOBAL_AMBIENT          // ambient surface reflection color [0.1]
        diffuse ROOM_DIFFUSE          // amount [0.6]
        brilliance 1.0       // tightness of diffuse illumination [1.0]    
        reflection { 0.005 }
        }        
        }



#declare T_Goldenrod = texture { pigment { color rgb CURTAINCOLOR } finish { ambient ROOM_AMBIENT diffuse ROOM_DIFFUSE } }

#declare T_Gold      = texture { T_Gold_3C  finish { ambient ROOM_AMBIENT diffuse ROOM_DIFFUSE }}

#declare T_Gray05    = texture { pigment { color Gray05 } finish { ambient GLOBAL_AMBIENT }}
#declare T_Gray10    = texture { pigment { color Gray10 } finish { ambient GLOBAL_AMBIENT }}
#declare T_Gray15    = texture { pigment { color Gray15 } finish { ambient GLOBAL_AMBIENT }}
#declare T_Gray40    = texture { pigment { color Gray40 } finish { ambient GLOBAL_AMBIENT }}                  
#declare T_Gray45    = texture { pigment { color Gray45 } finish { ambient GLOBAL_AMBIENT }} 
#declare T_Gray75    = texture { pigment { color Gray75 } finish { ambient GLOBAL_AMBIENT }}
#declare T_Gray85    = texture { pigment { color Gray85 } finish { ambient GLOBAL_AMBIENT }}
#declare T_Gray95    = texture { pigment { color Gray95 } finish { ambient GLOBAL_AMBIENT }}
#declare T_LightGray    = texture { pigment { color LightGray } finish { ambient GLOBAL_AMBIENT }}
#declare T_Green    = texture { pigment { color Green }}

#declare T_FLOOR = texture {
        pigment { color FLOORCOLOR }
        finish {
        crand .1 
        ambient ROOM_AMBIENT          
        diffuse ROOM_DIFFUSE                  
        }
        normal {
            bumps 10         // any pattern optionally followed by an intensity value [0.5]
            bump_size .05      // optional
            //accuracy 0.02   // changes the scale for normal calculation [0.02]
            scale 1.0         // any transformations
        }}

#declare T_BRICK =
        texture {
           pigment { brick scale .1 }
        finish { ambient ROOM_AMBIENT diffuse ROOM_DIFFUSE }

}




#declare T_MandarinOrange = texture { pigment { color MandarinOrange }}
#declare T_Red = texture { pigment { color Red }}
#declare T_SemiSweetChoc = texture { pigment { color SemiSweetChoc }}
#declare T_VioletRed = texture { pigment { color VioletRed }}

#declare WHITE_WALLS = 
texture {                        
  pigment { color rgb <1,1,1> }
  finish {
    ambient ROOM_AMBIENT          // ambient surface reflection color [0.1]
    diffuse ROOM_DIFFUSE          // amount [0.6]
//    ambient 0.15          // ambient surface reflection color [0.1]
    diffuse 0.6          // amount [0.6]
    brilliance 1.0       // tightness of diffuse illumination [1.0]    
    reflection { 0 }
  }
  normal {
    bumps 100         // any pattern optionally followed by an intensity value [0.5]
    bump_size .1      // optional
    //accuracy 0.02   // changes the scale for normal calculation [0.02]
    scale 5.0         // any transformations
  }
}

#declare COLORED_WALLS = 
texture {                        
  pigment { color SIDEWALLCOLOR }
  finish {
    ambient ROOM_AMBIENT          // ambient surface reflection color [0.1]
    diffuse ROOM_DIFFUSE          // amount [0.6]
    brilliance 1.0       // tightness of diffuse illumination [1.0]    
    reflection { 0 }
  }
  normal {
    bumps 100         // any pattern optionally followed by an intensity value [0.5]
    bump_size .1      // optional
    //accuracy 0.02   // changes the scale for normal calculation [0.02]
    scale 5.0         // any transformations
  }
}

#declare T_CEILING = 
texture {
  pigment { color CEILINGCOLOR }              
  finish {
    ambient ROOM_AMBIENT          // ambient surface reflection color [0.1]
    diffuse ROOM_DIFFUSE          // amount [0.6]
    brilliance 1.0       // tightness of diffuse illumination [1.0]    
    reflection { 0 }
  }
  normal {
    bumps 100         // any pattern optionally followed by an intensity value [0.5]
    bump_size .1      // optional
    //accuracy 0.02   // changes the scale for normal calculation [0.02]
    scale 5.0         // any transformations
  }
}

// Normal Front Wall Texture
/*
#declare T_FRONT = 
texture {
#if(MURAL = 1)
  pigment { image_map { jpeg "sistene.jpg" } } rotate <0,90,0> translate <0,-0.1,.475> scale <24,24,24> 
#else
  pigment { color FRONTCOLOR }
#end             
  finish {
    ambient ROOM_AMBIENT          // ambient surface reflection color [0.1]
    diffuse ROOM_DIFFUSE          // amount [0.6]
    brilliance 1.0       // tightness of diffuse illumination [1.0]    
    reflection { 0 }
  }
}
*/
// White -> Yellow

#declare T_FRONT =                              
texture {
#if(MURAL = 1)
  pigment { image_map { jpeg "sistene.jpg" } } rotate <0,90,0> translate <0,-0.1,.475> scale <24,24,24> 
#else
  pigment { wood  turbulence 0.0   
  color_map {   [0.0 color rgb <1,1,1>]
                [0.25 color rgb <1,1,1>]
                [0.75 color FRONTCOLOR ]
                [1.0 color FRONTCOLOR ] }
                rotate <0,90,0> scale <45,45,45> translate <0,5,0> }
#end
                       
  finish {
    ambient ROOM_AMBIENT          // ambient surface reflection color [0.1]
    diffuse ROOM_DIFFUSE          // amount [0.6]
    brilliance 1.0       // tightness of diffuse illumination [1.0]    
    reflection { 0 }
  }
}

//
// Rainbow
//
/*
  #declare r_violet1 = color rgbf<1.0, 0.5, 1.0, 1.0>;
  #declare r_violet2 = color rgbf<1.0, 0.5, 1.0, 0.8>;
  #declare r_indigo  = color rgbf<0.5, 0.5, 1.0, 0.8>;
  #declare r_blue    = color rgbf<0.2, 0.2, 1.0, 0.8>;
  #declare r_cyan    = color rgbf<0.2, 1.0, 1.0, 0.8>;
  #declare r_green   = color rgbf<0.2, 1.0, 0.2, 0.8>;
  #declare r_yellow  = color rgbf<1.0, 1.0, 0.2, 0.8>;
  #declare r_orange  = color rgbf<1.0, 0.5, 0.2, 0.8>;
  #declare r_red1    = color rgbf<1.0, 0.2, 0.2, 0.8>;
  #declare r_red2    = color rgbf<1.0, 0.2, 0.2, 1.0>;

#declare T_FRONT =                              
texture { 
  pigment {
    radial 
    frequency 10
    color_map {
      [0.000  color r_violet1]
      [0.100  color r_violet2]
      [0.214  color r_indigo]
      [0.328  color r_blue]
      [0.442  color r_cyan]
      [0.556  color r_green]
      [0.670  color r_yellow]
      [0.784  color r_orange]
      [0.900  color r_red1]
      [1.00   color r_violet1]
    }
    frequency 3 rotate <0,0,90> translate <0,5.5,0>}
   finish {
    ambient ROOM_AMBIENT          // ambient surface reflection color [0.1]
    diffuse ROOM_DIFFUSE          // amount [0.6]
    brilliance 1.0       // tightness of diffuse illumination [1.0]    
    reflection { 0 }
  }
}
texture {
  pigment { spherical   
  color_map {   [0.0 color rgbf <1,1,1,1>]
                [0.6 color rgbf <1,1,1,1>]
                [0.8 color rgbf <1,1,1,0>]
                [1.0 color rgbf <1,1,1,0>] }
                rotate <0,90,0>scale <30,30,30> translate <0,5.5,0> }
                }       
*/
       

// White Trim Texture
/*
#declare WHITE_TRIM =
texture {
  pigment { color rgb <1,1,1> }
  finish {
    ambient 0.2          // ambient surface reflection color [0.1]
    diffuse 0.6          // amount [0.6]
    brilliance 1.0       // tightness of diffuse illumination [1.0]
    roughness 0.05     // (~1.0..0.0005) (dull->highly polished) [0.05]
    reflection { .01 }
    }
  }
  */  
//
// Candle Flame
//  
#declare FLAME =
object {
difference{
	sphere{0, 0.5}
	sphere{<0, -0.3, 0>, 0.35} 
	hollow
	pigment{ rgbt 1}
	interior{ media{ emission rgbf <50, 40, 20, 0.1>
			 density{ cylindrical color_map{
			 	  [0.3 rgb 1]
			 	  [1 rgb 0]}
			 	  turbulence 0.15}
			 	  }
			 }
	scale<.7, 2.5, .7>
}}	

#declare FLAME2 =
object {
difference{
	sphere{0, 0.5}
	sphere{<0, -0.3, 0>, 0.35} 
	hollow
	pigment{ rgbt 1}
	interior{ media{ emission rgbf <50, 40, 20, 0.5>
			 density{ cylindrical color_map{
			 	  [0.3 rgb 1]
			 	  [1 rgb 0]}
			 	  turbulence 0.15}
			 	  }
			 }
	scale<.7, 2.5, .7>
}}