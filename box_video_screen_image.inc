//Produced by slp2pov v2.0
//Extents of : VIDEO_SCREEN_IMAGE 
//     Min : <  -59.000,  -30.250,   -0.237 >
//     Max : <   59.000,   37.625,    0.000 >
//     Triangle Count : 36

#declare COLOR_0 = texture { pigment { color red 1.000 green 1.000 blue 1.000 }}
#declare COLOR_1 = texture { pigment { color red 0.450 green 0.450 blue 0.450 }}

#declare VIDEO_SCREEN_IMAGE = union {
box {<-59.000000,-30.250000,-0.237500>,<59.000000,37.625000,0.000000>}
texture { COLOR_0 }
}
