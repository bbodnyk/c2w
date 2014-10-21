                              /* 
 Lit tapered candle scene file.
 BY: Ken Tyler 1-16-1999 tylereng@pacbell.net
 You are free to use this as you wish without my permission.
 If you do something really good with it send me a small image to look_at.
 */                                              


#declare Candle =
union{
lathe{
linear_spline 27,
<0.0000000000,0.0000000000>,
<7.240741E-02,3.003827E-02>,
<8.423334E-02,0.0392000000>,
<9.441235E-02,5.047037E-02>,
<0.1028877000,6.362963E-02>,
<0.1096667000,0.0783000000>,
<0.1147864000,9.422963E-02>,
<0.1184025000,0.1116704000>,
<0.1207000000,0.1310000000>,
<0.1218333000,0.1525333000>,
<0.1218333000,0.1763333000>,
<0.1207000000,0.2024000000>,
<0.1182444000,0.2312370000>,
<0.1135222000,0.2653630000>,
<0.1054000000,0.3078000000>,
<9.324814E-02,0.3600605000>,
<7.845185E-02 0.4176173000>,
<0.0629000000,0.4744333000>,
<4.822963E-02,0.5254210000>,
<3.507037E-02,0.5692901000>,
<0.0238000000,0.6057000000>,
<1.473333E-02,0.6344136000>,
<7.933334E-03,0.6556087000>,
<0.0034000000,0.6695666000>,
<1.007407E-03,0.6769086000>,
<1.259259E-04,0.6796135000>,
<0.0000000000,0.6799999000>
 texture{
  pigment{rgbt 1
 }
}
 interior{
 media{
 emission 1 
 scattering{1,.01}
 intervals 10 
 samples 1, 15
 confidence 0.9999 
 variance 1/1000 
 density {
 radial 
 turbulence .35
 color_map{
 [ 0 rgb<1.0,1.0,0.0>]
 [.1 rgb<1.0,.50,0.0>]
 [.5 rgb<1.0,.75,.25>]
 [.7 rgb<0.7,.45,0.0>]
 [ 1 rgb<1.0,.65,0.0>]
   }
  }
 }
}
 hollow 
  scale<1.25,2,1.25>*3 
   translate y*1.25
}

intersection{
cone{y*-8,.75,y*1,.5 
 pigment{rgb<1,1,.97>}
  finish{ambient .5 diffuse .23}
}
sphere{<.05,1,0>,.5 inverse
 pigment{rgb 1}
  finish{ambient .5 diffuse .23}
 }
}

cylinder{y*.8,y*1.5,.1 
 pigment{rgb 0}
 }
}

object{Candle}
camera{location<0,5,-20>look_at y*-3}
light_source{<0,0,-500>rgb 1}