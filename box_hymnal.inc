//Produced by slp2pov v2.0
//Extents of : HYMNAL 
//     Min : <   -1.500,    0.000,   -4.000 >
//     Max : <    0.000,   12.000,    4.000 >
//     Triangle Count : 242

#declare COLOR_0 = texture { pigment { color red 0.011 green 0.012 blue 1.000 }}
#declare COLOR_1 = texture { pigment { color red 0.956 green 0.623 blue 0.105 }}

#declare HYMNAL = union {
box {<-1.500000,0.000000,-4.000000>,<0.000000,12.000000,3.999966>}
texture { COLOR_0 }
}
