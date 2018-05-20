class Peluru {
  float x, y;
  float r = 20;
  float fireSpeed = 15;
  boolean fire;

  Peluru(Pesawat p) {
    x = p.x + (p.w/2);
    y = p.y + p.w;
  }

  void show() {
    fill(255, 90, 90);
    noStroke();
    ellipse(x, y, r, r);
  }
  
  void move() {
    y -= fireSpeed;
  }
  
  
}