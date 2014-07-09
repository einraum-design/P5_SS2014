XML loadedXml;

void setup() {
  size(400, 300);
  XML myXml = parseXML("<?xml version=\"1.0\"?><xml></xml>"); 

  myXml.addChild("child");
  myXml.addChild("child");

  // add Children 
  myXml.getChild(0).addChild("Peter");
  myXml.getChild(0).addChild("_80");

  myXml.getChild(1).addChild("Klaus");
  myXml.getChild(1).addChild("_15");

  // add Attributes
  myXml.getChild(0).setString("name", "Peter");
  myXml.getChild(0).setFloat("points", random(100));

  myXml.getChild(1).setString("name", "Klaus");
  myXml.getChild(1).setFloat("points", random(100));



  saveXML(myXml, "myXml.xml");



  loadedXml = loadXML("myXml.xml");
}

void draw() {

  for (int i = 0; i<loadedXml.getChildren ().length; i++) {

    XML node = loadedXml.getChild(i);
    fill(0);
    if (node.getName().equals("child")) {
      text(node.getString("name") + " " + node.getFloat("points"), 20, 10 + i*20);
    }
  }
}

