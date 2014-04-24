int bX = 200;
int bY = 100;
int bW = 100;
int bH = 50;

boolean bActive = false; 

void setup() {
  size(500, 300);
  frameRate(60);
}

void draw() {
  background(30);
  

  if(bActive == true){
    fill(0, 0, 255);
  }
  rect(bX, bY, bW, bH);
}

void mousePressed(){
  if (mouseX > bX && mouseX < bX + bW && mouseY > bY && mouseY < bY + bH) {
    fill(150, 150, 255);
    if (mousePressed == true) {
      //fill(0, 0, 255);
      if(bActive == true){
        bActive = false;
      } else{
        bActive = true;
      }
      
      // bActive = !bActive;
      
    }
  } 
  else {
    fill(200);
  }
  println("mousePressed!");
}

