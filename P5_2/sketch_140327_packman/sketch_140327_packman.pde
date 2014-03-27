void setup(){
  size(800, 600);  
}

void draw(){
  background(0);
  
  packman(400, 200, 80);
  packman(500, 300, 120);
}


void packman(float xPos, float yPos, float d){
  PVector pos = new PVector(xPos, yPos);
  float grad;
  // wenn abstand von Maus zu Packman < 150
  if(dist(mouseX, mouseY, xPos, yPos) < 150){
    // packman animiert
    grad = 45 - (millis()/20)%45; 
  } else{
    // packman statisch
    grad = 45;
  }
  // umrechnen von grad zu bogenmass
  float open = radians(grad);
  
  pushMatrix();
  translate(pos.x, pos.y);
  rotate(mouseX/200.0);
  
  // body
  fill(255,255,0);
  arc(0, 0, d, d, open, TWO_PI - open, PIE);
  // auge
  fill(0);
  ellipse(0, - d/5 , d/10, d/10);
  
  popMatrix();
}
