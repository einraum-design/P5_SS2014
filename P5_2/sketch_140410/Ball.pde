class Ball {
  PVector currentPos;
  float d = 30;
  
  boolean alive = true;
  
  int counter = 0;
  color c;

  PVector velocity = new PVector(5, 3);
  PVector gravity = new PVector(0, 0.3);

  Ball() {
    currentPos = new PVector(random(width), random(height));
    velocity = new PVector(random(-10, 10), random(10, 10));
    c = color(150, random(255), random(255));
  }

  Ball(PVector pos, float _d) {
    currentPos = pos;
    d = _d;
    velocity = new PVector(random(-10, 10), random(10, 10));
    c = color(150, random(255), random(255));
  }

  Ball(float x, float y, float d) {
    currentPos = new PVector(x, y);
    this.d = d;
    velocity = new PVector(random(-10, 10), random(10, 10));
    c = color(150, random(255), random(255));
  } 

  void update() {
    counter ++;
    
    velocity.add(gravity);
    
    currentPos.add(velocity);
    
    if(alive && currentPos.y >= height && abs(velocity.y) < 2){
      alive = false;
      println("dead");
    }



    if (currentPos.x > width || currentPos.x < 0) {
      velocity.x = -velocity.x;
    }
    if (currentPos.y > height || currentPos.y < 0) {
      velocity.y = -velocity.y;
    }
  }

  void render() {
    if(alive){
      fill(c);
    ellipse(currentPos.x, currentPos.y, d, d);
    }
  }
}

