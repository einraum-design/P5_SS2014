int bX = 200;
int bY = 300;
int bW = 100;
int bH = 40;

boolean bActive = false;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  

  rect(bX, bY, bW, bH);
  
  fill(0);
  text(myText, 30, 50);
}

String myText = "";

void keyPressed(){
  println(key);
  myText = myText + key;
}


void mousePressed(){
  if (mouseX > bX && mouseX < bX + bW && mouseY > bY && mouseY < bY + bH) {
    fill(150, 150, 200);
    if (mousePressed == true) {
      //println("mousePressed in draw");
      //fill(200, 200, 255);
      if (bActive == true) {
        bActive = false;
      } 
      else {
        bActive = true;
      }
    }
  } 
  else {
    fill(150);
  }
  
  if (bActive) {
    fill(180, 180, 220);
  }

  
}
