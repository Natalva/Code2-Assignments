
import processing.sound.*;
SoundFile file;

FFT fft;
AudioIn in;
int bands = 512;
float[] spectrum = new float[bands];

void setup() {
  size(512, 360);
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
}      

void draw() { 
  background(255);
  fft.analyze(spectrum);

  for (int i = 0; i < bands; i++) {
    // The result of the FFT is normalized
    // draw the line for frequency band i scaling it up by 5 to get more amplitude.
    line( i, height, i, height - spectrum[i]*height*5 );

    if (spectrum[i] > 0.1) {
      fill(255, 0, 0);
      rect(0, 0, width, height);
    }
  }
}