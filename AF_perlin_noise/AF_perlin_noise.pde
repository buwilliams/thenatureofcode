float t = 0;

void setup() {
  size(500, 100);
  background(255);
}

void draw() {
  float xn = noise(t);
  float yn = noise(t+random(0,1));
  float x = map(xn,0,1,0,500);
  float y = map(yn,0,1,0,100);
  
  int[] colors = getColors(); 
  
  fill(colors[0], colors[1], colors[2]);
  ellipse(x, y, 55, 55);
  t += 0.01;
}

int[] getColors() {
  int[] colors = new int[3];
  colors[0] = getColor();
  colors[1] = getColor();
  colors[2] = getColor();
  return colors;
}

int getColor() {
  return parseInt(random(0, 255));
}
