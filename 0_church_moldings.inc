// 
// Molding Library
//
// ================================================
//
// Quarter Round Molding
//
//
#macro Quarter_Round(RAD,LEN,MITER1,MITER2,TEXTURE)

difference {
cylinder { <-1-LEN,0,0>,<1+LEN,0,0>,RAD }
box { <-2*LEN,0,-RAD*2>,<2*LEN,-RAD*2,RAD*2> }
box { <-2*LEN,0,0>,<2*LEN,RAD*2,-RAD*2> }
box { <0,-LEN,-LEN>,<LEN,LEN,LEN> rotate <0,MITER1*45,0> translate <LEN/2,0,0>}
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
