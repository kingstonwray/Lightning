//Global Variables
float x, y, oldX, oldY;
float inc = 3;
PImage bg;
float inp;

void setup() {
  //Set image and background
  size(1536, 864);
  bg = loadImage("stormySeattleCity.jpeg");
  background(bg);
}

void draw() {
}

void createLightning() {
  background(bg);  // Reset background
  while (y > 0) {
    oldX = x;
    oldY = y;
    x += inc * ((int)(Math.random() * 11) - 5); // Random x
    y += inc * ((int)(Math.random() * -8));    // Random y
    line(oldX, oldY, x, y);   // Draw a line from old to new position
    stroke(#9e9dcc);          // Line color
  }
}

void mouseClicked() {
  //Set new coordinates
  //Strike lightning
  createLightning();
  randomValue();
}

void spaceNeedle() {
  //Space Needle Cords
  y = 385;
  x = 992;
}

void columbiaTower() {
  //Columbia Tower Cords
  y = 460;
  x = 1065;
}

void thirdAve() {
  // Third Ave Tower Cords
  y = 488;
  x = 1165;
}

void twoUnionSquare() {
  // Two Union Square Cords
  y = 470;
  x = 785;
}

void randomValue() {
  //Set lightning on random tower
  //Weighted
  inp = (float) Math.random();
  if (inp < 0.4) spaceNeedle();
  else if (inp < 0.6) columbiaTower();
  else if (inp < 0.8) thirdAve();
  else twoUnionSquare();
}
