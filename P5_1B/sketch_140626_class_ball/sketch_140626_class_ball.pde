Ball fussball;

Ball basketball;

void setup() {
  size(800, 600);

  fussball = new Ball(200, 300, 120);
  //fussball.c = color(100, 100, 150);
  /*
  fussball.xPos = 200;
   fussball.yPos = 300;
   fussball.durchmesser = 120;
   */

  basketball = new Ball(400, 200, 150);
  basketball.c = color(180, 100, 0);
  /*
  basketball.xPos = 400;
   basketball.yPos = 200;
   basketball.durchmesser = 150;
   */
}

void draw() {
  background(255);
  fussball.render();

  basketball.render();
  
  if(mousePressed){
    fussball.moveLeft();
  }
  
  if(keyPressed){
    basketball.moveRight();
  }
  
  /*
  fill(basketball.c);
  ellipse(basketball.xPos, basketball.yPos, basketball.durchmesser, basketball.durchmesser);
  */
}


