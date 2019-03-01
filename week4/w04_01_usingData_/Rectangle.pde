class Rectangle {
  int w;
  int h;
  PVector position;

  Rectangle (PVector position_, int w_, int h_) {
    position = position_;
    w = w_;
    h = h_;
  }
  void display () {
    rect (position.x, position.y, w, h);
  }
}