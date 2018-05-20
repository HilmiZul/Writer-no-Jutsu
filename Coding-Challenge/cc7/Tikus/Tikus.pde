Mouse tikus;
Keju keju;

PImage tikusUp, tikusRight, tikusDown, tikusLeft;
int stamina = 0;

void setup() {
  size(600, 600);
  tikus = new Mouse();
  keju = new Keju();
  
  tikusUp = loadImage("tikusUp.png");
  tikusRight = loadImage("tikusRight.png");
  tikusDown = loadImage("tikusDown.png");
  tikusLeft = loadImage("tikusLeft.png");
}

void draw() {
  background(50, 200, 0);
  
  tikus.show();
  tikus.move();
  tikus.eat(keju);
  tikus.cekTepi();
  
  keju.show();
  
  fill(255, 100, 100);
  noStroke();
  textSize(35);
  text(stamina, 32, 37);
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