class Pesawat {
  float w = 65;
  float x = width/2;
  float y = height-w;
  boolean moveLeft, moveRight;
  float xs = 10;

  void show() {
    fill(255);
    noStroke();
    //rect(x, y, w, w);
    image(img, x, y);
  }

  void move() {
    if (moveLeft) {
      x -= xs;
    }
    if (moveRight) {
      x += xs;
    }
  }

  void cekTepi() {
    if (x > width-w) {
      x = width-w;
    } else if (x < 0) {
      x = 0;
    }
  }
}