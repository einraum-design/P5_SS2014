PImage ziffernBlatt;

void setup(){
  size(800, 600);
  
  ziffernBlatt = loadImage("http://t2.ftcdn.net/jpg/00/28/65/35/400_F_28653501_WNgFMIpsV5VJR3BU6sRjFaFBM2RlBNtY.jpg");
}

void draw(){
  background(255);
  
  
  // tranlation zur mitte
  translate(width/2, height/2);
  
  imageMode(CENTER);
  image(ziffernBlatt, 0, 0, ziffernBlatt.width * 1.5, ziffernBlatt.height * 1.5);
  
  pushMatrix();
  int aktSek = second();
  float secGrad = map(aktSek, 0, 60, 0, 360);
  // 0 - 60 Sekunden --> 0 - 360 Grad
  float bogenmass = radians(secGrad);
  // rotations Sekunden
  rotate(bogenmass);
  //rect(100, 0, 300, 40);
  strokeWeight(2);
  stroke(255, 0, 0);
  line(0, 0, 0, -270);
  //rotate(-bogenmass);
  popMatrix();
  
  // minuten  
  pushMatrix();
  float minGrad = map(minute(), 0, 60, 0, 360);
  // rotations Sekunden
  rotate(radians(minGrad));
  //rect(100, 0, 300, 40);
  strokeWeight(5);
  stroke(0);
  line(0, 0, 0, -220);
  //rotate(-radians(minGrad));
  popMatrix();
  
  pushMatrix();
  //int aktSek = second();
  float stdGrad = map(hour(), 0, 12, 0, 360);
  // rotations Sekunden
  rotate(radians(stdGrad));
  //rect(100, 0, 300, 40);
  strokeWeight(10);
  stroke(0);
  line(0, 0, 0, -170);
  popMatrix();

  //i = i + 1  alternativ i++  oder i += 1;
  /*for(int i = 1; i < 13; i++){
    
  }*/
}
