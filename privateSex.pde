import processing.video.*;

Movie throat;
Movie kiss;
float colA;
float colB;

void setup() {
  size(800, 900);

  throat = new Movie(this, "throat-1.mp4"); 
  kiss = new Movie(this, "kissing-1.mp4"); 

  throat.loop();
  kiss.loop();
}

void movieEvent(Movie throat) {
  throat.read();
}

void kissEvent(Movie kiss) {
  kiss.read();
}

void draw() {
  // Step 5. Display movie.
  image(throat, 0, 0, 300, 200);
  image(kiss, width/2, 0, 300, 200);

  if (mouseX <width/2) {
    colA = 200;
    colB=100;
    throat.play();
    kiss.pause();
  } else {
    colA = 100;
    colB = 255;
    throat.pause();
    kiss.play();
  }

  fill(colA);
  rect(10, 200, 70, 60);
  fill(colB, 100, 10);
  rect(width/2+10, 200, 70, 60);
}