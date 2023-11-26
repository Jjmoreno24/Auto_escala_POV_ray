#include "colors.inc"
#include "woods.inc"      
#include "metals.inc"
#include "textures.inc" 
#include "glass.inc"

//configuracin general de la escena: camara, luces, plano y fondo
camera {
    location<20, 15,-10>
    look_at <5, 5, 5>
    angle 80
}      

background {color rgb<0.2, 0.4, 0.8>} 

light_source { <100, 100, -100> color White }

plane {
    y, 0
    pigment {color rgb <0, 0.1, 0>}
}
   
    
    
//declaracion de todas las partes del carro

#declare Lamparas = sphere{
    <0,2,0> 0.7
    translate<12,4,0.7>  
    texture{T_Dark_Green_Glass}
}                        

#declare Delantera = intersection{
    cylinder{
        <0,0,0>,<0,.5,0> 1.9  
        pigment{Orange}  
        rotate<90,0,90>
        translate<1.7,11.5,-0.1>
        scale<1.5,1,3>
    }      
    box{
        <0,0,0>,<5,3,0.5>
        pigment{Orange}   
        translate<0,10,0>
    }
    scale<0.65,1.2,0>
    translate<1.5,-2,0>  
} 

#declare Delantera2 = intersection{
    cylinder{
        <0,0,0>,<0,.5,0> 1.9  
        pigment{Orange}  
        rotate<90,0,90>
        translate<1.7,11.5,-0.1>
        scale<1.5,1,3>
    }      
    box{
        <0,0,0>,<5,3,0.5>
        pigment{Orange}   
        translate<0,10,0>
    }   
    scale<0.85,0.65,0>  
    translate<0,5,0>
}

#declare Rueda = cylinder{
    <0,0,0>,<0,.5,0> 1.9  
    pigment{Orange} 
}
  
#declare Centro = difference{
    box{
        <0,2.2,-1>,<10,5,0> 
        pigment{Cyan}
    }                   
    cylinder{
        <0,-2,0>,<0,2.4,0> 1.9  
        pigment{Cyan} 
        rotate<90,0,90>  
        translate<2,5,-1> 
        scale<2.5,1,.4>
    }
    translate<17,0,0> 
}

#declare Base = box{
    <-1,0,0>,<20,1,7>  
    pigment{color rgb <0.329, 0.513, 0.243>}   
    translate<-6,2,0>
}

#declare Curva =  difference{
    box{
        <0,0,0>,<3.8,2,1>
        translate<10,3,-1>
        pigment{Cyan}

    } 
    cylinder{
        <0,-0.5,0>,<0,1.5,0> 1.9  
        pigment{Cyan} 
        rotate<90,0,90>  
        translate<11.8,2.3,-1>
    }     
}

#declare Parachoques = box{
    <0,0,0>,<1,1,9> 
    translate<14,2,-1>
    texture{Rust}  
}    

#declare Bloque1 = box{
    <0,0,0>,<4.4,1,1> 
    pigment{Cyan}      
}  

#declare Bloque2 = box{
    <0,0,0>,<4,1,1> 
    pigment{Cyan}      
} 

#declare Montana = cone {
    <0,0,0>, 40
    <0,20,0>,  6 // Centro y radio del otro extremo
    texture {
        pigment {
            gradient y
            color_map {
                [0.0 rgb <0.15, 0.07, 0.0>] 
                [0.5 rgb <0.0, 0.3, 0.0>] 
                [1.0 rgb <0.5, 0.5, 0.5>] 
            }
        }
        finish {
            ambient 0.2
            diffuse 0.8
        }
    }
}

       
#declare Calle = box{
    <-200,0,-2>,<200,0.1,12>
    
}         

#declare Arbol = union{
    box{
        <0,0,0>,<1,9,1> 
        texture { T_Wood15 }
    } 
    sphere{
        <0,3,0>, 4
        texture {
            pigment {color rgb <0, 0.5, 0>} 
            finish {
                ambient 0.1
                diffuse 0.9
            }
            normal {
                agate 0.3
                scale <0.1, 0.1, 0.1>
            }
        }
        translate <0.5,7,1>
    } 
}

 

#declare Rampa =  union{
    box{
        <0,0,0>,<3,1.6,1> 
        translate<-7.1,3,-1>
        pigment{Cyan}
    }   
    
    difference{
        box{
            <0,0,0>,<3,1.4,1> 
            translate<-7,4.5,-1>
            pigment{Cyan}
        }  
        
        box{
            <0,0,-1>,<3,1.4,2>
            translate<-5,7,-1.3>
            pigment{Cyan}
            rotate<0,0,20>
        
        }  
        translate<-0.1,0.1,0>
    
    }  
      
}

