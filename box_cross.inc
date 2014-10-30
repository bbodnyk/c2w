//Produced by slp2pov v2.0
//Extents of : CROSS 
//     Min : <    0.000,   -4.500,   -6.000 >
//     Max : <    8.235,   24.500,    6.000 >
//     Triangle Count : 1024

#declare COLOR_0 = texture { pigment { color red 1.000 green 1.000 blue 1.000 }}
#declare COLOR_1 = texture { pigment { color red 0.804 green 0.588 blue 0.196 }}

#declare CROSS = union {
box {<0.000000,-4.500000,-6.000000>,<8.234669,24.500000,6.000000>}
texture { COLOR_0 }
}
