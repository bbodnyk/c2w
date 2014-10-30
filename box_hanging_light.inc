//Produced by slp2pov v2.0
//Extents of : HANGING_LIGHT 
//     Min : <   -2.721,  -41.845,   -3.124 >
//     Max : <    2.721,    0.000,    2.375 >
//     Triangle Count : 61438

#declare COLOR_0 = texture { pigment { color red 0.804 green 0.588 blue 0.196 }}
#declare COLOR_1 = texture { pigment { color red 1.000 green 0.000 blue 0.000 }}

#declare HANGING_LIGHT = union {
box {<-2.721321,-41.845000,-3.124177>,<2.721321,0.000000,2.375000>}
texture { COLOR_0 }
}
