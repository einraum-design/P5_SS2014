class Pacman extends PVector {
  
  PVector velocity;
  
  Pacman(){
    x = random(width);
    y = random(height);
    
    velocity = new PVector();
  }
  void update(){
    PVector toMouse = PVector.sub(new PVector(mouseX, mouseY), this);
    
    velocity.lerp(toMouse, 0.1);
    PVector addVel = PVector.mult(velocity, 0.1);
    
    //PVector addVel = PVector.mult(toMouse, 0.1);
    
    this.add(addVel);
    
  }
  
  void render() {
    fill(255, 255, 0);
    noStroke();
    
    float size = 40;

    pushMatrix();
    translate(x, y);
    
    PVector toMouse = PVector.sub(new PVector(mouseX, mouseY), this);
    toMouse.normalize();
    println(toMouse);
    rotate(toMouse.heading());
    
    float open = radians(45) - (millis() / 2000.0) % radians(45);
    arc(0, 0, size, size, open, TWO_PI - open, PIE);
    fill(0);
    ellipse(0, - size/3.8, size/7.1, size/7.1);
    popMatrix();
  }
}
