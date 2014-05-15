import com.temboo.core.*;
import com.temboo.Library.Google.Geocoding.*;

import controlP5.*;

import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;

UnfoldingMap map;
Location locationInput = null;


// Create a session using your Temboo account application details
TembooSession session = new TembooSession("einraumdesign", "myFirstApp", "254993a9e35549309d9f4644262e29ae");

void setup() {
  size(800, 600);
  ControlP5 cp5;
  cp5 = new ControlP5(this);
  PFont font = createFont("arial", 20);

  cp5.addTextfield("inputTF")
    .setPosition(20, 100)
      .setSize(200, 40)
        .setFont(font)
          .setFocus(true)
            .setColor(color(255))
              ;

  map = new UnfoldingMap(this);
  map.setTweening(true);
  map.zoomToLevel(3);
  map.panTo(new Location(40f, 8f));
  MapUtils.createDefaultEventDispatcher(this, map);
}

void draw() {
  background(255);
  map.draw();
  
  if(locationInput != null){
    ScreenPosition posInput = map.getScreenPosition(locationInput);
    fill(0, 200, 0, 100);
    ellipse(posInput.x, posInput.y, 20, 20);
  }
}

public void inputTF(String theText) {
  // automatically receives results from controller input
  println("a textfield event for controller 'input' : "+theText);

  // Run the GeocodeByAddress Choreo function
  runGeocodeByAddressChoreo(theText);
}

void runGeocodeByAddressChoreo(String address) {
  // Create the Choreo object using your Temboo session
  GeocodeByAddress geocodeByAddressChoreo = new GeocodeByAddress(session);

  // Set inputs
  geocodeByAddressChoreo.setAddress(address);

  // Run the Choreo and store the results
  GeocodeByAddressResultSet geocodeByAddressResults = geocodeByAddressChoreo.run();

  // Print results
  println(geocodeByAddressResults.getResponse());
  println(geocodeByAddressResults.getLatitude());
  println(geocodeByAddressResults.getLongitude());

  locationInput = new Location(float(geocodeByAddressResults.getLatitude()), float(geocodeByAddressResults.getLongitude()));

  
  map.panTo(locationInput);
}

