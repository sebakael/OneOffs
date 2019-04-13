class Horizon {
  float curY;
  float constraint;
  float maxY;
  float minY;
  int R;
  int G;
  int B;
  

  Horizon() {
    curY = (height/3) * 2;
    constraint = height/24;
    maxY = curY + constraint;
    minY = curY - constraint;
  }

  void display() {
    R = round(map(sunLoc, height, 0, 0, 127));
    G = round(map(sunLoc, height, 0, 0, 127));
    B = round(map(sunLoc, height, 0, 0, 127));
    strokeWeight(0);
    fill(R, G, B);
    //for (int i = 0; i < curY; i = i+1) {
    //  rect(0, curY + i, width, height);
    //}
    rect(0,curY,width,height);
    horizonLoc = curY;
  }
  
  void update(){
    curY = curY + random(-.1,.1);
    curY = constrain(curY, minY, maxY);
    horizonLoc = curY;
  }
}
