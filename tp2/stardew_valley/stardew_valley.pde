
//variables

PImage imagen1,imagen2,imagen3,imagen4,imagen5,imagen6,imagen7,imagen8;


void setup(){
size(640,480);
imagen1 = loadImage("fondo1.jpg");
imagen2 = loadImage("fondo2.jpg");  
  imagen3 = loadImage("imagen3.jpg");
  imagen4= loadImage("fondo4.jpg");
  imagen5= loadImage("fondo5.jpg");
  imagen6= loadImage("fondo6.jpg");
  imagen7= loadImage("fondo7.jpg");
  imagen8= loadImage("fondo8.jpg");
  

}
//pantalla 1

void draw(){

background(0);
image(imagen1,0,0);
textSize(40);
text("STARDEW VALLEY", 180,230);
textSize(35);
text("Press S to start",220,350);   
if(key==' '){
  background(0);
  textSize(40);
  fill(255);
  text("FIN",280,220);
  textSize(35);
  fill(255,220,0);
  text("presiona F para volver al inicio",120,320);
  textSize(25);
  fill(255);
  text("alumno:Tomás Ruiz Diaz \nlegajo:119134/6",280,420);
}
else if(key=='f'){
  


background(0);
image(imagen1,0,0);
textSize(40);
text("STARDEW VALLEY", 180,230);
textSize(35);
text("Press S to start",220,350); 
}
  
  





if(key=='s'){
  image(imagen2,0,0);
  textSize(30);
  text("Introducción",220,50);
  textSize(25);
  text("Stardew valley es un juego RPG \n donde tendras que \n cuidar tu propia granja",180,130);
  text("presiona T para continuar",220,450);

}
 if(key=='t'){
   image(imagen3,0,0);
   textSize(30);
   fill(255);
   text("presiona A para continuar",220,450);
   text("Los Cultivos",220,20);
   textSize(20);
   fill(0);
   stroke(5);
   text("Los Cultivos son plantas que crecen \na partir de semillas para ser cosechadas con fines económicos, \nalimenticios o de regalo.\n Por lo general, cada cultivo es estacional. Sólo se puede plantar durante\n su estación designada,\n y \ncuando cambia de estación (después del día 28),\nel cultivo se marchita y muere",0,130);
   
   
 }
if(key=='a'){
  image(imagen4,0,0);
 textSize(30);
 fill(255);
 text("presiona R para continuar",220,450);
 text("Los Animales",220,50);
 textSize(20);
  text("Los animales desempeñan varias funciones en la granja. \nAlgunos son animales salvajes, con los que no se puede interactuar. Se puede \nobtener una mascota \n(gato o perro) con la que el jugador puede entablar amistad.\nSe puede comprar un caballo para montar. \nY se pueden comprar animales de granja que sirven como fuente de diversos tipos de productos, \nproporcionando recursos y ganancias.",0,130);
  
}
if(key=='r'){
  image(imagen5,0,0);
  textSize(30);
  fill(255);
  text("presiona D para continuar",220,450);
  text("Los Aldeanos",220,50);
  fill(0);
  textSize(15);
  fill(255);
  text("Los aldeanos son personajes de Stardew Valley. \nSon ciudadanos que viven en Pueblo Pelícano y sus alrededores. \nCada aldeano tiene una rutina diaria, \npor lo que pueden estar situados en diferentes\n secciones del pueblo dependiendo de la hora del día en el juego.\nLos aldeanos proporcionan misiones y pueden recibir regalos para aumentar su afecto. \nCada aldeano tiene gustos y disgustos únicos, \ny responderá a los regalos de forma diferente.",0,130);



  
  
  
}
 if(key=='d'){
   image(imagen6,0,0);
   textSize(40);
   fill(255);
   text("Estaciones", 220,50);
   text("preciona E para continuar",200,450);
   textSize(30);
   fill(255,0,0);
   text("Hay cuatro Estaciones en Stardew Valley: \nPrimavera, Verano, \nOtoño, y Invierno. \nCada estación dura 28 días. \nEl juego empieza el primer día de Primavera. \nTras completar un \nciclo de estaciones, \nel juego avanza un año cuando vuelve a empezar \nla primavera.",0,130);
   
  
 }
  if(key=='e'){
   image(imagen7,0,0);
   textSize(30);
   text("Misiones",220,50);
   text("presiona W para continuar",220,450);
   textSize(20);
   fill(255);
   text("Las Misiones son una serie de objetivos que otorgan \nrecompensas una vez completadas. \nSe les pueden hacer seguimiento en el diario de misiones, \nque se puede abrir pulsando el icono con el signo de exclamación \nsituado en la parte inferior de la indicación de fecha/hora",0,130);  
    
  }
  
if(key=='w'){
 image(imagen8,0,0);
 textSize(30);
 fill(255);
 text("desarrollador del juego",220,50);
 text("presiona espacio para continuar",220,450);
 fill(255,0,0);
 textSize(25);
 text("ConcernedApe es Eric Barone, \nel creador y desarrollador principal de Stardew Valley, \nasí como el nombre de la empresa que \nfundó para continuar con el desarrollo del juego. \nDesde 2012 hasta 2019, \nprogramó todo el juego \n(excepto la conexión en red multijugador en la versión 1.3) \ny creó todo el arte, \nlos efectos de sonido y la música",0,130);
   
}

}
