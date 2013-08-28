Mover[] movers = new Mover[100];
Attractor[] attractors = new Attractor[4];

void setup() {
  size(600, 600);
  for(int i=0; i<movers.length; i++) {
    movers[i] = new Mover();
  }
  float space = 100;
  float mass = 20;
  attractors[0] = new Attractor(mass, space, space);
  attractors[1] = new Attractor(mass, width-space, space);
  attractors[2] = new Attractor(mass, space, height-space);
  attractors[3] = new Attractor(mass, width-space, height-space);
}

void draw() {
  background(255);
  for(int n=0; n<attractors.length; n++) {
    attractors[n].display();
    for(int i=0; i<movers.length; i++) {
      PVector f = attractors[n].attract(movers[i]);
      movers[i].applyForce(f);
      movers[i].update();
      movers[i].checkEdges();
      movers[i].display();
    }
  }
}
