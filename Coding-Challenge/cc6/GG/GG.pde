Gelembung[] gg = new Gelembung[10];

void setup() {
  size(500, 500);
  
  for(int i=1; i<gg.length; i++) {
    gg[i] = new Gelembung();
  }
}

void draw() {
  background(70,70,70);
  
  for(int i=1; i<gg.length; i++) {
    if(i % 2 == 1) {
      gg[i].ganjil = true;
      gg[i].cek();
      gg[i].tampilkan(i);
      gg[i].goyang();
    } else {
      gg[i].ganjil = false;
      gg[i].cek();
      gg[i].tampilkan(i);
      gg[i].goyang();
    }
  }
}