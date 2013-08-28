Mover[] movers = new Mover[100];

void setup() {
  size(600, 600);
  for(int i=0; i<movers.length; i++) {
    movers[i] = new Mover();
  }
}

void draw() {
  background(255);
  for(int i=0; i<movers.length; i++) {
    for(int j=0; j<movers.length; j++) {
      if(i == j) { continue; }
      PVector f = movers[j].attract(movers[i]);
      movers[i].applyForce(f);
    }
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
}