#declare Cajuela = cylinder{
    <0,0,0>,<0,0,7> 0.4  
    texture{T_Brass_1A}  
}    
    
    
#declare Motor= difference{
    box{
        <0,0,0>,<5,3,3>
        pigment{color rgb <0.329, 0.513, 0.243>}
    }
    box{
        <0,-1,0>,<5.1,4,3>
        pigment{color rgb <0.329, 0.513, 0.243>}
        rotate<0,8,0> 
        translate<0,0,3>
    }   

    box{
        <-1,-1,0>,<5.1,4,3>
        pigment{color rgb <0.329, 0.513, 0.243>}
        rotate<0,-8,0> 
        translate<0.7,0,-2.9>
    } 
    
}
                                     
                                     
                                     
//todas las partes del carro puestas en escena

//parte de atras del carro
object{Cajuela translate<-4.4,4,0>} 
object{Cajuela translate<-5.2,4,0>}
object{Cajuela translate<-6,4,0>}
object{Cajuela translate<-6.7,3,0>}
object{Cajuela translate<-6.7,4,0>}   

//ruedas  
object{ Rueda rotate<90,0,90> translate<-2,2,-1>}    
object{ Rueda rotate<90,0,90> translate<11.9,2,-1>}
object{ Rueda rotate<90,0,90> translate<12,2,7>}   
object{ Rueda rotate<90,0,90> translate<-2,2,7>}

//partes de la puerta  
object{ Centro translate<-17,0,0> }   
object{ Centro translate<-17,0,8>}

//base
object{ Base }  

//parte sobre la rueda
object{ Curva translate<0,0,0>} 
object{ Curva translate<0,0,8>} 
object{ Curva translate<-10,0,1> rotate<0,180,0> scale<1.1,0,0>}
object{ Curva translate<-10,0,-7> rotate<0,180,0> scale<1.1,0,0>} 
object{ Bloque1 translate<-4.2,5,-1>}  
object{ Bloque2 translate<9.8,5,-1> }
object{ Bloque1 translate<-4.2,5,7>}
object{ Bloque2 translate<9.8,5,7> }                
object{ Rampa }          
object{ Rampa translate<0,0,8>}                
    
//parachoques delantero y trasero           
object{ Parachoques }   
object{ Parachoques translate<-22,0,0>} 

//piezas cerca del motor
object{ Delantera translate<-6.4,-7,13> rotate<0,90,0> } 
difference{
    object{Delantera2}
    sphere{
        <0,2,0> 0.6
        translate<1,10.5,0.5>
        pigment{Orange}
    } 
    sphere{
        <0,2,0> 0.6
        translate<3.2,10.5,0.5> 
        pigment{Orange}
    }
    translate<-5,-5.7,4>
    rotate<0,90,0> 
    scale<0,0,1.2>                            
}                 

//partes del asiento y parte del motor   
object{ Motor translate<6,3,-0.037> scale<1.15,0,2.35>}
object{ Delantera translate<-5.4,-5.3,-3> rotate<0,90,0> scale<0,0.7,1.5>} 
object{ Delantera translate<-5.5,-10.5,5> rotate<0,90,90> scale<0,0.7,1.5>}

box{
    <-2,0,0>,<8,1.5,1>
    pigment{color rgb <0.329, 0.513, 0.243>}
    translate<-2,3,0> 
    
}
box{
    <-2,0,0>,<8,1.5,1>
    pigment{color rgb <0.329, 0.513, 0.243>}
    translate<-2,3,6> 
    
}  
box{
    <-1,0,-4>,<2,3,3>
    pigment{color rgb <0.329, 0.513, 0.243>}
    translate<5,3,4> 
    
}   

//lamparas del carro
object{ Lamparas }   
object{ Lamparas translate<0,0,5.5>} 
sphere{  
    <0,6,0> 0.3
    translate<11.5,0.1,3.5>
    pigment{Green}
    
}    

//objetos de la escena    
object{ Montana translate<-10,0,60>} 
object{ Montana translate<-50,0,55>} 
object{ Montana translate<-100,0,70>} 
object{ Montana translate<50,0,70>}
object{ Montana translate<100,0,55>}
object{ Montana translate<-10,0,-45>} 
object{ Montana translate<-50,0,-55>} 
object{ Montana translate<-100,0,-60>} 
object{ Montana translate<50,0,-40>}
object{ Montana translate<100,0,-55>}  
object{ Calle }
object{ Arbol translate<-50,0,-10>} 
object{ Arbol translate<-30,0,-20>}  
object{ Arbol translate<-10,0,-9>} 
object{ Arbol translate<10,0,-20>}
object{ Arbol translate<30,0,-10>}
object{ Arbol translate<70,0,-25>} 
object{ Arbol translate<-50,0,10>} 
object{ Arbol translate<-30,0,20>}  
object{ Arbol translate<-10,0,15>} 
object{ Arbol translate<10,0,20>}
object{ Arbol translate<30,0,10>}
object{ Arbol translate<70,0,25>}