class Ball {
  float xPos;
  float yPos;
  float durchmesser;
  color c = color(255, 0, 0);

  Ball(float _xPos, float _yPos, float _durchmesser) {
    xPos = _xPos;
    yPos = _yPos;
    durchmesser = _durchmesser;
    // zufälliger farbton für neuen ball
    c = color(random(255), random(255), random(255));
  }

  void render() {
    fill(c);
    ellipse(xPos, yPos, durchmesser, durchmesser);
  }

  void moveLeft() {
    xPos = xPos -1;
  }
  void moveRight() {
    xPos = xPos +1;
  }
}

