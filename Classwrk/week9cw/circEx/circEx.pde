void draw() {
  background (0);
  pushMatrix();
  translate(width/2,height/2,300);
  rotateY(radians(mouseX));
  
  stroke (255);
  strokeWeight(3);
  noFill();
  box(200);
  
}