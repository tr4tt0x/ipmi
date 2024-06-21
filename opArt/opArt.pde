//Tomás Ruiz Diaz
//legajo 119134/6
//link al video de youtube https://youtu.be/m9wpyV4_Gno
PImage opArt;
boolean isMousePressed = false; // Variable para rastrear si el mouse está presionado
void setup() {
   opArt =loadImage("opArt.jpg");
  size(800, 400);
  strokeWeight(2);
 
}

void draw() {
  
  background(255);

  int step = 15; // Espacio entre las líneas
  float set = map(mouseX, 0, width, -30, 30); // Mapea la posición del mouseX a un valor de set

  // Dibujar líneas horizontales
  for (int y = 0; y < height; y += step) {
    line(0, y + set, width, y + set);
  }
    if (isMousePressed) {
    stroke(random(255), random(255), random(255));
  } else {
    stroke(0);
  }

  // Dibujar líneas verticales
  for (int x = 0; x < width; x += step) {
    line(x + set, 0, x + set, height);
  }

  // Dibujar líneas diagonales (izquierda superior a derecha inferior)
  for (int i = -width; i < width; i += step) {
    line(i + set, 0, i + width + set, height);
  }

  // Dibujar líneas diagonales (derecha superior a izquierda inferior)
  for (int i = 0; i < width * 2; i += step) {
    line(i + set, 0, i - width + set, height);
  }
   image(opArt,0,0);
}
// Funciones para detectar cuando el mouse se presiona y se suelta
void mousePressed() {
  isMousePressed = true;
}

void mouseReleased() {
  isMousePressed = false;
}
