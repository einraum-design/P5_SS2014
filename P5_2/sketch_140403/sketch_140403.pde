PacMan p;
PacMan p2;

PacMan[] pacMenArray = new PacMan[8];
Bullet[] bulletArray = new Bullet[50];

void setup(){
  size(800, 600);
  p = new PacMan(300, 200, 60);
  p2 = new PacMan(600, 400, 120);
  
  // erzeugt 8 neue pacmen in einer reihe
  for(int i = 0; i< pacMenArray.length; i++){
    pacMenArray[i] = new PacMan((i*100)+50, height/2, 80);
  }
  
  // erzeugt 50 bullets zufaellig positioniert
  for(int i = 0; i< bulletArray.length; i++){
    bulletArray[i] = new Bullet(random(width), random(height));
  }
  
  // print der attribute von PackMan p
  println(p.pos);
  println(p.d);
}

void draw(){
  background(0);
  p.render();
  p2.render();
  
  for(int i = 0; i<pacMenArray.length; i++){
    pacMenArray[i].render();
  }
  
  for(int i = 0; i< bulletArray.length; i++){
    bulletArray[i].render();
  }
}
