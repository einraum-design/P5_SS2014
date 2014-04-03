
// wird einmal zum Programmstart ausgeführt
void setup(){
  size(1200, 600);
  frameRate(30);
  smooth();
  
  fill(255, 0, 0, 30);
  ellipse(200, 300, 100, 100);
}

// wird immer wieder (in der festgelegten frameRate) ausgeführt
void draw(){
  
  
  // zufälig auf sketch positioniertes rechteck
  // fill(random(255), random(255), random(255));
  // rectMode(CENTER);
  // rect(random(width), random(height), 80, 80);
  
  // rechteck an rechter siete positioniert
  fill(255);
  rectMode(CORNER);  
  rect(width - 200, 0, 200, height);
  
  // ellipse mittig positioniert
  ellipse(width/2, height/2, 80, 80);
  
  
  // ellipse an mousePosition
  
  if(mousePressed == true){
    fill(mouseX, mouseY, random(255));
    ellipse(mouseX, mouseY, 100, 100);
  } else if(keyPressed == true){
    fill(mouseX, mouseY, random(255));
    ellipse(mouseX, mouseY, 1000, 1000);
  } else{
    fill(mouseX, mouseY, random(255));
    ellipse(mouseX, mouseY, 30, 30);
  }
}
