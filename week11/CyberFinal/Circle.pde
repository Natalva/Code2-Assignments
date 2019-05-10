class Circle {
  PVector pos;
  PVector vel;
  PVector acc;
  float r;

  Circle () {
    pos = new PVector(random(width), random(height));
    vel = new PVector(random(-5, 5), random(-5, 5));
    acc = new PVector(0, 0);
  }

  void update() {
    vel.add(acc);
    pos.add(vel);
//scene 2 move other side, looping
    if (scene == 2) {
      if (pos.x > width) {
        pos.x = 0;
      } else if (pos.x < 0) {
        pos.x = width;
      } else if (pos.y > height) {
        pos.y = 0;
      } else if (pos.y < 0) {
        pos.y = height;
      }
      //scene 3 bounce
    } else if (scene == 3) {
      if (pos.y > height-r/2) {
        vel.y *= -1;
      } else if (pos.x > width-r/2) {
        vel.x *= -1;
      } else if (pos.x < r/2) {
        vel.x *= -1;
      }
    }
  }

  void applyForce(PVector force) {
    //PVector f = PVector.div(force, mass); 
    acc.add(force);
  }

  void display() {
    ellipse(pos.x, pos.y, r, r);
  }
}