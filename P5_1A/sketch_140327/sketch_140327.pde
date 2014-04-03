/*
mehrzeiliger kommentar
*/

// einzeiliger kommentar

// definiert die groesse des fensters
size(800, 600);

// zeichne Rechtek
rectMode(CENTER); // rechteck zeichnposition alternativ: CORNER
fill(0, 0, 255); // fuellfarbe rot-, gruen-, blauanteil
stroke(255,255, 0); // konturfarbe
rect(200, 300, 300, 200); // rechteck (x_position, y_position, breite, hoehe

fill(229, 149, 0, 100);
noStroke();
ellipse(200, 300, 300, 300); // ellipse (x_position, y_position, breite, hoehe)

// zeichnet PacMan
fill(255, 255, 0);
stroke(0);
arc(100, 100, 80, 80, radians(30), radians(330), PIE); // Bogen siehe http://processing.org/reference/arc_.html
// radians rechnet Gradzahl in Bogenmass um
noStroke(); // keine kontur
fill(0);
ellipse(100, 82, 8, 8);


