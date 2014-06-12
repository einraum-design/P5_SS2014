float xPos = 0;
float yPos = 100;

void setup() {
  size(800, 600);
}

void draw() {
  background(0);

  float zielX = width/2;
  float zielY = height/2;

  //xPos = xPos + (zielX - xPos) * 0.05;
  //yPos = yPos + (zielY - yPos) * 0.05;

  xPos = interpoliere(xPos, mouseX, 0.1);
  yPos = interpoliere(yPos, mouseY, 0.01);

  ellipse(xPos, yPos, 50, 50);

  translateAndRotateText(300, 300);

  translateAndRotateText(100, 300, 30);

  translateAndRotateText(200, 300, 60, "Hello World");

  color c = color(255, 100, 0);
  translateAndRotateText(400, 300, 90, "Text2", c);
}

float interpoliere (float currentVal, float targetVal) {
  return interpoliere(currentVal, targetVal, 0.05);
}

float interpoliere (float currentVal, float targetVal, float speed) {
  float result = 0;
  if (abs(targetVal - currentVal) > 0.1) {
    result = currentVal + (targetVal - currentVal) * speed;
  } else {
    result = targetVal;
  }
  return result;
}

void translateAndRotateText(float xPos, float yPos) {
  translateAndRotateText(xPos, yPos, 0);
}

void translateAndRotateText(float xPos, float yPos, float angle) {
  translateAndRotateText(xPos, yPos, angle, "Hello");
}

void translateAndRotateText(float xPos, float yPos, String txt) {
  translateAndRotateText(xPos, yPos, 0, txt, color(255));
}

void translateAndRotateText(float xPos, float yPos, float angle, String txt) {
  translateAndRotateText(xPos, yPos, angle, txt, color(255));
}

void translateAndRotateText(float xPos, float yPos, float angle, String txt, color c) {
  pushMatrix();
  translate(xPos, yPos);
  rotate(radians(angle));
  fill(c);
  text(txt, 0, 0);
  popMatrix();
}

