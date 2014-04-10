boolean active = true; // true false
int age = 36;// Integer 0, 1, 2, 3, 4, -1, ...
float size = 1.78;// 1.324, 6.356, 2345.56
String name = "Klaus";// "Hello"

float xPos = 100;
float yPos = 100;

float xSpeed = 3;
float ySpeed = 3;

void setup() {
  size(800, 600);
  frameRate(30);
  //  noCursor();

  text(name + ", " + age + " größe: " + size, 100, 100);

  name = "Thomas";
  text(name + ", " + age + " größe: " + size, 100, 150);
}

void draw() {
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  
  if(xPos > width + 50){
    xPos = -50;
    //yPos = random(height);
    xSpeed = random(3, 20);
    fill(255,random(255), 0);
  }
  
  if(yPos > height + 50){
    yPos = -50;
    ySpeed = random(3, 20);
    fill(0,random(255), 255);
  }
  ellipse(xPos, yPos, 100, 100);
}

