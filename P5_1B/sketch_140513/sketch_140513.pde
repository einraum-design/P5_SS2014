void setup() {
  size(800, 600);
  frameRate(60);
}

int blueVal = 0;

void draw() {
  background(255);
  
  // while schleife
  int x = 0;
  // solange die Bedingung (x <= width) in der schleife erfüllt ist
  // wird alles zwischen den {} immer wieder aufgeführt
  while (x <= width) {
    stroke(x/3.0, 255, 0);
    line(mouseX, mouseY, x, 0);
    x = x + 10;
    println("x: " + x);
    // x wird bei jedem ausführen hochgezählt
    // damit die bedingung der while schleife nach
    // einer bestimmten anzahl an durchgängen nicht 
    // mehr erfüllt ist 
    // -> sonst gibt es eine schwarze Loch im Raum Zeit Kontinuum ;-)
  }
  
  // wenn die bedingung (counter <= width) nicht mehr erfüllt ist
  // geht's hier weiter ... 


  int y = 0;
  while (y <= height) {
    stroke(0, y/3.0, 255);

    line(mouseX, mouseY, 0, y);
    y = y + 10;
    println("y: " + y);
  }



  // for schleife
  // ähnlich wie while schleife
  // enthält Definition der Zählervariable: int i = 0
  // die Bedingung die geprüft wird: i <= 255
  // den Inkrementor: i = i + 2
  for (int i = 0; i <= 255; i = i+2) { // varibale definieren; bedingung; inkrementor 
    // alles zwischen den Klammern wir so oft ausgeführt, 
    // bis die bedingung i<=255 nicht mehr erfüllt ist
    noStroke();
    fill(255, i, 0);
    ellipse(width/2, height/2, 255-i, 255-i);
    // nach jedem durchlauf wird der inkrementor i = i+2 ausgeführt

  }

  for (int i = 0; i<width; i = i + 40) {
    fill(i/3.0, blueVal, i);
    ellipse(i, i * height/(float)width, 60, 60);
  }

  blueVal = blueVal + 1;
  if(blueVal > 255){
    blueVal = 0;
  }

  //println("ende der draw");
}

