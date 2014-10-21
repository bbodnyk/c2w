// Back left camera
#if(CAMERA = 1)                                                                                                                                                       
camera {
  #if(PERSPECTIVE=1)perspective #end
  location <56,4,21>
  right <-4/3,0,0>
  up <0,1,0>
  direction <0,0,CAMERAZOOM>
//  look_at < 0,18,0>
  look_at <4,4,-14>
}
#if(CAMERAFLASH = 1)
light_source { < 56, 4, 21> color rgb <1,1,1> fade_distance 20 fade_power 3}
#end
#end

// Back center camera
#if(CAMERA = 2)
camera {
  #if(PERSPECTIVE=1)perspective #end
  location <56,4,0>
  right <-4/3,0,0>
  up <0,1,0>
  direction <0,0,CAMERAZOOM>                                                          
  look_at < 0,6,0>
}
#if(CAMERAFLASH = 1)
light_source { < 56, 4, 0> color rgb <1,1,1> fade_distance 20 fade_power 3}
#end
#end

// center middle camera
#if(CAMERA = 3)
camera {
  #if(PERSPECTIVE=1)perspective #end
  location <50,4,0>
  right <-4/3,0,0>          
  up <0,1,0>
  direction <0,0,CAMERAZOOM>                                                          
  look_at < 0,4,0>
}
#if(CAMERAFLASH = 1)
light_source { < 50, 4, 0> color rgb <1,1,1> fade_distance 20 fade_power 3}
#end
#end

// front left camera
#if(CAMERA = 4)
camera {
  #if(PERSPECTIVE=1)perspective #end
  location <25,4,21>
  right <-4/3,0,0>          
  up <0,1,0>
  direction <0,0,CAMERAZOOM>                                                          
  look_at < 0,4,0>
}
#if(CAMERAFLASH = 1)
light_source { < 25, 4, 21> color rgb <1,1,1> fade_distance 20 fade_power 3}
#end
#end

#if(CAMERA = 5)
camera {
  #if(PERSPECTIVE=1)perspective #end
  location CAMERA5_LOCATION
  right <-4/3,0,0>          
  up <0,1,0>
  direction <0,0,CAMERAZOOM>                                                          
  look_at CAMERA5_LOOKAT
}
#if(CAMERAFLASH = 1)
light_source { CAMERA5_LOCATION color rgb <1,1,1> fade_distance CAMERA5_FADE fade_power 3}
#end
#end