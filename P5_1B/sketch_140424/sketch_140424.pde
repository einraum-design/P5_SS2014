PFont font;
PFont generierteFont;
PImage img;

void setup() {
  size(800, 600);
  font = loadFont("Helvetica-48.vlw");

  println(PFont.list());
  generierteFont = createFont(PFont.list()[0], 48);
  //  generierteFont = createFont("Serif", 48);

  img = loadImage("dataSphere.jpg");
}

void draw() {
  background(0);
  
  float scaleValue = mouseX/(float)img.width;
  image(img, 0, 0, img.width * scaleValue, img.height * scaleValue);
  
  image(img, 100, 100);
  
  color c = img.get(mouseX - 100, mouseY - 100);
  
  pushStyle();
  fill(c);
  
  rect(mouseX, mouseY, 20, 20);
  popStyle();
  
  fill(255);
  textFont(font, 48);
  text("Hello World", 30, 50);

  textFont(generierteFont, 48);
  text("Hello Kurs", 30, 200);
}

