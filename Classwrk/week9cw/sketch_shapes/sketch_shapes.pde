void setup(){
  size(600,600);
}

void draw(){
  background (255);
  ellipse (width/2, map(random(1),0,1,0, height) 50, 50);
  


beginShape();
for( int i = 0; i< width; i += 20; ){
vertex(i, map(noise(i)0,1,0, height));
}
endShape();
}