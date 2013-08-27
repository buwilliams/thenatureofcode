import java.util.Random;

Random generator;

void setup() {
  size(300, 300);
  background(0);
  generator = new Random();
}

void draw() {
  // get random number for placement of dot splatter
  float mean = 150;
  float sd = 50;
  float xnum = (float) generator.nextGaussian();
  float x = sd * xnum + mean;
  float ynum = (float) generator.nextGaussian();
  float y = sd * ynum + mean;
  int c1 = parseInt(random(255));
  int c2 = parseInt(random(255));
  int c3 = parseInt(random(255));
  noStroke();
  fill(c1, c2, c3, 50);
  ellipse(x, y, 16, 16);
}
