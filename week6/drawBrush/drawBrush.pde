
//hue value
int h;
int brushSize;

void setup() {
  size (600, 600);
  background(255);
  colorMode(HSB, 255);
}

void draw() {
  //noStroke();
  //fill(h, 250,200);
  //ellipse(mouseX, mouseY,30,30);
if(brushSize <=1){
  brushSize = 1;
}else if (brushSize >= 15){
  brushSize =15;
}


  stroke (h, 150, 150);
  strokeWeight(brushSize);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
void keyPressed() {
  //c key press change color
  if (key == 'c' ||key == 'C' ) {
    h = int(random(0, 255));
  }

  //space bar clears drawing
  if (key == ' ') {
    background(255);
  }


  //change stroke size

  if (key == '[') {
    brushSize--;
  } else if (key == ']') {
    brushSize++;
  }
}