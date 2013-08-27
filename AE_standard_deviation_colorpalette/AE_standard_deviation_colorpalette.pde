import java.util.Random;

Random generator;

void setup() {
  size(100, 25);
  background(0);
  generator = new Random();
}

void draw() {
  
  float mean = 127.5;
  float sd = 100;
  float adjust = 50;
  
  float num1 = (float) generator.nextGaussian();
  float num2 = (float) generator.nextGaussian();
  float num3 = (float) generator.nextGaussian();
  
  float c1 = sd * num1 + mean;
  float c2 = sd * num2 + mean;
  float c3 = sd * num3 + mean;
  
  fill(c1, c2, c3, 50);
  rect(0, 0, 25, 25);
  
  
  num1 = (float) generator.nextGaussian();
  num2 = (float) generator.nextGaussian();
  num3 = (float) generator.nextGaussian();
  
  c1 = adjust * num1 + c1;
  c2 = adjust * num2 + c2;
  c3 = adjust * num3 + c3;
  
  fill(c1, c2, c3, 50);
  rect(25, 0, 25, 25);
  
  num1 = (float) generator.nextGaussian();
  num2 = (float) generator.nextGaussian();
  num3 = (float) generator.nextGaussian();
  
  c1 = adjust * num1 + c1;
  c2 = adjust * num2 + c2;
  c3 = adjust * num3 + c3;
  
  fill(c1, c2, c3, 50);
  rect(50, 0, 25, 25);
  
  num1 = (float) generator.nextGaussian();
  num2 = (float) generator.nextGaussian();
  num3 = (float) generator.nextGaussian();
  
  c1 = adjust * num1 + c1;
  c2 = adjust * num2 + c2;
  c3 = adjust * num3 + c3;
  
  fill(c1, c2, c3, 50);
  rect(75, 0, 25, 25);
  
}
