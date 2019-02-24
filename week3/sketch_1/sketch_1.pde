//setup 10x10 objects in array
int gridW = 10;
int gridH = 10;
int [][] sizes = new int[gridW][gridH];
float[][] colors = new float [gridW][gridH];
boolean [][] isRotate = new boolean [gridW][gridH];

void setup() {
  size(800, 800);
  noStroke();
  rectMode(CENTER);
  colorMode (HSB);
  //hue saturation brightness

  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {


      //create if statement to control sizes of square
      //divide the width size of canvas
      if ( i % 2 ==0 ) {
        sizes [i][j] = 20;
      } else {
        sizes [i][j] = 50;
      }
      //stores values of hue 
      colors [i][j] = map(i, 0, gridW, 0, 255);
      isRotate [i][j] = false;
    }
  }
}


void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      //control of H S B variables
      fill (colors[i][j], 250, 200);

      float w = width/gridW;
      float h = height/gridH;
      float xPos = i * width/gridW + w/2;
      float yPos = j * height/gridH + h/2;
      //add sizes we changed - allows it to change size!!!
      //otherwise it will be the same size

      // means mouse is hovering on the square
      if (mouseX >= xPos-w/2 && mouseX<=xPos + w/2 && mouseY >= yPos-h/2 && mouseY<=yPos+ h/2) {
        isRotate [i][j]= true;
      } else {
        isRotate [i][j]= false;
      }
      if (isRotate[i][j]) { 
        pushMatrix();
        //makes roatae from center of square
        translate (xPos, yPos);
        rotate(PI/6);
        //puts back to normal in the start
        translate(-xPos, -yPos);
        rect(xPos, yPos, sizes [i][j], sizes [i][j]);
        popMatrix();
      } else {
        pushMatrix();
        rect(xPos, yPos, sizes [i][j], sizes [i][j]);
        popMatrix();
      }
    }
  }
}