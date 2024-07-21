[![KRmj-Mz6-Qa-Um-P-1584-396.png](https://i.postimg.cc/HkXSSH13/KRmj-Mz6-Qa-Um-P-1584-396.png)](https://postimg.cc/Yv2f959m)

<h1>Auto escala en Pov-Ray </h1>

![CodePen](https://img.shields.io/badge/Codepen-000000?style=for-the-badge&logo=codepen&logoColor=white)

## Desarrollo
La escena incluye una variedad de componentes detallados, como ruedas, parachoques, lámparas, asientos, motor, entre otros. Está organizado en secciones que abarcan la configuración general de la escena, la declaración y disposición de las partes del automóvil, y la inclusión de objetos adicionales, como montañas, árboles y una calle. El uso de texturas y colores agrega detalles visuales a las diferentes partes del automóvil y otros elementos de la escena. Este código puede servir como base para la creación de representaciones visuales de modelos tridimensionales de automóviles utilizando POV-Ray.

## Operación 
### Librerias
  ```#include "colors.inc"
  #include "woods.inc"
  #include "metals.inc"
  #include "textures.inc"
  #include "glass.inc"
```
### Configuración de la Escena
```
// Configuración general de la escena: cámara, luces, plano y fondo
camera {
    location <20, 15, -10>
    look_at <5, 5, 5>
    angle 80
}

background {color rgb <0.2, 0.4, 0.8>} 

light_source { <100, 100, -100> color White }

plane {
    y, 0
    pigment {color rgb <0, 0.1, 0>}
}
```

### Objetos adicionales 
```
object { Montana translate <-10,0,60> }
object { Calle }
object { Arbol translate <-50,0,-10> }
// ... (más objetos de la escena)
```

## 🔭 Vista - Ejecución
<div align="center">
    <img src="https://github.com/Jjmoreno24/Auto_escala_POV_ray/assets/117414953/d10bcc88-d182-48cf-874d-255d1787405e" alt="carrito" width="600" height="400" />
</div>

<br>
<div align="center">
<h3 align="center">Let's connect 😋</h3>
</div>
<p align="center">
<a href="https://www.linkedin.com/in/jjosemoreno24" target="blank">
<img align="center" width="30px" alt="Hector's LinkedIn" src="https://www.vectorlogo.zone/logos/linkedin/linkedin-icon.svg"/></a> &nbsp; &nbsp;
<a href="https://twitter.com" target="blank">
<img align="center" width="30px" alt="Hector's Twitter" src="https://www.vectorlogo.zone/logos/twitter/twitter-official.svg"/></a> &nbsp; &nbsp;
<a href="https://www.twitch.tv" target="blank">
<img align="center" width="30px" alt="Hector's Twitch" src="https://www.vectorlogo.zone/logos/twitch/twitch-icon.svg"/></a> &nbsp; &nbsp;
<a href="https://www.youtube.com" target="blank">
<img align="center" width="30px" alt="Hector's Youtube" src="https://www.vectorlogo.zone/logos/youtube/youtube-icon.svg"/></a> &nbsp; &nbsp;
</p>
