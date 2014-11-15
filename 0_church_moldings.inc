// 
// Molding Library
//
// ================================================\
//
// Board
//
#macro Board(LEN,WIDTH,THK,MITER1,MITER2,TEXTURE)
difference {
box { <-LEN-1,0,0>,<LEN+1,WIDTH,THK> }
#if(MITER1 != 0)box { <0,-LEN,-LEN>,<LEN,LEN,LEN> rotate <0,MITER1*45,0> translate <LEN/2,0,0>}#end
#if(MITER2 != 0)box { <0,-LEN,-LEN>,<-LEN,LEN,LEN> rotate <0,-45*MITER2,0> translate <-LEN/2,0,0> }#end
texture { TEXTURE rotate <0,90,0> }
}
#end
//
// Raised Panel
//
#macro Raised_Panel(WID,HGT,THK)
difference {
box {<-WID/2,-HGT/2,0>,<WID/2,HGT/2,THK>}
plane { <-1,0,0>,0 rotate <0,-75,0> translate <WID/2,0,THK/4>}
plane { <1,0,0>,0 rotate <0,75,0> translate <-WID/2,0,THK/4>}
plane { <0,-1,0>,0 rotate <75,0,0> translate <0,HGT/2,THK/4>}
plane { <0,1,0>,0 rotate <-75,0,0> translate <0,-HGT/2,THK/4>}
}
#end
//
// Bull Nose Molding
//
#macro Bull_Nose(LEN,WIDTH,RAD,THK,MITER1,MITER2,TEXTURE)
difference {
cylinder { <-LEN-1,WIDTH/2, -RAD+THK>,<LEN+1,WIDTH/2,-RAD+THK>,RAD }
box { <-2*LEN-1,-2*RAD,-10>,<2+LEN+1,2*RAD,0> }
box { <-2*LEN-1,WIDTH,-10>,<2+LEN+1,10,10> }
box { <-2*LEN-1,0,-10>,<2+LEN+1,-10,10> }
box { <0,-LEN,-LEN>,<LEN,LEN,LEN> rotate <0,MITER1*45,0> translate <LEN/2,0,0>}
box { <0,-LEN,-LEN>,<-LEN,LEN,LEN> rotate <0,-45*MITER2,0> translate <-LEN/2,0,0> }
texture { TEXTURE rotate <0,90,0> }    
}    
#end
//
// Rect Trim
//
#macro Rect_Trim(LEN)
difference {
object { Board(LEN,1,.5,1,1,T_White) }
#declare num = (LEN/0.5)+1;
#declare XPOS = -0.5 * (num/2);
#declare ival = 0;
#while ( ival <= num )
box { <-.125,-1,.375>,<0.125,.75,10> translate <XPOS+(ival*0.5),0,0> texture { T_White } }
#declare ival = ival + 1;
#end
}
#end
//
#macro Rect_Trim_Miter(LEN,MITER1,MITER2)
difference {
object { Board(LEN,1,.5,MITER1,MITER2,T_White) }
#declare num = (LEN/0.5)+1;
#declare XPOS = -0.5 * (num/2);
#declare ival = 0;
#while ( ival <= num )
box { <-.125,-1,.375>,<0.125,.75,10> translate <XPOS+(ival*0.5),0,0> texture { T_White } }
#declare ival = ival + 1;
#end
}
#end
//
// Quarter Round Molding
//
//
#macro Quarter_Round(RAD,LEN,MITER1,MITER2,TEXTURE)
difference {
cylinder { <-1-LEN,0,0>,<1+LEN,0,0>,RAD }
box { <-4*LEN,0,-RAD*2>,<4*LEN,-RAD*2,RAD*2> }
box { <-4*LEN,0,0>,<4*LEN,RAD*2,-RAD*2> }
box { <0,-LEN,-LEN>,<2*LEN,LEN,LEN> rotate <0,MITER1*45,0> translate <LEN/2,0,0>}
box { <0,-LEN,-LEN>,<-LEN,LEN,LEN> rotate <0,-45*MITER2,0> translate <-LEN/2,0,0> }
}
texture { TEXTURE rotate <0,90,0> }
#end
//
//
// Quarter Round Concave
//
#macro Concave_Quarter_Round(RAD,LEN,MITER1,MITER2,TEXTURE)
//
difference {
box { <-LEN,0,0>,<LEN,RAD,RAD> }
cylinder { <-2*LEN,RAD,RAD>,<2*LEN,RAD,RAD>,RAD}
box { <0,-LEN,-LEN>,<LEN,LEN,LEN> rotate <0,MITER1*45,0> translate <LEN/2,0,0>}
box { <0,-LEN,-LEN>,<-LEN,LEN,LEN> rotate <0,-45*MITER2,0> translate <-LEN/2,0,0> }
texture { TEXTURE rotate <0,90,0> scale <3,3,3> }
}
#end
//
//
//
#macro Concave_Quarter_Round_Flat(RAD,LEN,TEXTURE)
//
difference {
box { <-LEN,0,0>,<LEN,RAD,RAD> }
cylinder { <-2*LEN,RAD,RAD>,<2*LEN,RAD,RAD>,RAD}
//box { <0,-LEN,-LEN>,<LEN,LEN,LEN> rotate <0,MITER1*45,0> translate <LEN/2,0,0>}
//box { <0,-LEN,-LEN>,<-LEN,LEN,LEN> rotate <0,-45*MITER2,0> translate <-LEN/2,0,0> }
texture { TEXTURE rotate <0,90,0> scale <3,3,3> }
}
#end
//
//
// Pew Top Molding
//
//
#macro Pew_Top_Molding(LEN,MITER1,MITER2,TEXTURE)
union{
box { <-LEN/2,0,0>,<LEN/2,.125,1> }
object { Quarter_Round(.125,LEN,0,0,TEXTURE) translate <0,.125,.75> }
object { Concave_Quarter_Round(0.25,LEN,0,0,TEXTURE) translate <0,.25,1-.5> }
object { Quarter_Round(.5,LEN,0,0,TEXTURE) translate <0,.5,0> }
} texture { TEXTURE rotate <0,90,0> scale <2,2,2> }
#end
//
// Pew Cap - 4x molding
//
#macro Pew_Top4(LEN,TEXTURE)
union{
box { <-LEN/2,0,-.25>,<LEN/2,1,0.25> texture { TEXTURE rotate <0,90,0>}}
object { Pew_Top_Molding(2*LEN,0,0,TEXTURE) 
        clipped_by {
           plane {<1,0,-1>,0 translate <LEN/2,0,0> }
           plane {<-1,0,-1>,0 translate <-LEN/2,0,0> }       
           } translate <0,0,.25>}
object { Pew_Top_Molding(2*LEN,0,0,TEXTURE) 
        clipped_by {
           plane {<1,0,-1>,0 translate <LEN/2,0,0> }
           plane {<-1,0,-1>,0 translate <-LEN/2,0,0> }       
           } scale <1,1,-1>  translate <0,0,-.25>}
object { Pew_Top_Molding(LEN,0,0,TEXTURE) 
        clipped_by {
        plane {<1,0,-1>,0 translate <0,0,-.25>}
        plane {<-1,0,-1>,0 translate <0,0,-.25> }       
           } rotate <0,90,0> translate <LEN/2,0,0>}           
object { Pew_Top_Molding(2.75,0,0,TEXTURE) 
        clipped_by {
        plane {<1,0,-1>,0 translate <0,0,-.25>}
        plane {<-1,0,-1>,0 translate <0,0,-.25> }       
           } rotate <0,90,0> translate <LEN/2,0,0> scale <-1,1,1> }
           
} // end of union
           
