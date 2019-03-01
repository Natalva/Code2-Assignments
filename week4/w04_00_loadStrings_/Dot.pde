class Dot {
  int size;
  float hue;
  PVector position;

  Dot (PVector position_, float hue_, int size_) {
    position = position_;
    hue = hue_;
    size = size_;
  }
  void display () {

    pushMatrix();
    fill (hue, 250, 200);
    ellipse (position.x, position.y, size, size);
    popMatrix();
  }
}