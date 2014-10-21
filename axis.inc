// 3-D XYZ Axis

#include "colors.inc"
#declare AXIS = 

object { union { 
        sphere { <0, 0, 0> 0.1 pigment { color White }}        
        cylinder { <0, 0, 0>, <1, 0, 0>, 0.05  pigment { color Cyan }}
        cylinder { <0, 0, 0>, <0, 1, 0>, 0.05  pigment { color Green }}
        cylinder { <0, 0, 0>, <0, 0, 1>, 0.05  pigment { color Red }}
        
        cone { <1, 0, 0>, 0.1, <1.2, 0, 0>, 0.0 pigment { color Yellow }}
        cone { <0, 1, 0>, 0.1, <0, 1.2, 0>, 0.0 pigment { color Yellow }}
        cone { <0, 0, 1>, 0.1, <0, 0, 1.2>, 0.0 pigment { color Yellow }}        
}}