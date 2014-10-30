//Produced by slp2pov v2.0
//Extents of : VIDEO_SCREEN 
//     Min : <  -60.000,   29.750,   -0.237 >
//     Max : <   60.000,  109.930,    5.763 >
//     Triangle Count : 44348

#declare COLOR_0 = texture { pigment { color red 1.000 green 1.000 blue 1.000 }}
#declare COLOR_1 = texture { pigment { color red 0.450 green 0.450 blue 0.450 }}

#declare VIDEO_SCREEN = union {
box {<-60.000000,29.750000,-0.237500>,<60.000000,109.930000,5.762500>}
texture { COLOR_0 }
}
