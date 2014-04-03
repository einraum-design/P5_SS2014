void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  if (mousePressed == false) {
    fill(255, 255, 0);
    arc(width/2, height/2, 120, 120, radians(45), radians(360-45), PIE);

    fill(0);
    ellipse(width/2, height/2 - 30, 14, 14);
  } else{
    fill(255, 255, 0);
    arc(width/2, height/2, 120, 120, radians(0), radians(360), PIE);

    fill(0);
    ellipse(width/2, height/2 - 30, 14, 14);
  }
}

