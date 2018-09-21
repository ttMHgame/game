PImage img;
PImage img2;
int y=10;
int y2=10;
//image loading andd setup
void setup() {
  size(500, 1000);
  img = loadImage("img2.jpg");
  img2 = loadImage("img3.png");
}
void draw() {
  background(0);
  image(img2, 100, y);
  image(img, 400, y2);
  if (y >=1000) {
    textSize(50);
    fill(255);
    text("p1 wins", 250, 500);
  }
  if (y2 >=1000) {

    textSize(50);
    fill(255);
    text("p2 wins", 250, 500);
  }
}
//win condition
void mouseReleased() {
  delay(1);
  if (y >=1000) {
    textSize(50);
    fill(255);
    text("p1 wins", 250, 500);
  }
  if (y2 >=1000) {
    background(255);
    textSize(50);
    fill(255);
    text("p2 wins", 250, 500);
  }
}
//caracter movement
void keyPressed() {
  if (key == 's') {
    background(0);
    y=y+10;
    image(img2, 100, y);
  } else {
    background(0);
    image(img2, 100, y);
    image(img, 400, y2);
  }
  if (key == 'g') {
    background(0);
    y2=y2+10;
    image(img, 400, y2);
  } else {
    background(0);
    image(img2, 100, y);
    image(img, 400, y2);
  }
}
