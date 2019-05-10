class Attract {
  //pvector has x and y value must be assigned 
  PVector pos;
  float r;

  PImage flowerimg;

  Attract() {
    r = 200;
    //flowerimg = loadImage ("flower.png");
    //pos = new PVector (mouseX, mouseY, 0);
  }

  void update() {
    //pos = new PVector (mouseX, mouseY, 0);
  }

  void display () {
    ellipse(width/2, height/2, r, r);
  }
}