//Produced by slp2pov v2.0
//Extents of : ORGAN 
//     Min : <  -31.000,    0.000,   -1.000 >
//     Max : <   31.000,   50.000,   36.000 >
//     Triangle Count : 1036

#declare COLOR_0 = texture { pigment { color red 1.000 green 1.000 blue 1.000 }}
#declare COLOR_1 = texture { pigment { color red 0.800 green 0.501 blue 0.260 }}

#declare ORGAN = union {
box {<-31.000000,0.000000,-1.000000>,<31.000000,50.000000,36.000000>}
texture { COLOR_0 }
}
