// bryan ma for code 2 sp 19

int scene = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  fill(0);
  switch (scene) {
  case 0:
    ellipse(200, 200, 100, 100);
    break;
  case 1:
    rect(300, 300, 100, 100);
    break;
  case 2:
    triangle(0, 0, width, 0, width/2, height);
    break;
  case 3:
    text("fin", 100, 100);
    break;
  default:
    break;
  }
  if (keyPressed) { 
    switch (scene) {
    case 0:
      advance();
    case 1:

      //hm, not working. I tried also having it be scene+1, 
      //and putting all the switch code in both, but that didn't work either
    } 
    if (mousePressed) { 
      switch (scene) { 

      case 2:
        advance();
        break;
      case 3:
      }
    }
  }
}


void advance() {
  scene++;
}