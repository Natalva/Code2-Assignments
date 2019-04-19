
float x, y, z;

void setup() {
  size(500, 500, P3D);
  //x = width/2;
  //y = height/2;
  z = 10;
}

void draw() {
  background (0);
  noStroke();
  lights();
  translate(mouseX, mouseY,z);
  sphere(28);

}