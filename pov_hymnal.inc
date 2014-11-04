//
// pov_hymnal.inc
//
#declare COLOR_0 = texture { pigment { image_map { jpeg "hymnal.jpg" } rotate <0,90,0> translate <0,0.05,.5> scale <10,10,8> } finish { ambient GLOBAL_AMBIENT } }

#declare HYMNAL =
object {
union {
box { <   -1.500,    0.000,   -3.75 >, <    0.000,   12.000,    4.000 > }
difference {
cylinder{ <-0.75,0,0>,<-0.75,12,0> 1.8 texture { T_WHITE } }
box { <-10,-10,-10>,<-1.5,20,10> }
box { <10,-10,-10>,<0,20,10> }
box { <-10,-10,0>,<10,20,-10> translate <0,0,1.5>}
translate <0,0,2.5>}
} texture { COLOR_0 }
}           