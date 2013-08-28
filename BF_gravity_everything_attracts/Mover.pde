class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  int[] colors = new int[3];
  float G = 0.4; // force of gravity
  
  Mover() {
    this(random(5, 10), random(width), random(height));
  }
  
  Mover(float m, float x, float y) {
    
    colors[0] = parseInt(random(255));
    colors[1] = parseInt(random(255));
    colors[2] = parseInt(random(255));
    
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass = m;
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
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void display() {
    stroke(0);
    fill(colors[0], colors[1], colors[2], 50);
    ellipse(location.x, location.y, mass*2, mass*2);
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
  
}
