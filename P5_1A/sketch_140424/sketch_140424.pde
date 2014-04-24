PFont font;
PFont generierteFont;

PImage img;
// The font must be located in the sketch's 
// "data" directory to load successfully

void setup() {
  size(800, 600);
  
  img = loadImage("dataSphere.jpg");
  font = loadFont("HelveticaNeue-Medium-48.vlw");
  println(PFont.list()[100]);
  generierteFont = createFont(PFont.list()[100], 48);
}

void draw() {
  background(255);
  
  float scaleValue = mouseX/(float)img.width;
  //image(img, 0, 0, img.width * scaleValue, img.height * scaleValue);
  //image(img, 0, 0, mouseX, mouseY);

  image(img, 0, 0);
  
  fill(  img.get(mouseX, mouseY)  );
  rect(mouseX, mouseY, 20, 20);

 // fill(0);
  textFont(font, 48);
  text("word", 10, 50);
  
  
  textFont(generierteFont, 48);
  text("word", 10, 100);
  
  textSize(100);
  text("word", 10, 400);
}

