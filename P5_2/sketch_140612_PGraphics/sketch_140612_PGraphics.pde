PGraphics frame1;
PGraphics frame2;

void setup() {
  size(800, 600, P3D);

  frame1 = createGraphics(400, 400);
  frame1.beginDraw();
  frame1.background(255, 0, 255);
  frame1.endDraw();

  frame2 = createGraphics(400, 400, P3D);
  frame2.beginDraw();
  frame2.background(255, 255, 0);
  frame2.endDraw();

  imageMode(CENTER);
}

void draw() {
  background(0);

  drawFrame1(frame1);
  drawFrame2();

  //lights();
  //directionalLight(255, 255, 255, 1, 0, -1); 


  pushMatrix();
  translate(width/2, height/2, -300);

  rotateY(millis() / 2000.0);

  pushMatrix();
  translate(0, 0, 200);
  image(frame1, 0, 0);
  popMatrix();

  pushMatrix();
  rotateY(PI);
  translate(0, 0, 200);
  image(frame1, 0, 0);
  popMatrix();

  pushMatrix();
  rotateY(HALF_PI);
  translate(0, 0, 200);
  image(frame2, 0, 0);
  popMatrix();

  pushMatrix();
  rotateY(-HALF_PI);
  translate(0, 0, 200);
  image(frame2, 0, 0);
  popMatrix();

  popMatrix();
}

void drawFrame1(PGraphics renderer) {
  renderer.beginDraw();
  renderer.fill(random(255));
  renderer.ellipse(random(frame1.width), random(frame1.height), 80, 80);
  renderer.endDraw();
}

void drawFrame2() {
  frame2.beginDraw();
  frame2.background(60);
  frame2.lights();
  frame2.translate(frame2.width/2, frame2.height/2);
  frame2.rotateY(-millis()/2000.0);
  frame2.fill(0, 100, 200, 150);
  frame2.box(200);
  frame2.endDraw();
}

