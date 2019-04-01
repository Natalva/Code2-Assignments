class Button2 {
  float button2x;
  float button2y; 
  float button2S = 125;
  color button2BG; 
  String button2Text;


Button2() {
  button2x = 420;
  button2y = 200;
  button2S = 125;
  button2BG =  color(0, 255, 500);
  button2Text = "BYEEE 2!";
}

void update(){
 if (dist(mouseX, mouseY, button2x, button2y) < button2S/2 && mousePressed) {
    textToShow = button2Text;
    bgColor = button2BG;
    
    fill(0);
  } else {
    fill(255);
  }
  ellipse(button2x, button2y, button2S, button2S);
  
}

void display() {
  
  ellipse(button2x, button2y, button2S, button2S);
  
  
}
}