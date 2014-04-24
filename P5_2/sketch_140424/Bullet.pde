class Bullet extends PVector {

  PVector velocity;
  Bullet() {
    x = random(width);
    y = random(height);
    
    velocity = PVector.random2D();
    velocity.mult(3);
    
    
  }
  
  void update(){
    
    float ran = random(1);
    if(ran > 0.95){
      velocity = PVector.random2D();
      velocity.mult(3);
    }
    
    this.add(velocity);
    if(x > width || x < 0){
      velocity.x *= -1;
    }
    if(y > height || y < 0){
      velocity.y *= -1;
    }
    
  }
  
  void render(){
    fill(255);
    ellipse(x, y, 20, 20);
  }
}

