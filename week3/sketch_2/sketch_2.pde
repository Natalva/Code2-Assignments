int gridW = 10;
int gridH = 10;
ArrayList<Square> squares = new ArrayList<Square> ();
void setup () {
  size(800, 800);
  noStroke();
  rectMode(CENTER);
  colorMode (HSB);

  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      float w = width/gridW;
      float h = height/gridH;
      float xPos = i * width/gridW + w/2;
      float yPos = j * height/gridH + h/2;
      float hue = map(i, 0, gridW, 0, 255);
      int size; 


      if ( i % 2 ==0 ) {
        size = 20;
      } else {
        size = 50;
      }

      squares.add(new Square(new PVector(xPos, yPos), hue, false, size));
    }
  }
}




void draw () {
  background(0);


  for (int i = 0; i < squares.size(); i++) {
    Square square = squares.get(i);
    square.update();
  }
}