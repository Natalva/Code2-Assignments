// code 2 sp 19, bryan ma

// create two constant integers to store how many columns and rows the grid will have
final int COLS = 25;
final int ROWS = 25;

// create 2d arrays to store positions, a visibility boolean, and colors for each cell in the grid
PVector[][] positions = new PVector[COLS][ROWS];
//x and y 

boolean[][] isActive = new boolean[COLS][ROWS];
//true/false

color[][] colors = new color[COLS][ROWS];

// create but don't assign a cellsize variable, we'll do that in setup()
int cellSize;

void setup() {
  size(600, 600);
  background(255);
  noStroke();
  
  // set the size to create evenly spaced cells in the grid
  cellSize = width/COLS;

  // loop through the arrays to assign initial values
  //creates cols and rows increase one by one
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      
      //initialize values in 2d arrays here : this assigns initial values here
      positions[i][j] = new PVector(i * cellSize, j * cellSize);
      isActive[i][j] = false;
      //creates hover - control in draw
      colors[i][j] = color(random(255), random(255), random(255));
      //stores random colors when u hover
    } 
  }
}

void draw() {
  // once per frame, loop through all the arrays.
  // if the isActive boolean is true, then fill() with that cell's color and draw a rectangle.
  // if the isActive boolean is false, then check the position against the mouse.
  // if the mouse is inside the cell, then change the isActive boolean to true.
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      if (isActive[i][j]) {
        //if its hovering then it show up and will show color u assigned in setup
        // .. if yes its shows colors
        fill(colors[i][j]);
        rect(positions[i][j].x, positions[i][j].y, cellSize, cellSize);
        //draws each cell
      } else {
        if (mouseX > positions[i][j].x && mouseX < positions[i][j].x + cellSize && 
          mouseY > positions[i][j].y && mouseY < positions[i][j].y + cellSize) {
          isActive[i][j] = true;
          //check if u hover
        }
      }
    }
  }
}