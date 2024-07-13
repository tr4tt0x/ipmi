int estado;
PImage img1;
PImage img2;
PImage img3;


PFont Jose;

String texto1;
String texto2;
String texto3;

void setup(){
size (640,480);
estado=0;

img1= loadImage("fondo1.jpg");
img2= loadImage("fondo2.jpg");
img3= loadImage("imagen3.jpg");

textAlign(CENTER,TOP);

texto1= "¡Stardew Valley es un RPG de vida en el campo!\nHereda la vieja granja de tu abuelo en Stardew Valley.\nArmado con herramientas de segunda mano y algo de dinero,\nte dispones a empezar tu nueva vida."; 
texto2= "No va a ser fácil. Desde que Joja Corporation llegó a la ciudad,\nlas antiguas formas de vivir han desaparecido.\nEl centro comunitario, en su momento el centro de actividad más activo de la ciudad,\nse encuentra ahora en ruinas."; 
texto3= "juego desarrollado por Eric Barone del que se suele decir que es una combinación de Harvest Moon\ny Animal Crossing. \nY sí, Stardew Valley tiene una fuerte influencia de esas dos series y de algún juego más como Rune Factory,\nel spin off de Harvest Moon,\npero tiene su propia personalidad y una jugablidad muy rica\ncon una puntuación de 8.7 en total.";
}

void draw(){
println(mouseX+" a "+mouseY+" a "+estado+" a "+frameCount/60);

if(estado==0){ 
image(img1,0,0,640,480);
textSize(15);
fill(255);
text(texto1,320,frameCount/1.5);

if(frameCount/60>=8){
estado=1;
frameCount=1;
}
}

if(estado==1){ 
image(img2,0,0,640,480);
textSize(15);
fill(150,50,10);
text(texto2,320,frameCount/1.5);

if(frameCount/60>=8){
estado=2;
frameCount=1;
}
}
if(estado==2){ 
image(img3,0,0,640,480);
textSize(15);
fill(255,250,250);
text(texto3,320,frameCount/1.5);

if(frameCount/60>=8){
estado=3;
frameCount=1;

textSize(15);
    fill(255, 255, 255);
    text("Restart", width - 50, height - 20);
}
}
}
void mouseClicked(){

  if (estado == 3 && mouseX > width - 100 && mouseY > height - 50) {
    estado = 0;
    frameCount = 0;
  }
}
