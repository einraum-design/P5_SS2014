Ball b1;
Ball b2;
Ball b3;

ArrayList<Ball> ball_arrayList = new ArrayList<Ball>();

void setup(){
  size(800, 600);
  b1 = new Ball();
  
  PVector vec = new PVector(300, 200);
  b2 = new Ball(vec, 50);
  
  b3 = new Ball(500, 200, 80);
}

void draw(){
  
  background(0);
  
  b1.update();
  b2.update();
  b3.update();

  
  b1.render();
  b2.render();
  b3.render();
  
  for(int i = 0; i<ball_arrayList.size(); i++){
    Ball b = ball_arrayList.get(i);
    b.update();
    b.render();
    
    if(b.counter > 500){
      ball_arrayList.remove(b);
    }
    
    /*
    Ball b = ball_arrayList.get(i);
    b.update();
    b.render();
    */
    
  }
}

void mousePressed(){
  Ball b = new Ball(mouseX, mouseY, 30);
  ball_arrayList.add(b);
}
