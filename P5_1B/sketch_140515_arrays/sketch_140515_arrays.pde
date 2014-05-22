String[] names = {"Agathe", "Tobi", "Maria", "Mathis", "Manuel", "Anna"};
float[] values = {120, 345, 123, 12, 45, 324, 234.5, 223, 19, 135.7};

float[] randomValues = new float[10];

int namesNo = 0;

void setup(){
  size(800, 600);
  
  for(int i = 0; i<randomValues.length; i++){
    randomValues[i] = random(height);
  }
  
}

void draw(){
  background(255);
  
  fill(0);
  text(names[namesNo], 30, 50);
  
  /*line(40, 0, 40, values[0]);
  line(80, 0, 80, values[1]);
  line(120, 0, 120, values[2]);
  */
  // ..
  
  stroke(0, 0, 200);
  for(int i = 0; i<values.length; i = i + 1){
    line(60 + i*40, 0, 60 + i*40, values[i]);
  }
  
  stroke(200, 0, 0);
  for(int i = 0; i<randomValues.length; i = i + 1){
    line(50 + i*40, 0, 50 + i*40, randomValues[i]);
  }
}

void mousePressed(){
  namesNo = namesNo +1; // namesNo ++; namesNo += 1
  if(namesNo >= names.length){
    namesNo = 0;
  }
}


