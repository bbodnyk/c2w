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
box { <16.5,5,8>,<20,39,-8> }


cylinder{<0,0,0>,<0,36,0>,.125 translate <18,4,10.8> }
cylinder{<0,0,0>,<0,36,0>,.125 translate <18,4,11.6> }
cylinder{<0,0,0>,<0,36,0>,.125 translate <18,4,12.4> }
cylinder{<0,0,0>,<0,36,0>,.125 translate <18,4,13.2> }
cylinder{<0,0,0>,<0,36,0>,.125 translate <18,4,-10.8> }
cylinder{<0,0,0>,<0,36,0>,.125 translate <18,4,-11.6> }
cylinder{<0,0,0>,<0,36,0>,.125 translate <18,4,-12.4> }
cylinder{<0,0,0>,<0,36,0>,.125 translate <18,4,-13.2> }
}
difference {
box { <0,0,-21>,<14.5,39,21> }
box { <2,5,20.5>,<12.5,31,40> }
box { <2,5,-20.5>,<12.5,31,-40> }
}
object { Raised_Panel(6,22,.5) translate<7.25,18,21> }
object { Raised_Panel(6,22,.5) translate<7.25,18,21> scale <1,1,-1>}
object { Board(18,3,0.5,1,1,T_PEW) translate <9,0,14> }
object { Board(18,3,0.5,1,1,T_PEW) translate <9,0,14> scale <1,1,-1> }
object { Board(28,3,0.5,1,1,T_PEW) rotate <0,90,0> translate <18,0,0> }
object { Board(14.5,3,0.5,1,1,T_PEW) translate <7.25,0,21> }
object { Board(14.5,3,0.5,1,1,T_PEW) translate <7.25,0,21> scale <1,1,-1> }
object { Board(42,3,0.5,1,1,T_PEW) rotate <0,90,0> translate <14.5,0,0> }
object { Rect_Trim_Miter(20,1,0) translate <8,41,14> }
object { Rect_Trim_Miter(20,1,0) translate <8,41,14> scale <1,1,-1>}
object { Rect_Trim_Miter(28,1,1) rotate <0,90,0> translate <18,41,0> }
object { Rect_Trim_Miter(14.5,1,0) translate <7.25,33,21> }
object { Rect_Trim_Miter(14.5,1,0) translate <7.25,33,21> scale <1,1,-1> }
object { Rect_Trim_Miter(42,1,1) rotate <0,90,0> translate <14.5,33,0> }
object { Raised_Panel(14,30,.5) rotate <0,90,0> translate<16.5,22,0> }
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