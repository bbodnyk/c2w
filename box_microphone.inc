//Produced by slp2pov v2.0
//Extents of : MICROPHONE 
//     Min : <   -1.250,    0.000,   -8.337 >
//     Max : <   14.992,   18.296,    2.327 >
//     Triangle Count : 8444

#declare COLOR_0 = texture { pigment { color red 0.669 green 0.670 blue 0.655 }}
#declare COLOR_1 = texture { pigment { color red 0.420 green 0.420 blue 0.420 }}
#declare COLOR_2 = texture { pigment { color red 0.130 green 0.130 blue 0.140 }}

#declare MICROPHONE = union {
box {<-1.250000,0.000000,-8.337334>,<14.992450,18.295610,2.326635>}
texture { COLOR_0 }
}
