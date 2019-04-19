class Butterfly {
  //pvector has x and y,  z value must be assigned 
  PVector pos; 
  PVector vel;
  PVector acc;
  int mass;

  PImage butterflyimg;
  


  Butterfly (float x, float y,float z, int m){
  
    butterflyimg = loadImage ("butterfly.png");
    pos = new PVector (x,y,z);
    vel = new PVector (0, 0, 0);
    acc = new PVector (0, 0, 0);
    mass = m;

  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass); 
    acc.add(f);
  }

  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    //keep butterfly in canvas
    if (pos.x > width) {
      pos.x = width;
      vel.x *= -1;
    } else if (pos.x < 0) {
      vel.x *= -1;
      pos.x = 0;
    }

    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
  
  }
  
  void display () {
    //map imagewwidth 1-5 mass, 50-80 width 
   int imagewidth = int (map(mass, 1, 20, 50, 100));
   
   butterflyimg.resize (imagewidth, 0);
   image (butterflyimg, pos.x, pos.y);
    
  }
}