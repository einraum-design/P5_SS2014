void setup(){
  size(800, 600);  
}

void draw(){
  background(0);
  
  pacman(400, 200, 80);
  pacman(500, 300, 120);
}


void pacman(float xPos, float yPos, float d){
  PVector pos = new PVector(xPos, yPos);
  PVector mouseV = new PVector(mouseX, mouseY);
  PVector pacZuMaus = PVector.sub(mouseV, pos);
  println(pacZuMaus.heading());
  //float pacRatation = pacZuMaus.heading();
  
  float grad;
  // wenn abstand von Maus zu Packman < 150
  if(dist(mouseX, mouseY, xPos, yPos) < 150){
    // packman animiert
    grad = 45 - (millis()/20)%45; 
  } else{
    // packman statisch
    grad = 45;
  }
  
  float open = radians(grad);
  
  pushMatrix();
  translate(pos.x, pos.y);
  rotate(pacZuMaus.heading());
  
  // body
  fill(255,255,0);
  arc(0, 0, d, d, open, TWO_PI - open, PIE);
  // auge
  fill(0);
  ellipse(0, - d/5 , d/10, d/10);
  
  popMatrix();
}
