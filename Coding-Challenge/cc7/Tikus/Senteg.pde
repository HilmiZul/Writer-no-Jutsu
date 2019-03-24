/* senteg */
class Senteg {
  float r = 35;
  float x = random(0+r, width-r);
  float y = random(0+r, height-r);
  
  void hiden() {
    noFill();
    noStroke();
    rect(x, y, r, r);
  }
  
  void show() {
    //image(sentegImg, x, y);
  } 
}