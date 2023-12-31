# Grimmeon: Computación Gráfica
Grimmeon studio's repo specifically made for computación gráfica.

# Class Activity 2: Post-Processing
## Juan Pablo Correa

### 1. Chromatic Aberration
![Aberration-min](https://github.com/Namelss4/grimmeon-cg/assets/82065985/43c0a3d0-35e7-4b87-9b4c-324b41348689)


ShaderGraph:
![ShaderGraph-ChromaticAb](https://github.com/Namelss4/grimmeon-cg/assets/82065985/8c3a9502-4b34-4e4f-a440-e0ff210137dc)

### 2. Gaussian Depth Of Field
![ezgif com-video-to-gif (1)](https://github.com/Namelss4/grimmeon-cg/assets/82065985/e9df6c90-6fcb-4ecd-9704-7de522db9e13)


ShaderGraph:
![Sg gaussianBlur](https://github.com/Namelss4/grimmeon-cg/assets/82065985/c71ce67b-0bf2-444f-bb28-5b9a8aeaf688)


## Jerónimo Cano Álvarez

### 1. Chromatic Aberration
![Aberrasra](https://github.com/Namelss4/grimmeon-cg/assets/82065985/d917cd72-861a-4032-936b-e6f7bdd48a30)


ShaderGraph:
![SG aberration](https://github.com/Namelss4/grimmeon-cg/assets/82065985/12c94f27-4898-4817-8b50-65ef3f821709)

### 2. Gaussian Depth Of Field
![DepthMov](https://github.com/Namelss4/grimmeon-cg/assets/82065985/6d454384-f54a-41ab-83cd-754a832a95fd)


ShaderGraph:
![SG Dehpt](https://github.com/Namelss4/grimmeon-cg/assets/82065985/36e0322d-a04d-489b-8abf-46e19ad404bc)


# Second group project: Water shader & illumination (lighting)
## Whole effect video

## Requirements step by step
### 1. Animated displacement
![1-Waves-min](https://github.com/Namelss4/grimmeon-cg/assets/82065985/1f4db27d-44fb-4458-a7d9-28f5cb2fefc9)

Shader Graph:
![1](https://github.com/Namelss4/grimmeon-cg/assets/82065985/c0f3546e-2d09-43fb-8506-0dad3d57e49a)


### 2. Refraction
![2-Refractiongif](https://github.com/Namelss4/grimmeon-cg/assets/82065985/ba605acc-dc32-457a-b580-ae55282f3091)
Shader Graph:
![2](https://github.com/Namelss4/grimmeon-cg/assets/82065985/9d37d30a-4bf4-4443-bf9c-3826e64938fe)


### 3. Color based on depth
![3-waterDepth](https://github.com/Namelss4/grimmeon-cg/assets/82065985/74b1529f-ba8f-405b-b260-dab4475a5755)

Shader Graph:
![image](https://github.com/Namelss4/grimmeon-cg/assets/82065985/664b0009-8709-440d-9f76-7c278ee57348)



### 4. Specular lighting (with normal maps)

### 5. Reflections (Cubemaps)
![5-WaterCubeMap](https://github.com/Namelss4/grimmeon-cg/assets/83317226/5113e9c7-09a0-4920-b34b-f929ad657678)


Shader Graph:
![CubeMapNode](https://github.com/Namelss4/grimmeon-cg/assets/83317226/9d882d35-f993-4431-83db-27ae791b5150)


### 6. Intersections (Foam)
![ezgif com-optimize](https://github.com/Namelss4/grimmeon-cg/assets/82065985/fa2edc67-0a95-494c-b0de-e1f6c93ecb4a)

Shader graph: 
![image](https://github.com/Namelss4/grimmeon-cg/assets/82065985/f6d842e9-b3be-44dc-94e7-cfb44cf0524d)




# Class activity: Shaders
## First Section: Masks - Juan Pablo Correa
### Multi-Channel Mask
Material changing the 3 RBG chanels based on masks
![Multi-channel](https://github.com/Namelss4/grimmeon-cg/assets/82065985/7e26390e-0914-45da-bcdc-7dfa272b76e5)

Shader Graph:
![Screenshot 2023-09-25 172641](https://github.com/Namelss4/grimmeon-cg/assets/82065985/154201d6-6e18-4a7a-955b-9f3215250fce)
### Radial Procedural Mask
Masking Material with a sphere Mask Node
![RadialMask](https://github.com/Namelss4/grimmeon-cg/assets/82065985/f8146f81-eb5f-4b13-b409-032841a160ab)

Shader Graph: 
![Screenshot 2023-09-26 094719](https://github.com/Namelss4/grimmeon-cg/assets/82065985/035c56cf-61a2-43f1-837d-6b2df530d3dd)

## Second Section: Distortion - Juan Fernando Melo
### Refraction
![Refraction](CG-Refraction.gif)

Shader Graph:
![NodesRefraction](RefractionNodes.png)

### Smoke
![Smoke](CG-Smoke.gif)

Shader Graph:
![NodesSmoke](CG-SmokeNodes.png)

## Third Section: Erosion - Jerónimo Cano Álvarez
### Dissolve pre-made texture
![Premade](DissolvePreMade.gif)

![PremadeSS](SSDissolvePreMade.png)

### Noise Dissolve
![Untitled design (1)](https://github.com/Namelss4/grimmeon-cg/assets/82065985/d0aca960-421f-4aed-b5b8-68c7741e6c6d)

![last](https://github.com/Namelss4/grimmeon-cg/assets/82065985/b9bcb3ac-fbd2-49d2-9878-9db9632e269f)


## Fourth Section: Polar Coordinates - Team Work
### Procedural Polar Coordinates
Tiling Textures based on Polar coordinates (Additional Center option)
![PolarCoordinates](https://github.com/Namelss4/grimmeon-cg/assets/82065985/58dc8f14-6640-4ce8-80a1-dfdd7bd11142)

Shader Graph:
![Screenshot 2023-09-26 210539](https://github.com/Namelss4/grimmeon-cg/assets/82065985/35d48c3e-44dd-4a1d-b9ef-69d0019b0565)

### Mirrored Texture
Tiling Texture based on a mirrored texture
![MirroredTexture](CG-MirroredText.gif)

Shader Graph:
![NodesMirroredText](NodosMirroredText.jpg)


# First group project: Dark beam

## Video

![DarkBeam](DarkBeamVFX.gif)

https://youtu.be/YYbyRFTxQ2c?si=nd1zYFKbkDVVH1IX

## Comparison between value ranges (effect and reference):
![ComparisonValues](CompEfectoReferencia.png)

## Effect's value range:
![DarkBeamValues](Values.png)

# First excercise: Tornado
## Jerónimo Cano:

![Tornado 1](TornadoGIFjc.gif)

(YouTube link because the gif looks weird)
https://youtu.be/2Mke7DH_oMc

## Juan Fernando Melo Areiza:

![Tornado Mágico 1](TornadoMagicoGIF.gif)

(Also a Youtube Link, the gif looks awful)
https://youtu.be/8ja6CArPE8o

## Juan Pablo Correa Cataño:
![Tornado JPcorrea](TornadoJPCorrea.gif)

Check this one instead pls
https://youtu.be/cNnWaj64hLw
