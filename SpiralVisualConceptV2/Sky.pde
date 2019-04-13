class Sky {
  int R;
  int G;
  int B;

  Sky() {
    strokeWeight(0);
    fill(0,255,0);
  }

  void display() {
    R = round(map(sunLoc, height, 0, 0, 255));
    G = round(map(sunLoc, height, 0, 0, 255));
    B = round(map(sunLoc, height, 0, 0, 255));
    strokeWeight(0);
    fill(R,G,B);
    rect(0, 0, width, height);
  }
}
