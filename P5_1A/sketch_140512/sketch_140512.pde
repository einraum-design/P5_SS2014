
// Array von Namen - mehrere Variablen vom typ String (Text)
// werden das array »names« gespeichert
String[] names = {
  "Jan", "magdalena", "Ferdinand", "Luisa"
};

// Array von Integer Zahlen
int[] zahlen = {
  100, 30, 400, 330, 200, 0, 234
};

void setup() {
  size(400, 400);
}


void draw() {
  background(255);

  // while schleife
  int counter = 0;

  // solange die Bedingung (counter <= width) in der schleife erfüllt ist
  // wird alles zwischen den {} immer wieder aufgeführt
  while (counter <= width) {
    stroke(150);
    line(counter, 0, counter, height);
    // counter wird bei jedem ausführen hochgezählt
    // damit die bedingung der while schleife nach
    // x durchgängen nicht mehr erfüllt ist 
    // -> sonst gibt es eine schwarze Loch im Raum Zeit Kontinuum ;-)
    counter = counter + 50;
  }

  // wenn die bedingung (counter <= width) nicht mehr erfüllt ist
  // geht's hier weiter ... 


  // for schleife
  // ähnlich wie while schleife
  // enthält Definition der Zählervariable: int i = 200
  // die Bedingung die geprüft wird: i > 0
  // den Inkrementor: i = i - 2
  for (int i = 200; i > 0 ; i = i - 2) { // var definiert; bedingung; incrementor
    // alles zwischen den Klammern wir so oft ausgeführt, 
    // bis die bedingung i>0 nicht mehr erfüllt ist
    noStroke();
    fill(255, 200, 0, 2);
    ellipse(width/2, height/2, i, i);
    // nach jedem durchlauf wird der inkrementor i = i - 2 ausgeführt
  }

  fill(0);
  // Zugriff auf ein Element aus dem »names« array
  // durch names[»index des elements«] kann auf die einzelnen names zugegriffen werden
  // gezählt wird ab 0!  0tes, 1tes, 2tes ... element
  text(names[namesNo], 20, 50);

  // for schleife die alle elemente des »names« array schreibt
  // names.length steht für die anzahl an Strings, 
  // die im Array stehen (5 Namen)
  for (int i = 0; i<names.length; i = i + 1) {
    text(names[i], 120, 50 + i * 50);
  } 



  // übung:
  fill(255, 255, 0, 140);
  for (int i = 0; i<zahlen.length; i = i + 1) {
    // für jeden Zahlenwert wird ein Kreis gezeichnet
    ellipse(i * 50, zahlen[i], 60, 60);

    // für jeden Zahlenwert wird zum vorherigen zahlenwert eine
    // line (graph) gezeichnet
    // erster wert (i == 0) wird ausgelassen
    // start erst ab dem 2. (i == 1) Wert
    if (i > 0) {
      int vorgaengerwert = i-1;
      stroke(255, 0, 0);
      line((vorgaengerwert) * 50, zahlen[vorgaengerwert], i*50, zahlen[i]);
    }
  }
}
int namesNo = 0;

// mousePressed eventHandler
// alles was zwsichen {} steht, wird pro mouseClick einmal ausgeführt
// unabhängig von der void draw()
void mousePressed( ) {
  namesNo = namesNo + 1;
  if (namesNo >= names.length) {
    namesNo = 0;
  }
}

