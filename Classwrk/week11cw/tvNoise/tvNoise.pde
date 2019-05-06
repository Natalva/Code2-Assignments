void setup (){
  size(600,600);
 
}
void draw(){
 loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j = height; j++)
    int idx = i + j * width;
    pixels[idx] = color(random(255));
    stroke (random(255));
    point (i,j);
    
  }
 } 