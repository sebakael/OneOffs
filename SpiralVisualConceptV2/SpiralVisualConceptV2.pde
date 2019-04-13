float sunLoc;
float sunRadius;
float horizonLoc;

Sky sk;
Sun s;
Horizon h;
SunReflect sr;



void setup(){
  //fullScreen(1);
  size(1000,1000);
  background(0);
  sk = new Sky();
  s = new Sun();
  h = new Horizon();
  sr = new SunReflect();
}

void draw(){
  sk.display();
  s.moveY();
  s.display();
  h.display();
  h.update();
  sr.display();
  print(horizonLoc + " ");
}
