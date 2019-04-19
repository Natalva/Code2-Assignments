void setup(){
  size (600,600, P3D); // let processsing use another render system
}

void draw (){
  background(255);
  translate ( width/2, height/2, -mouseX);
  rectMode (CENTER);
  rotateX(radians(frameCount* 0.5))
  rotateY(radians(frameCount* 0.3))
  rotateZ(radians(frameCount* 0.1))
  rect(0,0,200,200);
  
  rotate(radians (90));
  translate(100,0);
  rect(0,0,200,200);

}