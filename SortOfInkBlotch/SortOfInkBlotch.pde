PVector location = new PVector();
float size = 1;
int sphereColor = 0;
float accelRange = .4;
PVector speed = new PVector();

void setup() {
  //fullScreen(1);
  size(1000, 1000);
  background(0);
  location.x = random(width);
  location.y = random(height);
}

void draw() {
  noStroke();
  speed.x += random(accelRange);
  speed.y += random(accelRange);
  //speed.x = constrain(speed.x, -10, -10);
  //speed.y = constrain(speed.y, -10, -10);

  location.x += speed.x;
  location.y += speed.y;

  if (location.x >= width || location.x <= 0) {
    speed.x /= -1.5;
    accelRange *=-1;
  }
  if (location.y >= height || location.y <= 0) {
    speed.y /= -1.5;
    accelRange *=-1;
  }

  size += .25;
  if (size >= width/4 && size <= width * 2) {
    size += 11.75;
  } else if (size >= width * 2) {
    if (sphereColor == 0) {
      sphereColor = 1;
      fill(0, 0, 204);
    } else if (sphereColor == 1) {
      sphereColor = 0;
      fill(0);
    }
    //rect(0, 0, width, height);
    size = 1;
  }


  if (sphereColor == 0) {
    fill(0, 0, 204, 10);
  } else if (sphereColor == 1) {
    fill(0, 10);
  }

  location.x = constrain(location.x, 0, width);
  location.y = constrain(location.y, 0, height);
  ellipse(location.x, location.y, size, size);
  ellipse(location.x, height - location.y, size, size);
  ellipse(width - location.x, location.y, size, size);
  ellipse(width - location.x, height - location.y, size, size);
  ellipse( location.y, location.x, size, size);
  ellipse(height - location.y, location.x, size, size);
  ellipse( location.y, width - location.x, size, size);
  ellipse( height - location.y, width - location.x, size, size);
}
