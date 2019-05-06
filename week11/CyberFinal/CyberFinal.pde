
import processing.sound.*;
SoundFile file;
SoundFile operaFile;
FFT fft;
int bands = 512;
float[] spectrum = new float[bands];

int gridNum = 20;

int scene = 1;

void setup () {
  size(800, 800);

  // Create an Input stream which is routed into the Amplitude analyzer
  fft = new FFT(this, bands);


  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "cyber3.mp3");
  file.play();
  
  operaFile = new SoundFile(this, "opera.mp3");

  // patch the AudioIn
  fft.input(file);
}

void draw () {
  int m = millis();
  background (0);
  stroke(255);
  noFill();

  fft.analyze(spectrum);
  println(m);
  //change when greater than 20 sec
  if(m >= 18000){
    scene = 2;
    file.amp(0.2);
    operaFile.amp(1);
    operaFile.play();
  }
//create scene 1 grid
  if (scene == 1) {
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
}