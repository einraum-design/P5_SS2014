boolean active = false; // true oder false zb mousePressed
int age = 36; // ganze zahlen 1,2,3, ...
float size = 1.76;// fließkomma zahlen 3.34534, 16.235
String name;// Text zb "Hello world"

float xPos = 100;
float yPos = 200;
float xSpeed = 3;
float ySpeed = 3;

void setup() {
  size(800, 600, OPENGL);
  frameRate(60);
  noCursor();
  
  name = "Klaus";
  println("Hello World!");
  println(name + " " + age + " größe: " + size);
  
  name = "Stefan";
  println(name);
}

void draw() {
  //background(0);
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;

   println("xPos: " + xPos);
   println("xSpeed: " + xSpeed);
   
  if (xPos > width + 25) {
    xPos = -25;
    //yPos = random(height);
    xSpeed = random(2, 16);
  }
  
  if(yPos > height + 25){
    yPos = -25;
    ySpeed = random(2,16);
  }
  
  ellipse(xPos, yPos, 50, 50);
  
  text(name + " " + age + " größe: " + size, 100, 100);

}

