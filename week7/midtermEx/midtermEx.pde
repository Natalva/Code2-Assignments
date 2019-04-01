//class based - each button represented as class
//change to global state
//move values to external data 

//open
//make a child class/ button /different behavior
//button states do something interesting
//button state represented more visually
//PImage[] images = new PImage[3];


color bgColor = color(230);
int buttonSize = 125;
String textToShow = "";

void setup() {
  size(600, 600);
  //  imageMode(CENTER);
  //images[0] = loadImage("hi.png");
  //images[1] = loadImage("bye.jpg");
}

void draw() {
  background(bgColor);  
  Button1 B1 = new Button1();
  B1.update();
  
  
  Button2 B2 = new Button2();
  B2.update();
  
  
  fill(0);
  textAlign(CENTER);
  textSize(28);
  text(textToShow, width/2, 400);
} 