ArrayList<Butterfly> butterflies = new ArrayList<Butterfly>();
ArrayList<Flower> flowers = new ArrayList<Flower>();
Table table;

void setup () {
  size (800, 800);
  table = loadTable ("mass.csv", "header");
  for (TableRow row: table.rows()) {
    int m = row.getInt("mass");
    butterflies.add(new Butterfly(random(0, width), random(0, height),m));
  }

  flowers.add(new Flower());
}

void draw() {
  background(255);
  
  for (Flower f : flowers) {
    //b.applyForce(gravity);
    f.update();
    f.display();
  }
  
  for (Butterfly b : butterflies) {
    Flower f = flowers.get(0);
    f.pos = new PVector(mouseX, mouseY);
    //direction  affected in subtraction - order matters
    f.pos.sub(b.pos);
    //create a unit-calculate spaces to reach flower
    f.pos.normalize();
    f.pos.mult(0.1);
    
    b.applyForce(f.pos);
    b.update();
    b.display();
  }
}