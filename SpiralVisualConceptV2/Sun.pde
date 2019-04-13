class Sun {

  PVector location = new PVector();
  PVector speed = new PVector();
  int size;
  int sec = 10;
  int R;
  int G;
  int B;

  Sun() {
    location.x = width/2;
    location.y = height;
    size = width/4;
    speed.y = height / (60 * sec);
    sunLoc = location.y;
  }

  void display() {
    R = round(map(sunLoc, height, 0, 0, 255));
    G = round(map(sunLoc, height, 0, 0, 0));
    B = round(map(sunLoc, height, 0, 0, 0));
    strokeWeight(0);
    fill(R, G, B);
    //fill(255,0,0);
    //for (int i = 0; i < size; i = i+1) {
    //  ellipse(location.x, location.y, i, i);
    //}
    ellipse(location.x, location.y, size, size);
    sunLoc = location.y;
    sunRadius = size/2;
  }

  void moveY() {
    if ((location.y <= 0) || (location.y >=height)) {
      speed.y *= -1;
    }
    location.y -= speed.y;
    location.y = constrain(location.y, 0, height);
  }
}
