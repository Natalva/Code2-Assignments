class BrickC1 extends Brick {
  float angle = 0.0;
  float speed = 0.01;
  
  BrickC1 (float x, float y, float w, float h) {
    super(x, y, w, h);
    active = true;
  }
  void display() {
    rectMode(CORNER);
    stroke(255, 255, 0);
    fill(135, 206, 250);
    
    
    
    
    
    
     pushMatrix();
    //makes roatae from center of square
    translate (x+w/2, y+h/2);
    //roates 
    angle += speed;
    rotate(angle);
    //puts back to normal in the start
    translate(-(x+w/2), -(y+h/2));
    //draws
    
    
    
    rect(x, y, w, h);
    
    
    
    
    
   
    popMatrix();
    
    
  }
}