class BrickC2 extends Brick {
  BrickC2 (float x, float y,float w,float h){
  super(x,y,w,h);
  active = true;
  }
  void display() {
    rectMode(CORNER);
    stroke(255,255,0);
    fill(255,20,147);
    rect(x, y, w, h);
  }
}