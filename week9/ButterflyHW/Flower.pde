class Flower {
  //pvector has x and y value must be assigned 
  PVector pos; 

  PImage flowerimg;




  Flower () {
    flowerimg = loadImage ("flower.png");
    pos = new PVector (mouseX, mouseY, 0);

    ptsW=30;
    ptsH=30;
    // Parameters below are the number of vertices around the width and height
    initializeSphere(ptsW, ptsH);
  }

  void update() {
    pos = new PVector (mouseX, mouseY, 0);
  }

  void display () {
    flowerimg.resize (100, 0);
    //imageMode (CENTER);
    //image (flowerimg, pos.x, pos.y);
    pushMatrix();
    noStroke();
    beginShape();
    texture(flowerimg);
    // "laDefense.jpg" is 100x100 pixels in size so
    // the values 0 and 100 are used for the
    // parameters "u" and "v" to map it directly
    // to the vertex points
    translate(pos.x, pos.y, 0);
    vertex(0, 20, 0, 0);
    vertex(80, 5, 150, 0);
    vertex(95, 90, 150, 150);
    vertex(30, 95, 0, 150);
    endShape();
    popMatrix();
    //pushMatrix();
    //noStroke();
    //lights();
    //translate(pos.x, pos.y, 0);
    //fill(244, 233, 110);
    //sphere(100);
    ////textureSphere(100, 100, 100, flowerimg);
    //popMatrix();
  }
}