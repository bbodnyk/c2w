//Produced by slp2pov v2.0
//Extents of : PIANO 
//     Min : <  -30.841,   -0.052,   -0.841 >
//     Max : <   30.249,   51.378,   25.512 >
//     Triangle Count : 9704

#declare COLOR_0 = texture { pigment { color red 0.011 green 0.012 blue 1.000 }}
#declare COLOR_1 = texture { pigment { color red 1.000 green 0.808 blue 0.498 }}
#declare COLOR_2 = texture { pigment { color red 0.410 green 0.262 blue 0.113 }}
#declare COLOR_3 = texture { pigment { color red 0.098 green 0.098 blue 0.098 }}
#declare COLOR_4 = texture { pigment { color red 0.804 green 0.588 blue 0.196 }}

#declare PIANO = union {
box {<-30.840730,-0.051814,-0.840735>,<30.248770,51.377950,25.511810>}
texture { COLOR_0 }
}
