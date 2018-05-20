Pesawat pesawat;
Gelembung[] gelembung = new Gelembung[5];
Peluru peluru;

PImage img;
int skor = 0;
int p_height;

void setup() {
  size(500, 600);
  pesawat = new Pesawat();
  peluru = new Peluru(pesawat);
  
  for(int i=0; i<gelembung.length; i++){
    gelembung[i] = new Gelembung();
  }
  
  // ASSETS
  img = loadImage("pesawat.png");
  p_height = img.height;
}

void draw() {
  smooth();
  background(30, 30, 30);
  
  if(peluru.fire){
    peluru.show();
    peluru.move();
  }
  
  pesawat.show();
  pesawat.move();
  pesawat.cekTepi();
  
  for(int i=0; i<gelembung.length; i++) {
    gelembung[i].show();
    gelembung[i].move();
    gelembung[i].cekTepi();
    gelembung[i].hit(peluru);
  }
  
  pushStyle();
  noStroke();
  fill(255);
  textSize(32);
  text(skor, 30, 32);
}

void keyPressed() {
  if(keyCode == LEFT) {
    pesawat.moveLeft = true;
  } else if(keyCode == RIGHT) {
    pesawat.moveRight = true;
  } else if(key == ' ') {
    peluru = new Peluru(pesawat);
    peluru.fire = true;
  }
}

void keyReleased() {
  pesawat.moveLeft = false;
  pesawat.moveRight = false;
}