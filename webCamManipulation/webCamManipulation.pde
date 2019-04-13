import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  video = new Capture(this, 640, 480, 30);
  video.start();
}

void draw() {
  if (video.available()) {
    video.read();
  }
  for (int i = 0; i < 2000; i++) {
    float x = random(width);
    float y = random(height);
    color c = video.get(int(x), int(y));
    fill(c,20);
    //noStroke();
    stroke(c);
    strokeWeight(15);
    //rect(x, y,random(4,12),random(4,12));
    point(x,y);
  }
  //background(0);
  //image(video, 0, 0, width, height);
}
