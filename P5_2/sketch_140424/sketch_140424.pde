Pacman p;
int points = 0;

ArrayList<Bullet> bullets_list = new ArrayList<Bullet>();

void setup() {
  size(800, 600);

  for (int i = 0; i<30; i++) {
    Bullet b = new Bullet();
    bullets_list.add(b);
  }
  p = new Pacman();
}

void draw() {
  background(0);

  for (Bullet b : bullets_list) {
    b.update();
  }

  p.update();

  for (int i = 0; i<bullets_list.size(); i++) {
    Bullet b = bullets_list.get(i);
    b.render();

    float distance = p.dist(b);
    if (distance < 25) {
      points ++;
      bullets_list.remove(b);
    }
  }
  p.render(this);

  fill(255);
  text(points, 20, 30);
}

void mousePressed() {
}

