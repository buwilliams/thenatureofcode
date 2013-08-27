class Attractor {
  
  float mass;
  PVector location;
  float G;
  int[] colors = new int[3];
  
  Attractor() {
    this(random(20, 30), random(width), random(height));
  }
  
  Attractor(float m, float x, float y) {
    
    colors[0] = parseInt(random(255));
    colors[1] = parseInt(random(255));
    colors[2] = parseInt(random(255));
    
    location = new PVector(x, y);
    mass = m;
    G = 0.4;
  }
  
  void display() {
    stroke(0);
    fill(colors[0], colors[1], colors[2]);
    ellipse(location.x, location.y, mass*2, mass*2);
  }
  
  PVector attract(Mover m) {
    // Formula for Gravity
    PVector force = PVector.sub(location, m.location);
    float distance = force.mag();
    distance = constrain(distance, 5.0, 25.0);
    force.normalize();
    float strength = (G * mass * m.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
  
}