#end
//
// Pew Cap -3x molding
//
#macro Pew_Top3(LEN,TEXTURE)
object {
union{
box { <-LEN/2,0,-.25>,<LEN/2,1,0.25> texture { TEXTURE rotate <0,90,0>}}
object { Pew_Top_Molding(LEN*2,0,0,TEXTURE) 
        clipped_by {
           plane {<1,0,-1>,0 translate <LEN/2,0,0> }
           plane {<-1,0,-1>,0 translate <-LEN/2,0,0> }       
           } translate <0,0,.25>}
object { Pew_Top_Molding(LEN*2,0,0,TEXTURE) 
        clipped_by {
           plane {<1,0,-1>,0 translate <LEN/2,0,0> }
           plane {<-1,0,-1>,0 translate <-LEN/2,0,0> }       
           } scale <1,1,-1> translate <0,0,-.25>}
object { Pew_Top_Molding(2.5,0,0,TEXTURE)
        clipped_by {
        plane {<1,0,-1>,0 translate <0,0,-.25>}
        plane {<-1,0,-1>,0 translate <0,0,-.25> }
}       
rotate <0,90,0> translate <LEN/2,0,0> }           
} // end of union


translate <LEN/2,0,0> clipped_by { plane { <-1,0,0>,0} }}           
#end

//
// Ceiling Cove Molding
//
#macro CEILING_COVE(LEN,MITER1,MITER2,TEXTURE)
difference {
union {
box { <-LEN*2,0,0>,<LEN*2,-4,.25>}
box { <-LEN*2,0,0>,<LEN*2,-3.75,.125> translate <0,0,.25>}
box { <-LEN*2,0,.375>,<LEN*2,-1,2.875> }
box { <-LEN*2,-1,.375>,<LEN*2,-2,1.375>}
object { Quarter_Round(1,LEN*4,0,0,TEXTURE) rotate <90,0,0> translate <0,-2,.375>}
object { Concave_Quarter_Round_Flat(1,LEN*4,TEXTURE) rotate <90,0,0> translate <0,-1,1.375>}
texture { TEXTURE } 
}
box { <0,-1000,-1000>,<LEN*1000,1000,1000> rotate <0,MITER1*45,0>  translate <LEN/2,0,0>}
box { <0,-1000,-1000>,<-LEN*1000,1000,1000> rotate <0,-45*MITER2,0> translate <-LEN/2,0,0> }
}
#end