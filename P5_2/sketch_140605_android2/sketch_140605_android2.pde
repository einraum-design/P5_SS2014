/**
 * <p>Ketai Sensor Library for Android: http://KetaiProject.org</p>
 *
 * <p>KetaiSensor Features:
 * <ul>
 * <li>handles incoming Sensor Events</li>
 * <li>Includes Accelerometer, Magnetometer, Gyroscope, GPS, Light, Proximity</li>
 * <li>Use KetaiNFC for Near Field Communication</li>
 * </ul>
 * <p>Updated: 2012-03-10 Daniel Sauter/j.duran</p>
 */

import android.content.Context;
import android.app.Notification;
import android.app.NotificationManager;

import android.view.MotionEvent;

import ketai.sensors.*;

KetaiSensor sensor;
float rotationX, rotationY, rotationZ;
float accelerometerX, accelerometerY, accelerometerZ;


float currentYRotation = 0;
float targetYRotation = 0;

NotificationManager gNotificationManager;
Notification gNotification;
long[] gVibrate = {0,250,50,125,50,62};
 


void setup()
{
  size(displayWidth, displayHeight, P3D);
  sensor = new KetaiSensor(this);
  sensor.start();
  orientation(PORTRAIT);
  textAlign(CENTER, CENTER);
  textSize(36);
}

void draw()
{
  background(78, 93, 75);
  
  lights();
  
  currentYRotation = currentYRotation + (targetYRotation-currentYRotation) * 0.05;
  
  pushMatrix();
  translate(width/2, height/2);
  rotateY(currentYRotation);
  fill(255, 150, 0);
  box(300,300,300);
  popMatrix();
  
  
  text("Gyroscope: \n" + 
    "x: " + nfp(rotationX, 1, 3) + "\n" +
    "y: " + nfp(rotationY, 1, 3) + "\n" +
    "z: " + nfp(rotationZ, 1, 3), 0, 0, width, height/2);
    
    text("Accelerometer: \n" + 
    "x: " + nfp(accelerometerX, 1, 3) + "\n" +
    "y: " + nfp(accelerometerY, 1, 3) + "\n" +
    "z: " + nfp(accelerometerZ, 1, 3), 0, height/2, width, height/2);

}

@Override
public boolean surfaceTouchEvent(MotionEvent event) {
  // If user touches the screen, trigger vibration notification:
  gNotificationManager.notify(1, gNotification);
  return super.surfaceTouchEvent(event);
}

void onResume() {
  super.onResume();
  // Create our Notification Manager:
  gNotificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
  // Create our Notification that will do the vibration:
  gNotification = new Notification();
  // Set the vibration:
  gNotification.vibrate = gVibrate;
}


void onGyroscopeEvent(float x, float y, float z)
{
  rotationX = x;
  rotationY = y;
  rotationZ = z;
  
  targetYRotation = targetYRotation + rotationY/10.0;
}

void onAccelerometerEvent(float x, float y, float z)
{
  accelerometerX = x;
  accelerometerY = y;
  accelerometerZ = z;
}
