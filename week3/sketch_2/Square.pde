class Square {
  //properties
  int size;
  float hue;
  boolean isRotate;
  PVector position; 
  
  Square (PVector position_, float hue_, boolean isRotate_, int size_) {
    position = position_;
    hue = hue_;
    isRotate = isRotate_;
    size = size_;
  }

  void update() {
    checkHover();
    fill (hue, 250, 200);
    if (isRotate) {
      moveView();
    } else {
      display();
    }
  }

  void checkHover() {
    //check if mouse is inside square
    //rate value = true
    if (mouseX >= position.x - size/2 && mouseX <= position.x + size/2
      && mouseY >= position.y - size/2 && mouseY <= position.y + size/2) {
      isRotate = true;
    } else {
      isRotate = false;
    }
  }

  void display () {
    pushMatrix();
    rect(position.x, position.y, size, size);
    popMatrix();
  }

  void moveView () {
    pushMatrix();
    //makes roatae from center of square
    translate (position.x, position.y);
    //roates 
    rotate(PI/6);
    //puts back to normal in the start
    translate(-position.x, -position.y);
    //draws
    rect(position.x, position.y, size, size);
    popMatrix();
  }
}