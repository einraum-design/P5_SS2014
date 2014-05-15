XML xml;

void setup(){
  xml = loadXML("location.xml");
  
  XML[] children = xml.getChildren("result");
  
  println(children.length);
  /*for(int i = 0; i < children.length; i++){
    children.get
  }*/
  
}
