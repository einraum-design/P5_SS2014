void setup() {
  size(800, 600);
}

void draw() {
  // überzeichnet alles schwarz
  background(0);
  if (mousePressed == false) {
    fill(255, 255, 0);
    arc(width/2, height/2, 80, 80, radians(45), radians(360 - 45), PIE);
    fill(0);
    ellipse(width/2, height/2 - 20, 8, 8);
  } 
  else {
    fill(255, 255, 0);
    arc(width/2, height/2, 80, 80, radians(0), radians(360 - 0), PIE);
    fill(0);
    ellipse(width/2, height/2 - 20, 8, 8);
  }
}

