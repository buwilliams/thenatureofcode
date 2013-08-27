float tx = 0;
float ty = 10000;
int[] colors;

void setup() {
  size(500, 500);
  background(255);
  colors = new int[3];
  colors[0] = 0;
  colors[1] = 0;
  colors[2] = 0;
}

void draw() {
  
  float x = map(noise(tx), 0, 1, 0, width);
  float y = map(noise(ty), 0, 1, 0, height);
  
  fill(colors[0], colors[1], colors[2]);
  ellipse(x, y, 55, 55);
  
  tx += 0.01;
  ty += 0.01;
  
  updateColors(20);
}

void updateColors(int inc) {
  
  colors[2] += inc;
  
  if(colors[2] > 255) {
    colors[1] += inc;
    colors[2] = 0;
  }
  
  if(colors[1] > 255) {
    colors[0] += inc;
    colors[1] = 0;
  }
  
  if(colors[0] > 255) {
    colors[0] = 0;
  }
  
  println(colors[0] + ", " + colors[1] + ", " + colors[2]);
  
}
