Mover[] movers = new Mover[20];


void setup() {
  size(640, 360);
  for(int i=0; i<movers.length; i++) {
    movers[i] = new Mover(random(5), random(width), random(height));
  }
}

void draw() {
  background(255);
  for(int i=0; i<movers.length; i++) {
    
    // Wind
    PVector wind = new PVector(0.01, 0);
    
    // Gravity
    float m = movers[i].mass;
    PVector gravity = new PVector(0, 0.1*m);
    
    // Friction
    float c = 0.1;
    float normal = 1;
    float frictionMag = c*normal;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMag);
    
    movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
}
