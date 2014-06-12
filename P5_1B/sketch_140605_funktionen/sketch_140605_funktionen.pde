int globalVar = 0;

void setup(){
  size(800, 600);
}

void draw(){
  background(255);
  
  float zufall = random();
  
  float ergebnis = multipliziere(3, 14);
  
  pacman(300, 400, 0);
  
  pacman(700, 100, 30);
  
  pacman(200, 400, 180);
  
  if(mousePressed == true){
    int var = 7;
  }  else {
    int var = 0;
  }
  
  begruesse("Peter", "Hallo");
  begruesse("Klaus", "Hey", 200, 100);
}

void pacman(float xPos, float yPos, float angle){
  fill(255, 255, 0);
  //int xPos = 200;
  //int yPos = 150;
  //float angle = 90;
  pushMatrix();
  translate(xPos, yPos);
  rotate(radians(angle));
  arc(0, 0, 100, 100, radians(45), radians(360 - 45), PIE);
  fill(0);
  ellipse(0, -25, 12, 12);
  popMatrix();
}

void begruesse(){
  text("Hello", width/2, height/2);
}

void begruesse(String name, String greeting){
  String txt = greeting + " " + name + "!";
  fill(0);
  text(txt, width/2, height/2);
}

void begruesse(String name, String greeting, int xPos, int yPos){
  String txt = greeting + " " + name + "!";
  fill(0);
  text(txt, xPos, yPos);
}

float multipliziere(float factor1, float factor2){
  float result = factor1 * factor2;
  return result;
}

