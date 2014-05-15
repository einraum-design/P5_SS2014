String[] names = {"Anna", "Hannah", "Franziska", "Sebastian", "Tillman"};
int[] xPos = {10, 50, 100, 30, 120};
int[] yPos = {10, 50, 60, 100, 160};

float[] values = new float[20];

int namesNo = 0;

void setup(){
  size(800, 600);
  for(int i = 0; i < values.length; i++){
    // kurzschreibweise:
    // i = i + 1    ist i++ oder i+=1
    
    values[i] = random(height);
  }
  
}

void draw(){
  background(255);
  
  fill(0);
 // text(names[namesNo], xPos[namesNo], yPos[namesNo]);
  
  /*text(names[0], xPos[0], yPos[0]);
  text(names[1], xPos[1], yPos[1]);
  text(names[2], xPos[2], yPos[2]);
  text(names[3], xPos[3], yPos[3]);
  text(names[4], xPos[4], yPos[4]);
  */
  
  for(int i = 0; i < names.length; i = i + 1){
    text(names[i], xPos[i], yPos[i]);
  }

  /*line(40, height, 40, height - values[0]);
  line(80, height, 80, height - values[1]);
  line(120, height, 120, height - values[2]);
  line(160, height, 160, height - values[3]);
  line(200, height, 200, height - values[4]);
  line(240, height, 240, height - values[5]);
  */
  // ...
  for(int i = 0; i<values.length; i++){
    line(40 + i*40, height, 40 + i*40, height - values[i]);
  }
  
}

void mousePressed(){
  namesNo = namesNo + 1;
  if(namesNo >= names.length){
    namesNo = 0;  
  }
  
  xPos[namesNo] = mouseX;
  yPos[namesNo] = mouseY;
}
