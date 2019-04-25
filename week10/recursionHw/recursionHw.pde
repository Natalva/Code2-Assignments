ArrayList<KochLine> lines;
 
void setup() {
  size(700, 800);
  background(255);
  lines = new ArrayList<KochLine>();
  //PVector start = new PVector(width/2, 100);
  //PVector end   = new PVector(width/2, 200);
  //lines.add(new KochLine(start, end));
  
  PVector a = new PVector (50,200);
  PVector b = new PVector (650,200);
  PVector c = new PVector (350,700);
  KochLine l1 = new KochLine (a,b);
  KochLine l2 = new KochLine (b,c);
  KochLine l3 = new KochLine (c,a);
  lines.add(l1);
  lines.add(l2);
  lines.add(l3);
  
  for (int i = 0; i < 5; i++) {
      generate();
  }
}

void draw() {
  background(255);
  for (KochLine l : lines) {
    l.display();
  }
}

void generate() {
  ArrayList next = new ArrayList<KochLine>();
  for (KochLine l : lines) {

    //[full] The KochLine object has five functions,
    // each of which return a PVector according
    // to the Koch rules.
    PVector a = l.kochA();
    PVector b = l.kochB();
    PVector c = l.kochC();
    PVector d = l.kochD();
    PVector e = l.kochE();
    //[end]

    next.add(new KochLine(a, b));
    next.add(new KochLine(b, c));
    next.add(new KochLine(c, d));
    next.add(new KochLine(d, e));
  }

  lines = next;
  
}