class Mouse {
  float x, y;
  boolean moveUp, moveRight, moveDown, moveLeft;
  float kecepatanX, kecepatanY;

  Mouse() {
    x = width/2;
    y = height/2;
    kecepatanX = 3;
    kecepatanY = 3;
  }
  
  void reset() {
    x = width/2;
    y = height/2;
    stamina = 0;
    skor = 0;
  }
  
  void show() {
    imageMode(CENTER);
    if (moveUp) {
      image(tikusUp, x, y);
    } else if (moveDown) {
      image(tikusDown, x, y);
    } else if (moveLeft) {
      image(tikusLeft, x, y);
    } else if (moveRight) {
      image(tikusRight, x, y);
    } else {
      image(tikusUp, x, y);
    }
  }

  void move() {
    if (moveUp) {
      x += kecepatanX + stamina;
      y -= kecepatanY + stamina;
    } else if (moveRight) {
      x += kecepatanX + stamina;
      y += kecepatanY + stamina;
    } else if (moveDown) {
      x -= kecepatanX + stamina;
      y += kecepatanY + stamina;
    } else if (moveLeft) {
      x -= kecepatanX + stamina;
      y -= kecepatanY + stamina;
    }
  }
  
  void eat(Keju k){
    if(x > k.x && x < k.x + tikusUp.width/2 || x + tikusUp.width/2 > k.x && x + tikusUp.width/2 < k.x + tikusUp.width/2) {
      if(y > k.y && y < k.y + tikusUp.width/2) {
        stamina = stamina + 0.25;
        skor++;
        k.reset();
      }
    }
  }
  
  void kasenteg(Senteg s) {
    if(x > s.x && x < s.x + tikusUp.width/2 || x + tikusUp.width/2 > s.x && x + tikusUp.width/2 < s.x + tikusUp.width/2) {
      if(y > s.y && y < s.y + tikusUp.width/2) {
        stamina = stamina - 0.25;
        skor--;
        //s.reset();
      }
    }
  }
  
  void cekTepi() {
    if((x > width + tikusUp.width) || (x < 0 - tikusUp.width)) {
      reset();
    } else if((y < 0 - tikusUp.height) || (y > height + tikusUp.height)){
      reset();
    }  
  }  
}