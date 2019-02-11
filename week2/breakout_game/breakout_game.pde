// declare the ball, paddle, bricks to create in sketch
Ball ball = new Ball(); 
Paddle paddle = new Paddle();
Bricks brick = new Bricks();
//setup size
void setup() {
  size(800, 800);
}
//draw background
//display components in game
void draw() {
  background(0);
  ball.Display();
  ball.Collide();
  ball.hitPaddle();
  paddle.display();
  brick.display();
}
//set up class to create ball in game
//x and y control movement, direction and speed, size
class Ball {
  float xpos;
  float ypos;
  int xdirection;
  int ydirection;
  float xspeed;
  float yspeed;
  int radius; 

  Ball() {
    xpos = width/2;
    ypos = height/2;
    xdirection = 1;
    ydirection = 1;
    xspeed = 2.2;
    yspeed = 3.2; 
    radius = 20;
  }

  void Display() {
    fill(255);
    xpos = xpos + (xspeed * xdirection); 
    ypos = ypos + (yspeed * ydirection);
    ellipse(xpos, ypos, radius, radius);
  }
  void Collide() {
    if (xpos > width  || xpos < 0) {
      xdirection = -xdirection;
    }
    if (ypos > height  || ypos < 0 ) {
      ydirection = -ydirection;
    }
  }

  void hitPaddle() {
    if (xpos > mouseX && xpos < mouseX + 80 && ypos > 480) {
      xdirection = -xdirection;
      ydirection = -ydirection;
    }
  }
}


//paddle setup
class Paddle {
  int x;
  int y;
  int w;
  int h; 

  //sets location of movemnt
  Paddle() {
    w = 80;
    h = 30;
    x = 250;
    y = 480;
  }

  void display() {
    x = mouseX;

    rect(x, y, w, h);
  }
}
//bricks setup location
class Bricks {
  int x;
  int y;
  int w;
  int h;
  int COLS;
  int ROWS;
  //size of bricks
  //num of cols and rows
  Bricks() {
    w = 70;
    h = 14;
    COLS = 10;
    ROWS = 10;
  }

  void display() {
    fill(255);
    //display drawing
    //for loops
    for (int i = 0; i < COLS; i ++) {
      for (int j = 0; j < ROWS; j++) {
        rect(i*50, j*14, w, h);
      }
    }
  }
}