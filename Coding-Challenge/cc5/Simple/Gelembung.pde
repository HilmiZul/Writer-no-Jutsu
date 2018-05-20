class Gelembung {
  float x = random(0, width);
  float y = random(-500, 0);
  float r = random(30, 70);
  float ys = 3;
  color warna = color(random(0, 255), random(0, 255), random(0, 255));

  Gelembung() {
  }

  void reset() {
    x = random(0, width);
    y = random(-300, 0);
    r = random(30, 70);
    warna = color(random(0, 255), random(0, 255), random(0, 255));
  }

  void show() {
    noFill();
    stroke(warna);
    strokeWeight(5);
    ellipse(x, y, r, r);
  }

  void move() {
    y += ys;
    x -= random(-2, 2);
  }

  void cekTepi() {
    if (y > height+(r/2)) {
      reset();
    }
  }
  
  void hit(Peluru p) {
    for(int i=0; i<gelembung.length; i++){
      if(x > p.x && x < p.x + r/2 || x < p.x && x > p.x - r) {
        if(y > p.y && y < p.y + p.r) {
          skor++;
          reset();
        }
      }
    }
  }
}