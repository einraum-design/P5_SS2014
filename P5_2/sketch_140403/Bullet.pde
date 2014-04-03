class Bullet{
  PVector pos;
  boolean eaten = false;
  
  Bullet(float x, float y){
    pos = new PVector(x, y);
  }
  
  void render(){
    if(eaten == false){
      fill(255);
      ellipse(pos.x, pos.y, 30, 30);
    }
  }
}
