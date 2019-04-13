//MIDI
import themidibus.*;
MidiBus MPKMini;


float red = 0;
float green = 0;
float size = 0;


void setup() {
  //MIDI Input---
  MidiBus.list();
  MPKMini = new MidiBus(this, "MPK Mini Mk II", -1, "From dah mini");
  size(500, 500);
  background(255, 0, 0);
}

void draw() {
  background(255, 0, 0);
  fill(red, green, 0);
  ellipse(width/2, height/2, size, size);
}

void noteOn(int channel, int pitch, int velocity) 
{
  println("Note On: Ch:"+channel+" P:"+pitch+" V:"+velocity);
  if (channel == 0 && pitch == 44) {
    green = 255;
  }
}

void noteOff(int channel, int pitch, int velocity) 
{
  println("Note Off: Ch:"+channel+" P:"+pitch+" V:"+velocity);
  if (channel == 0 && pitch == 44) {
    green = 0;
  }
}

void controllerChange(int channel, int number, int value) 
{
  println("Ctl Chg: Ch:"+channel+" N:"+number+" V:"+value);
  if (channel == 0 && number == 8) {
    red = map(value, 0, 127, 0, 255);
  }
  if (channel == 0 && number == 7) {
    size = map(value, 0, 127, 0, 255);
  }
}
