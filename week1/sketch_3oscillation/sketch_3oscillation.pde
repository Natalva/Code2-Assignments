float theta = 0.0;
boolean up = false;
float lastX;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);

  if (up) {
    fill(0);
    stroke(0);
    theta += 0.02;
    fill(0);
    stroke(0);
    ellipse(width/2, lastX, 60, 60);
    if (mouseX > width/2-60 && mouseX < width/2 +60 && mouseY > lastX-60 && mouseY < lastX+60 && mousePressed) {
       up = false;
    }  
    lastX = (sin(theta) + 1) * width/2;
  } else {
    fill(0);
    stroke(0);
    float x = (sin(theta) + 1) * width/2;
    theta += 0.02;
    fill(0);
    stroke(0);
    ellipse(x, height/2, 60, 60);
    if (mouseX > x-60 && mouseX < x +60 && mouseY > height/2-60 && mouseY < height/2+60 && mousePressed) {
      lastX = x; 
      up = true;
    }
  }
}