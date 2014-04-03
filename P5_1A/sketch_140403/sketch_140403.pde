
void setup() {
  size(800, 600);
  frameRate(30);

  // wird nur einmal zu beginn des programms gezeichnet
  ellipse(200, 200, 100, 100);
}

void draw() {

  // zufaellig positionierts rechteck - jeden frame an neuer position
  fill(random(255), random(255), random(255));
  rect(random(width), random(height), 60, 60);

  // mittig positionierte ellipse
  fill(255);
  ellipse(width/2, height/2, 300, 300);

  // spalte rechts 200 pixel breit
  rectMode(CORNER);
  rect(width-200, 0, 200, height);

  // bedingung Maus gedrückt
  if (mousePressed == true) {
    fill(255, 255, 255, 150);
    ellipse(mouseX, mouseY, 100, 100);
  } 
  else if (mouseX > width/2) {
    rect(width/2, 0, width/2, height);
  }
  // ansonsten:
  else {
    fill(255, 255, 255, 150);
    rectMode(CENTER);
    rect(mouseX, mouseY, 100, 100);
  }
}

