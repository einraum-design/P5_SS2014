Ball fussball;
Ball basketball;

void setup() {
  size(800, 600);
  fussball = new Ball("Fussball", 100, 200, 400);
  fussball.c = color(230);

  basketball = new Ball("Basketball", 130, 400, 200);
  basketball.c = color(255, 180, 0);

  /*
  fussball.durchmesser = 100;
   fussball.typ = "Fussball";
   fussball.xPos = 200;
   fussball.yPos = 300;
   */
}

void draw() {
  background(255);

  if (keyPressed) {
    if (key == 'a') {
      fussball.moveLeft();
    } else if (key == 'd') {
      fussball.moveRight();
    }
  }



  fussball.render();
  basketball.render();
  /*fill(fussball.c);
   ellipse(fussball.xPos, fussball.yPos, fussball.durchmesser, fussball.durchmesser);
   
   fill(basketball.c);
   ellipse(basketball.xPos, basketball.yPos, basketball.durchmesser, basketball.durchmesser);
   */
}

void keyPressed() {
}


class Ball {
  float durchmesser = 60;
  color c = color(255, 0, 0);
  String typ;
  float xPos;
  float yPos;

  Ball(String _typ, float _durchmesser, float _xPos, float _yPos) {
    typ = _typ;
    durchmesser = _durchmesser;
    xPos = _xPos;
    yPos = _yPos;
  }

  void move(float xDirection, float yDirection) {
    xPos = xPos + xDirection;
    yPos = yPos + yDirection;
  }
  void moveRight() {
    xPos ++;
  }

  void moveLeft() {
    xPos --;
  }

  void render() {
    fill(c);
    ellipse(xPos, yPos, durchmesser, durchmesser);
  }
}

