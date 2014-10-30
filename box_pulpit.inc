//Produced by slp2pov v2.0
//Extents of : PULPIT 
//     Min : <  -10.500,    0.000,  -21.691 >
//     Max : <   10.500,   49.000,   21.691 >
//     Triangle Count : 5244

#declare COLOR_0 = texture { pigment { color red 0.950 green 0.930 blue 0.930 }}
#declare COLOR_1 = texture { pigment { color red 0.410 green 0.262 blue 0.113 }}

#declare PULPIT = union {
box {<-10.500000,0.000000,-21.690980>,<10.500000,49.000000,21.690980>}
texture { COLOR_0 }
}
