PImage backImg;

boolean bildAnimation = false;

PImage[] images = new PImage[3];
int imgNo = 0;


float trans = 0;
boolean fadeIn = false;
int timeStampFullFaded = 0;

void setup() {
  size(800, 600);
  backImg = loadImage("g_wm07.jpg");

  images[0] = loadImage("imgres-1.jpg");
  images[1] = loadImage("imgres-2.jpg");
  images[2] = loadImage("imgres.jpg");
}

void draw() {
  image(backImg, 0, 0);

  if (bildAnimation) {
    if (fadeIn == true) {
      // solange transparenz < 255 -> transparenzwert hochzählen
      if (trans < 255) {
        trans ++;

        // wenn fullFaded -> zeitpunkt speichern
        if (trans == 255) {
          timeStampFullFaded = millis();
        }
      } else if (millis() - timeStampFullFaded > 500) {
        fadeIn = false;
      }
    } else {
      trans = trans - 1;
      if (trans < 0) {
        trans = 0;
      }
    }


    tint(255, trans);
    image(images[imgNo], width/2, height/2);
    noTint();
  } else {
    fill(0);
    text("Hello Carla", 200, 200);
  }
}

void mousePressed() {
  float rand = random(1);
  if (rand >= 0.5) {
    // bildAnimation
    bildAnimation = true;
  } else {
    bildAnimation = false;
  }

  if (bildAnimation) {
    fadeIn = true;
    trans = 0;

    float randNo = random(0, images.length-1);
    imgNo = int(randNo);
  }

  //imgNo = imgNo + 1;
  /*if(imgNo >= images.length){
   imgNo = 0;
   }*/
}

