Mouse tikus;
Keju keju;
Senteg senteg;

PImage tikusUp, tikusRight, tikusDown, tikusLeft, bg, cheese;
float stamina = 0;
int skor;
PFont font;

void setup() {
  size(600, 600);
  tikus = new Mouse();
  keju = new Keju();
  senteg = new Senteg();
  
  bg = loadImage("jukut.png");
  tikusUp = loadImage("tikusUp.png");
  tikusRight = loadImage("tikusRight.png");
  tikusDown = loadImage("tikusDown.png");
  tikusLeft = loadImage("tikusLeft.png");
  cheese = loadImage("keju.png");
  
  font = createFont("Prototype", 50);
}

void draw() {
  smooth();
  //background(50, 200, 0);
  background(bg);
  
  tikus.show();
  tikus.move();
  tikus.eat(keju);
  tikus.cekTepi();
  tikus.kasenteg(senteg);
  
  keju.show();
  
  senteg.show();
  
  fill(255);
  textSize(35);
  textFont(font);
  text(skor, 32, 45);
}

void keyPressed() {
  if(keyCode == UP) {
    tikus.moveUp = true;
    tikus.moveRight = false;
    tikus.moveDown = false;
    tikus.moveLeft = false;
  } else if(keyCode == RIGHT) {
    tikus.moveUp = false;
    tikus.moveRight = true;
    tikus.moveDown = false;
    tikus.moveLeft = false;
  } else if(keyCode == DOWN) {
    tikus.moveUp = false;
    tikus.moveRight = false;
    tikus.moveDown = true;
    tikus.moveLeft = false;
  } else if(keyCode == LEFT) {
    tikus.moveUp = false;
    tikus.moveRight = false;
    tikus.moveDown = false;
    tikus.moveLeft = true;
  }
}