//Produced by slp2pov v2.0
//Extents of : HYMN_BOARD 
//     Min : <   -9.495,  -21.141,   -0.250 >
//     Max : <    9.495,   12.286,    1.000 >
//     Triangle Count : 4892

#declare COLOR_0 = texture { pigment { color red 1.000 green 1.000 blue 1.000 }}
#declare COLOR_1 = texture { pigment { color red 0.800 green 0.501 blue 0.260 }}

#declare HYMN_BOARD = union {
box {<-9.495000,-21.140580,-0.250000>,<9.495000,12.285690,1.000000>}
texture { COLOR_0 }
}
