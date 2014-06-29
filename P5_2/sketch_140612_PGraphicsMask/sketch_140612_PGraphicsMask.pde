PImage leaves;
PGraphics maske;

void setup(){
  size(800, 600, P2D);
  
  leaves = loadImage("leaves.jpg");
  
  maske = createGraphics(leaves.width, leaves.height);
   maske.beginDraw();
  maske.background(255);
  //maske.fill(0);
  //maske.rect(0, 0, 300, 100);
  maske.endDraw();
}

void draw(){
  background(255, 0, 0);
  
  // draw on maske
  maske.beginDraw();
  maske.fill(255, 20);
  maske.rect(0, 0, maske.width, maske.height);
  maske.fill(0);
  maske.noStroke();
  maske.ellipse(mouseX, mouseY, 30, 30);
  maske.endDraw();
   
  leaves.mask(maske);
  image(leaves, 0, 0, leaves.width, leaves.height);
}
