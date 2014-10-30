//Produced by slp2pov v2.0
//Extents of : PULPIT_CLOTH 
//     Min : <   -5.981,   20.900,  -11.952 >
//     Max : <   11.523,   49.481,   12.017 >
//     Triangle Count : 2788

#declare COLOR_0 = texture { pigment { color red 0.695 green 0.743 blue 0.790 }}
#declare COLOR_1 = texture { pigment { color red 0.800 green 0.501 blue 0.260 }}

#declare PULPIT_CLOTH = union {
box {<-5.981061,20.900350,-11.952240>,<11.522510,49.481420,12.017110>}
texture { COLOR_0 }
}
