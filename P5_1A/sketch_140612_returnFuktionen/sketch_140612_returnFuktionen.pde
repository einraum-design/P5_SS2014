void setup(){
  size(800, 600);
  
}

void draw(){
  background(0);
  
  fill(255);
  
  
  int ergebnis = multiplyAndRound( 4.5, 6.3);
  println(ergebnis);
  fill(ergebnis);
  ellipse(500, 300, 50, 50);
  
 translateAndRotateText(400, 300, 10, addAndCreateString(34, 234.345));
  
  translateAndRotateText(30, 60, 40);
  
  translateAndRotateText(200, 300, 90, "Hello World");
  
  color c = color(255, 150, 0);
  translateAndRotateText(250, 300, 90, "Hello World", c);
  
  translateAndRotateText(300, 300, 90, "Hello World", color(0, 100, 255));
}

String addAndCreateString(float zahl1, float zahl2){
  float ergebnis = zahl1 + zahl2;
  String txt = "Das Ergebnis ist " + ergebnis;
  return txt;
}


int multiplyAndRound (float factor1, float factor2){
  float result = factor1 * factor2;
  return (int)result;
}


void translateAndRotateText(float xPos, float yPos, float angle){
  //String txt = "my text";
  translateAndRotateText(xPos, yPos, angle, "my text");
  
  /*
  pushMatrix();
  translate(xPos, yPos);
  rotate(radians(angle));
  text(txt, 0, 0);
  popMatrix();
  */
}

void translateAndRotateText(float xPos, float yPos, float angle, String txt){
  translateAndRotateText(xPos, yPos, angle, txt, color(255));
 /* pushMatrix();
  translate(xPos, yPos);
  rotate(radians(angle));
  text(txt, 0, 0);
  popMatrix();*/
}

void translateAndRotateText(float xPos, float yPos, float angle, String txt, color c){
  pushMatrix();
  translate(xPos, yPos);
  rotate(radians(angle));
  fill(c);
  text(txt, 0, 0);
  popMatrix();
}
