StringList strings;

void setup () {
  
  size(600, 600);
  background (255, 255, 255);
  fill(0);
  ellipse (490, 300, 100, 100);
  ellipse (360, 300, 100, 100);
  ellipse (230, 300, 100, 100);
  ellipse (100, 300, 100, 100);
  text("???", 300, 450);
  
  strings = new StringList();
  strings.append("coffee");
  strings.append("tea");
  strings.append("flour");
  strings.append("eggs");

}

void drawCircle() {
  ellipse (490, 300, 100, 100);
  ellipse (360, 300, 100, 100);
  ellipse (230, 300, 100, 100);
  ellipse (100, 300, 100, 100);
}

void draw() {
  

  
   if (mouseX > 100-100 && mouseX < 100+100 && mouseY > 300-100 && mouseY < 300+100 && mousePressed) {
      background (255, 255, 255);
      drawCircle();
      text(strings.get(0), 300, 450);
  } 
  
  if (mouseX > 230-100 && mouseX < 230+100 && mouseY > 300-100 && mouseY < 300+100 && mousePressed) {
      background (255, 255, 255);
      drawCircle();
      text(strings.get(1), 300, 450);
  } 
  
   if (mouseX > 360-100 && mouseX < 360+100 && mouseY > 300-100 && mouseY < 300+100 && mousePressed) {
      background (255, 255, 255);
      drawCircle();
      text(strings.get(2), 300, 450);
  } 
  
   if (mouseX > 490-100 && mouseX < 490+100 && mouseY > 300-100 && mouseY < 300+100 && mousePressed) {
      background (255, 255, 255);
      drawCircle();
      text(strings.get(3), 300, 450);
  }
}