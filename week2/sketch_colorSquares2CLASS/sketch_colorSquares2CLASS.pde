ArrayList<Square> cells = new ArrayList<Square>();
//declaring a collection of array pf objects 

// code 2 sp 19, bryan ma

// create two constant integers to store how many columns and rows the grid will have
final int COLS = 25;
final int ROWS = 25;

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

      //objects in array list
      cells.add(new Square( new PVector(i * cellSize, j * cellSize), 
        color(random(255), random(255), random(255)), false, cellSize));

    }
  }
}

void draw() {
  // once per frame, loop through all the arrays.
  // if the isActive boolean is true, then fill() with that cell's color and draw a rectangle.
  // if the isActive boolean is false, then check the position against the mouse.
  // if the mouse is inside the cell, then change the isActive boolean to true.

  for (int i = 0; i < cells.size(); i++) {
    //Square declare local object to store specific objects
    //cell is variable to declare local object - based on Square
    Square cell = cells.get(i);
    if (cell.isActive) {
      //if its hovering then it show up and will show color u assigned in setup
      // .. if yes its shows colors
      fill(cell.colors);
      rect(cell.position.x, cell.position.y, cell.cellSize, cell.cellSize);
      //draws each cell
    } else {
      if (mouseX > cell.position.x && mouseX < cell.position.x + cell.cellSize && 
        mouseY > cell.position.y && mouseY < cell.position.y + cell.cellSize) {
        cell.isActive = true;
        //check if u hover
      }
    }
  }
}