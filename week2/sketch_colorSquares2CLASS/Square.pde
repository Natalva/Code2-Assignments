class Square {

  //properties below:
  PVector position;
  color colors; 
  boolean isActive;
  int cellSize;
  Square (PVector position_, color colors_, boolean isActive_, int cellSize_) {

    position = position_;
    colors = colors_;
    isActive = isActive_;
    cellSize = cellSize_;
  }

  void display () {
    fill(colors);
    rect(position.x, position.y, cellSize, cellSize);
    //add positions for specific x and y values
  }
}