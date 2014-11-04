//
// pov_hymnal.inc
//
#declare COLOR_0 = texture { pigment { image_map { jpeg "pew_bible.jpg" } rotate <0,90,0> translate <0,0.05,.5> scale <10,10,8> } finish { ambient GLOBAL_AMBIENT } }

#declare PEWBIBLE =
object {
box { <   -1.500,    0.000,   -4.000 >, <    0.000,   12.000,    4.000 > texture { COLOR_0 }}
}           