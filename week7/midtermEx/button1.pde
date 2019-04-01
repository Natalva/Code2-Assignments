class Button1 {
  float button1x;
  float button1y; 
  float button1S;
  color button1BG; 
  String button1Text;


Button1() {
  button1x = 180;
  button1y = 200;
  button1S = 125;
  button1BG = color(10, 208, 255);
  button1Text = "Hello 1!";
}

void update(){
if (dist(mouseX, mouseY, button1x, button1y) < button1S/2 && mousePressed) {
    textToShow = button1Text;
    bgColor = button1BG;
    fill(0);
  } else {
    fill(255);
  }
  ellipse(button1x, button1y, button1S, button1S);
}

void display() {
  
  ellipse(button1x, button1y, button1S, button1S);
  
  
}
}