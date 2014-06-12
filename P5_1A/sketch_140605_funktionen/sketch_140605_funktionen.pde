PImage img;

void setup(){
  size(800, 600);
  img = loadImage("artefex.png");
}

void draw(){
  background(0);  
  
  fill(255); 
  
  translateAndRotateText(30, 60, 30);
  
  translateAndRotateText(200, 160, 180);
  
  translateAndRotateText(400, 160, 90);
  
  String name = "Manuel";
  String begruessung = "Hello";
  
  schreibeBegruessung(begruessung, name, 500, 100);
  schreibeBegruessung("Hey", "Hanna", 500, 130);
  
  
  ellipse(400, 400, 40, 40);
  
  
  
  /*
  txt = "my text2";
  xPos = 120;
  yPos = 90;
  pushMatrix();
  translate(xPos, yPos);
  rotate(radians(30));
  text(txt, 0, 0);
  popMatrix();
  
  txt = "my text3";
  xPos = 300;
  yPos = 180;
  pushMatrix();
  translate(xPos, yPos);
  rotate(radians(30));
  text(txt, 0, 0);
  popMatrix();
  */
  
  
  /*
  tint(255, mouseX);
  image(img, 0, 0);
  noTint();
  */
}

void translateAndRotateText(float xPos, float yPos, float angle){
  String txt = "my text";
 // int xPos = 30;
 // int yPos = 60;
  pushMatrix();
  translate(xPos, yPos);
  rotate(radians(angle));
  text(txt, 0, 0);
  popMatrix();
}

void schreibeBegruessung(String greeting, String name, float xPos, float yPos){
  String txt = greeting + " " + name + "!";
  text(txt, xPos, yPos);
}
