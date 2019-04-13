class SunReflect {
  PVector location = new PVector();
  PVector size = new PVector();
  int R;
  int G;
  int B;

  SunReflect() {
    location.x = width/2;
    location.y = horizonLoc;
    size.x = width/4;
    size.y = 10;
  }

  void display() {
    strokeWeight(0);
    R = round(map(sunLoc, height, 0, 0, 255));
    G = round(map(sunLoc, height, 0, 0, 0));
    B = round(map(sunLoc, height, 0, 0, 0));
    fill(R, G, B, 100);
    location.y = horizonLoc;
    location.y = map(sunLoc, 0, horizonLoc, height, horizonLoc);
    size.y = map(sunLoc, horizonLoc, 0, 1, width/8);
    location.y = constrain(location.y, horizonLoc, height);
    if (horizonLoc >= sunLoc - sunRadius/6 ) {
      ellipse(location.x, location.y, size.x, size.y);
    }
  }
}
