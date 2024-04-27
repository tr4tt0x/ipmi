PImage img;
void setup(){
  size(800,400);
img = loadImage("paisaje4.jpg");

}
void draw(){
  println(mouseX + "/" +  mouseY);
background(220,190,120);

fill(100,250);
triangle(0,399,8,143,999,399);
fill(80);
triangle(0,399,289,90,999,399);
noFill();
image(img,490,0);
stroke(255);
fill(100);
triangle(95,399,205,268,288,399);
triangle(284,399,374,230,488,399);




}
