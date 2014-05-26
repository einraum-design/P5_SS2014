PFont font;

void setup() {
  size(800, 600, P3D);
  frameRate(60);

  // choose Font
  // println(PFont.list());
  font = createFont(PFont.list()[20], 36);

}

void draw() {
  background(0);
  
  //lights();
  
  translate(width/2, height/2);
  float bogenmass = radians(mouseX);
  rotate(bogenmass);
  //rotateY(bogenmass);
  
  stroke(255, 0, 0);
  line(0, 0, 300, 0);
  
  stroke(0, 255, 0);
  line(0, 0, 0, 300);
  
  noStroke();
  rect(150, 70, 120, 80);



  // 3D Objekte
  //box(100);
  //sphere(100);
}
