class Keju {
  int r;
  float x, y;

  Keju() {
    r = 30;
    x = random(r, width-r);
    y = random(r, height-r);
  }
  
  void reset() {
    x = random(r, width-r);
    y = random(r, height-r);
  }

  void show() {
    fill(255, 200, 0);
    noStroke();
    ellipse(x, y, r, r);
  }
  
}