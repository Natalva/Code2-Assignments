Character c;


void setup() {
  size(600, 600);
  c = new Character();
}

void draw() {
  background(255);
  fill(0);
  text("Press space to transform!", width/2, 100);

  c.display();
  c.update();
}

void keyPressed() {
  c.handleInput(key);
}

class Character {
  int state = 0;
  int posX;
  int posY;
  float w;
  float h;

  Character() {
    w = 100;
    h = 100;
    posX = 300;
    posY = 300;
  }

  void display() {
    switch(state) {
    case 0:
      fill(255, 187, 178);
      text("Woo!", 100, 200);
      break;
    case 1:
      fill(242, 118, 101);
      text("Party!!!", 100, 200);
      break;
    case 2: 
      fill(237, 34, 7);
      text("ahahahha!!!!!!!!!!!!!!!!", 100, 200);
      break;
    default:
      break;
    }
    noStroke();
    ellipse(posX, posY, w, h);

    fill(0);
    ellipse(posX + 1, posY - 20, 10, 10);
    ellipse(posX + 20, posY - 20, 10, 10);
  }
  
  void update(){
     switch(state) {    
    case 0:
     state = 0;
      break;
    case 1:
      state = 1;
      break;
    case 2: 
      state = 2;
      break;
    default:
      break;
     }
    
  }

  void handleInput(char k) {
    println(k);
    switch(state) {
    case 0:
      if (k== ' ') {
         advance();
      }
      break;
    case 1:
      if (k== ' ') {
        advance();
      }
      break;
    case 2:
      if (k== ' ') {
        advance();
      }
      break;
    default:
      break;
    }
  }
  
  void advance(){
    state++;
    
  }
  
}