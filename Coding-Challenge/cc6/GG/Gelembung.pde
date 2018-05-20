class Gelembung {
  float r;
  float x = random(0+r, width-r);
  float y = random(0+r, height-r);
  color warna;
  boolean ganjil;

  void tampilkan(int bilangan) {
    r = bilangan * 10;
    pushStyle();
    fill(warna);
    noStroke();
    ellipse(x, y, r, r);
    popStyle();

    fill(70, 70, 70);
    textSize(r/2);
    textAlign(CENTER);
    text(bilangan, x, y+r/4);
  }

  void cek() {
    if (ganjil) {
      warna = color(255, 100, 100);
    } else {
      warna = color(255);
    }
  }

  void goyang() {
    x = x - random(-1, 1);
    y = y - random(-1, 1);
  }
}