import processing.sound.*;
SoundFile file;

FFT fft;
AudioIn in;
int bands = 512;
float[] spectrum = new float[bands];
PVector[] pos = new PVector[bands];
PVector [] velocity = new PVector [bands];

Attract attract = new Attract();

void setup() {
  size(600, 600);
  background(255);

  // Create an Input stream which is routed into the Amplitude analyzer
  fft = new FFT(this, bands);
  in = new AudioIn(this, 0);

  // start the Audio Input
  in.start();

  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "home2.mp3");
  file.play();

  // patch the AudioIn
  fft.input(file);

  for ( int i = 0; i < 20; i++) {
    pos[i] = new PVector(random(width), random(height));
    velocity[i] = new PVector (random(-5, 5), random(-5, 5));
  }
}      

void draw() { 
  background(255);
  fft.analyze(spectrum);
  
  attract.display();

  for (int i = 0; i < 20; i++) {
    // The result of the FFT is normalized
    // draw the line for frequency band i scaling it up by 5 to get more amplitude.
    //line( i, height, i, height - spectrum[i]*height*5 );
    
    //moved circles
    pos[i].add(velocity[i]);
    
    //change colors based on volume
    if (spectrum[i] > 0.1) {
      fill(random(0,255),random(0,255),random(0,255));
    }else{
      fill(255);
    }
    ellipse(pos[i].x, pos[i].y, spectrum[i]*height, spectrum[i]*height);
    
    
      //boundary check
    if(pos[i].x > width){
      pos[i].x = 0;
    }else if(pos[i].x < 0){
      pos[i].x = width;
    }else if(pos[i].y > height){
      pos[i].y = 0;
    }else if(pos[i].y < 0){
      pos[i].y = height;
    }
  }
  
  
}