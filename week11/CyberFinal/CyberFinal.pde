//WARNING bright flashing lights

import processing.sound.*;
SoundFile file;
SoundFile operaFile;
FFT fft;
int bands = 512;
boolean isPlaying = false;
float[] spectrum = new float[bands];

int scene = 1;
boolean initCircle = false;
boolean initAcc = false;

int gridNum = 20;
Attract attract = new Attract();
ArrayList<Circle> circles = new ArrayList<Circle>();

void setup () {
  size(800, 800);

  // Create an Input stream which is routed into the Amplitude analyzer
  fft = new FFT(this, bands);


  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "cyber3.mp3");
  file.play();

  // patch the AudioIn
  fft.input(file);

  //CHECK!

  for (int i = 0; i < 20; i++) {
    circles.add(new Circle());
  }
}

void draw () {
  //if (!isPlaying) {
  //  isPlaying = true;
  //  file.play();
  //}

//count milliseconds
  int m = millis();
  //println(m);
  //draws background for 1 and 4
  if (scene == 1 || scene == 4) {
    background (0);
  }

  fft.analyze(spectrum);
  

  stroke(255);
  fill(random (100, 255), random(100, 255), random(100, 255));


  attract.display();
  
//creates switch - read scene variable- executes the scene 1 functions , etc
  switch(scene) {
  case 1:
    scene1();
    break;
  case 2:
    scene2();
    break;
  case 3:
    scene3();
    break;
  case 4:
    scene4();
    break;
  default:
    break;
  }
  
  

  //change when greater than specific millisecond change sketch
  //transition to scenes 2,3,4 with timer
  if (m >= 18000 && m < 38460) {
    scene = 2;
  } else if (m >= 38460 && m < 50863) {
    scene = 3;
  } else if (m>=50863 && m<57997) {
    scene = 4;
  }else if (m>= 57997){
   exit();
  }
}
//Draws each scene below
void scene1() {
  //grid
  for (int j = 0; j<gridNum; j++) {
    float yoff;
    if (j < gridNum/2) {
      yoff = -800;
    } else {
      yoff = 800;
    }
    //bezier line pulsing
    bezier(0, j*height/gridNum, width/3, j*height/gridNum+spectrum[20]*yoff, width*2/3, j*height/gridNum+spectrum[20]*yoff, width, j*height/gridNum);
  }

  for (int i = 0; i<gridNum; i++) {

    float xoff;
    if (i < gridNum/2) {
      xoff = -800;
    } else {
      xoff = 800;
    }

    bezier(i*width/gridNum, 0, i*width/gridNum+spectrum[20]*xoff, height/3, i*width/gridNum+spectrum[20]*xoff, height*2/3, i*width/gridNum, height);
  }
}

void scene2() {
  //cirlces drawing
  for (int i = 0; i < circles.size(); i++) {
    Circle c = circles.get(i);

//if this freq is larger than this volume 
    if (spectrum[i] > 0.1) {
      //then we change fill color to big circles
      fill(random(0, 255), random(0, 255), random(0, 255));
    } else {
      //fill white if not loud
      fill(255);
    }
//apply volume to circle size 
//r radius of circle
    c.r = spectrum[i]*100;

    c.update();
    c.display();
  }
}

void scene3() {

  //bouncing balls in boundary with gravity
  //has velocity on  xdirection so it varies in movement
  //volume onto attract circle
  attract.r = spectrum[10]*300 + 200;

//init all circ pos to top of sketch/ apply gravity
  if (initCircle == false) {
    for (int i = 0; i < circles.size(); i++) {
      Circle c = circles.get(i);
      c.pos = new PVector(random(width), random(0, 100));
      c.acc = new PVector(0, 0.1);
      c.r = random(80, 120);
    }
    initCircle = true;
  }

//each circ in array list shrink till 5 
  for (int i = 0; i < circles.size(); i++) {
    Circle c = circles.get(i);
    if (c.r >= 50) {
      //shrink
      c.r--;
    }
    c.update();
    c.display();
  }
}

void scene4() {
  //ball bounces back and center ball gets larger
  if (initAcc == false) {
    for (int i = 0; i < circles.size(); i++) {
      Circle c = circles.get(i);
      //init acc
      c.acc = new PVector(0, 0);
    }
    initAcc = true;
  }
  
  for (int i = 0; i < circles.size(); i++) {
    Circle c = circles.get(i);
    c.vel = new PVector(0, 0);
    PVector center = new PVector(width/2, height/2);
    center.sub(c.pos);
    center.normalize();
    center.mult(0.05);

//apply force on circ to the attractor in center -
    c.applyForce(center);
    c.update();
    c.display();
  }
  //make circ bigger 
  attract.r+=5;
}