int spacing = 100;
int heightChange;


void setup() {
  size(1000, 1000);
  background(0);
}

void draw() {
  strokeWeight(0);
  fill(0);
  rect(0, 0, width, height);
  stroke(255);
  strokeWeight(1);
  for (int i = 0; i <= width + spacing; i += spacing) {
    int preX = i - spacing;
    for (int i2 = 0; i2 <= height + spacing; i2 += spacing) {
      int heightChange1 = heightChange;
      int heightChange2 = round(random(-10, 10));
      heightChange2 += round(random(-100, 100));
      //rect(i, width/2 + heightChange2, 10, 10);
      line(i, i2 + heightChange2, preX, i2 + heightChange1);
      heightChange = heightChange2;
    }
  }
  delay(60);
}
