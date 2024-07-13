PImage imagen1;
float tam;
int cant, cant2;
float[][] desplazamientoInternoX;
float[][] desplazamientoInternoY;
boolean[][] arrastrandoInterno;

void setup() {
  size(800, 400);
  colorMode(HSB, 360, 100, 100);
  imagen1 = loadImage("oparrrt.jpg");
  cant = 2;
  cant2 = 10;
  tam = height / 2;
  desplazamientoInternoX = new float[cant * cant][cant2 * cant2];
  desplazamientoInternoY = new float[cant * cant][cant2 * cant2];
  arrastrandoInterno = new boolean[cant * cant][cant2 * cant2];
}

void draw() {
  background(255);
  image(imagen1, 0, 0);
  dibujarGrilla();

  if (mousePressed) {
    seguirMouseInterno();
  }

  println(mouseX + "/" + mouseY);
  println(esPar());
}

void seguirMouseInterno() {
  for (int k = 0; k < cant; k++) {
    for (int t = 0; t < cant; t++) {
      int index = k * cant + t;
      for (int i = 0; i < cant2; i++) {
        for (int j = 0; j < cant2; j++) {
          int internoIndex = i * cant2 + j;
          if (arrastrandoInterno[index][internoIndex]) {
            desplazamientoInternoX[index][internoIndex] = mouseX - (500 + k * 200);
            desplazamientoInternoY[index][internoIndex] = mouseY - (100 + t * 200);
          }
        }
      }
    }
  }
}

void mousePressed() {
  for (int k = 0; k < cant; k++) {
    for (int t = 0; t < cant; t++) {
      int index = k * cant + t;
      for (int i = 0; i < cant2; i++) {
        for (int j = 0; j < cant2; j++) {
          int internoIndex = i * cant2 + j;
          float xPos = 500 + k * 200 + desplazamientoInternoX[index][internoIndex];
          float yPos = 100 + t * 200 + desplazamientoInternoY[index][internoIndex];
          float halfTam = (tam - j * 20) / 2;
          if (mouseX > xPos - halfTam &&
              mouseX < xPos + halfTam &&
              mouseY > yPos - halfTam &&
              mouseY < yPos + halfTam) {
            arrastrandoInterno[index][internoIndex] = true;
          }
        }
      }
    }
  }
}

void mouseReleased() {
  for (int i = 0; i < cant * cant; i++) {
    for (int j = 0; j < cant2 * cant2; j++) {
      arrastrandoInterno[i][j] = false;
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    for (int i = 0; i < cant * cant; i++) {
      for (int j = 0; j < cant2 * cant2; j++) {
        desplazamientoInternoX[i][j] = 0;
        desplazamientoInternoY[i][j] = 0;
      }
    }
  }
}

void dibujarCuadrados(int x, int y) {
  color cuadro1, cuadro2, cuadro3, cuadro4;
  int index = x * cant + y;
  for (int i = 0; i < cant2; i++) {
    for (int j = 0; j < cant2; j++) {
      int internoIndex = i * cant2 + j;
      cuadro1 = color(168, 80, 22);
      cuadro2 = color(6, 64, 31);
      cuadro3 = color(348, 88, 55);
      cuadro4 = color(271, 87, 44);
      pushMatrix();
      translate(500 + x * 200 + desplazamientoInternoX[index][internoIndex], 
                100 + y * 200 + desplazamientoInternoY[index][internoIndex]);
      rectMode(CENTER);
      fill(255);
      if (x + y == 0) {
        fill(cuadro1);
      } else if (x + y == 2) {
        fill(cuadro4);
      }
      if (x == 0 && y == 1) {
        fill(cuadro2);
      } else if (x == 1 && y == 0) {
        fill(cuadro3);
      }
      rect(0, 0, tam - j * 20, tam - j * 20);
      popMatrix();
    }
  }
}

void dibujarGrilla() {
  for (int k = 0; k < cant; k++) {
    for (int t = 0; t < cant; t++) {
      dibujarCuadrados(k, t);
    }
  }
}

boolean esPar() {
  return (5 % 2 == 0);
}
