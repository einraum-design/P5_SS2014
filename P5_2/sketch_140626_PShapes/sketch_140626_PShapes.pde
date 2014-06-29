PShape s;

void setup() {
  size(800, 600, P2D);
  
  s = createShape();
  //();
  s.beginShape();
  s.fill(255, 0, 0);
  s.stroke(0, 255, 0);
  s.vertex(200, 200);
  s.fill(0, 255, 0);
  s.stroke(0, 0, 255);
  s.vertex(400, 200);
  s.fill(255, 0, 255);
  s.stroke(0, 255, 0);
  s.vertex(500, 500);
  s.fill(0);
  s.stroke(0, 255, 0);
  s.vertex(100, 250);
  s.endShape(CLOSE);
}

void draw() {
  background(0);

  fill(255 ,0, 0);
  stroke(0, 0, 255);
  beginShape();
  vertex(30, 20);
  bezierVertex( 30, 0, 85, 0, 85, 20);
  vertex(85, 75);
  vertex(30, 75);
  endShape(CLOSE);
  
  
  //s.scale(0.99);
  shape(s, 0, 0);
}

void mousePressed(){
  s.setVertex(2, mouseX, mouseY);
}
