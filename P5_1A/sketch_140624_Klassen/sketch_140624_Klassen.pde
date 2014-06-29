Person fritz;

Person klaus;

void setup(){
  size(600, 400);
  fritz = new Person();
  fritz.name = "Fritz";
  fritz.nachname = "Meier";
  fritz.alter = 34;
  
  
  klaus = new Person();
  klaus.name = "Klaus";
  klaus.nachname = "Müller";
  klaus.alter = 19;
  
  
}

 void draw(){
   background(255);
   
   fill(0);
     text(fritz.name, 30, 30);
     text(fritz.nachname, 30, 50);
     text(fritz.alter, 30, 70);
     
     translate(150, 0);
     text(klaus.name, 30, 30);
     text(klaus.nachname, 30, 50);
     text(klaus.alter, 30, 70);
 }
 
 
 class Person {
   String name;
   String nachname;
   int alter;
   
   Person(){
   }
 
 
 }
