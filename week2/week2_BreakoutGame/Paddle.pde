//setup paddle for game
class Paddle {
  float x;
  float y;
  float w;
  float h;

  Paddle(float xpos, float ypos, float myWidth, float myHeight) {
    x = xpos;
    y = ypos;
    w = myWidth;
    h = myHeight;
  }

  void update() {
  }
//set up Paddle to use in main code

  void display(float xpos) {
    x = xpos;
    rect(x, y, w, h);
  }
}