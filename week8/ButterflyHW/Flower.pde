class Flower {
  //pvector has x and y value must be assigned 
  PVector pos; 

  PImage flowerimg;

  Flower () {
    flowerimg = loadImage ("flower.png");
    pos = new PVector (mouseX, mouseY);
  }

  void update() {
    pos = new PVector (mouseX, mouseY);
  }

  void display () {
    flowerimg.resize (100, 0);
    imageMode (CENTER);
    image (flowerimg, pos.x, pos.y);
  }
}