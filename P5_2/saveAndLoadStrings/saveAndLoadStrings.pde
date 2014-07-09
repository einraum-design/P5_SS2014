String name1 = "Fritz";
String name2 = "Dieter";
String name3 = "Stephan";

String[] savedNameUndPunkte;
 
void setup() {
  
  size(200, 200);
  String[] nameUndPunkte = new String[3];
  nameUndPunkte[0] = name1 + "," + random(100) + "," + "Müller";
  nameUndPunkte[1] = name2 + "," + random(100) + "," + "Meier";
  nameUndPunkte[2] = name3 + "," + random(100) + "," + "Bauer";
  
  saveStrings("namenUndPunkte.txt", nameUndPunkte);
  
  
  savedNameUndPunkte = loadStrings("namenUndPunkte.txt");
  
}

void draw() {
  
  for(int i = 0; i<savedNameUndPunkte.length; i++){
    String line = savedNameUndPunkte[i];
    
    String[] parts = split(line, ',');
    fill(0);
    text(parts[0] + " " + parts[2], 20, 30 + i*height/3);
    
    float wertung = float(parts[1]);
    fill(255, 0, 0);
    rect(20, 30 + i*height/3, wertung, 10);
  
  }
}

