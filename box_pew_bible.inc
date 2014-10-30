//Produced by slp2pov v2.0
//Extents of : PEW_BIBLE 
//     Min : <   -1.500,    0.000,   -3.000 >
//     Max : <    0.000,   10.000,    3.000 >
//     Triangle Count : 272

#declare COLOR_0 = texture { pigment { color red 0.011 green 0.012 blue 1.000 }}
#declare COLOR_1 = texture { pigment { color red 0.956 green 0.623 blue 0.105 }}

#declare PEWBIBLE = union {
box {<-1.500000,0.000000,-3.000000>,<0.000000,10.000000,2.999966>}
texture { COLOR_0 }
}
