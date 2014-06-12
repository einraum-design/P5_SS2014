void setup(){
  size(displayWidth, displayHeight);
  orientation(PORTRAIT); 
  colorMode(HSB, 360, 100, 100);
}


void draw(){
  //background(0);
  
  fill(random(360), 100, 100);
  ellipse(mouseX, mouseY, 40, 40);

}


 void keyPressed() {
    if (key == CODED) {
      if (keyCode == MENU) {
        background(0);
        // user hit the menu key, take action
      }
    }
  }
