class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  int[] colors = new int[3];
  
  Mover(float m, float x, float y) {
    
    colors[0] = parseInt(random(255));
    colors[1] = parseInt(random(255));
    colors[2] = parseInt(random(255));
    
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass = m;
  }
  
  void update() {
    
    // Keywords:
    // Random Walk
    // Pseudo-Random
    // Normal Distribution (or Gaussian)
    // Standard Deviation: mean of sample, (item - mean)squared, mean of variance, then get the square root
    // Euclidean Vector: an entity that has both magnitude and direction
    
    // Pythagorean Theorem
    // Newton's Laws of Motion
    
    // Motion 101
    // Location: the position of the object (x, y)
    // Velocity: the difference between two points (xspeed, yspeed)
    // New Location: velocity appplied to current location
    
    velocity.add(acceleration);
    location.add(velocity);
    
    // Reset the accerlation to 0 each time so that
    // we do not continue to carry the force each frame.
    acceleration.mult(0);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void display() {
    stroke(0);
    fill(colors[0], colors[1], colors[2], 50);
    ellipse(location.x, location.y, mass*16, mass*16);
  }
  
  void checkEdges() {
    if(location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if(location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    
    if(location.y > height) {
      location.y = height;
      velocity.y *= -1;
    } else if(location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }
  
  void printVelocity() {
    println(velocity.x + " " + velocity.y);
  }
  
}
