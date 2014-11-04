//
// pov_pulpit.inc
//
#include "0_church_moldings.inc"
//
#declare PULPIT = 
object {
union{
union{
difference {
box { <-2,0,-14>,<18,48,14> }
box { <-10,42,-12>,<16,50,12> }
box { <17,3,10>,<20,41,-10> }
}
box { <0,0,-21>,<14.5,39,21> }
object { Board(18,3,0.5,1,1,T_PEW) translate <9,0,14> }
object { Board(18,3,0.5,1,1,T_PEW) translate <9,0,14> scale <1,1,-1> }
object { Board(28,3,0.5,1,1,T_PEW) rotate <0,90,0> translate <18,0,0> }
object { Board(14.5,3,0.5,1,1,T_PEW) translate <7.25,0,21> }
object { Board(14.5,3,0.5,1,1,T_PEW) translate <7.25,0,21> scale <1,1,-1> }
object { Board(42,3,0.5,1,1,T_PEW) rotate <0,90,0> translate <14.5,0,0> }
object { Rect_Trim_Miter(20,1,0) translate <8,41,14> }
object { Rect_Trim_Miter(20,1,0) translate <8,41,14> scale <1,1,-1>}
object { Rect_Trim_Miter(28,1,1) rotate <0,90,0> translate <18,41,0> }
texture { T_White }}
// Top Trim
object { Board(18,0.75,2.25,1,0,T_PEW) translate <7,48,12> }
object { Board(18,0.75,2.25,1,0,T_PEW) translate <7,48,12> scale <1,1,-1>}
object { Board(24,0.75,2.25,1,1,T_PEW) rotate <0,90,0> translate <16,48,0> }
// Side Tops
object { Board(15,0.75,7.5,0,0,T_PEW) translate <7.25,39,14> }
object { Board(15,0.75,7.5,0,0,T_PEW) translate <7.25,39,14> scale <1,1,-1> }
}
}