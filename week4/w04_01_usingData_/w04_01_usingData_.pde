// bryan ma for code 2 sp19 A

// replace the sizes integer array with csv data loaded externally.
Table table;
int[] sizes = { 300, 500, 100, 200, 400, 300, 500, 200 };

ArrayList<Rectangle> rects = new ArrayList<Rectangle> ();

void setup() {
  size(800, 600);

  rectMode(CENTER);
  table = new Table();
  table.addColumn("size");

  for (int i = 0; i < sizes.length; i++) {
    TableRow newRow = table.addRow();
    newRow.setInt("size", sizes[i]);
  }
  saveTable(table, "data/data.csv");

  //local row counter
  int rowCount = 0;
  for (TableRow row : table.rows()) {
    //local  xpos 
    float x = map(rowCount, 0, table.getRowCount() - 1, 100, 700);
    float y = height/2;
    PVector position = new PVector (x, y);
    int h = row.getInt ("size");
    //size is column name then list number
    //pvec w, h 
    rects.add(new Rectangle(position, 50, h));
    rowCount ++;
  }


  //for (int i = 0; i < sizes.length; i++) {
  //  float x = map(i, 0, sizes.length - 1, 100, 700);
  //  float y = height/2;
  //  float w = 50;
  //  float h = sizes[i];
  //  rect(x, y, w, h);
  //}
}

void draw() {
   for (int i = 0; i < rects.size(); i++) {
    Rectangle localRect;
    localRect = rects.get(i);
    localRect.display();
  }
}