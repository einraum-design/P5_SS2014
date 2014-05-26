String url = "https://api.flickr.com/services/feeds/photos_public.gne?lang=de-de";

ArrayList<PImage> flickrBilder = new ArrayList<PImage>();

void setup(){
  size(800, 600);
  loadData();
}

int imgNo = 0;
void draw(){
  image(flickrBilder.get(imgNo), 0, 0);
}

void mousePressed(){
  imgNo ++;
  if(imgNo >= flickrBilder.size()){
    imgNo = 0;
  }
}

void loadData(){
    XML flickrXML = loadXML(url);
   
   XML[] feedChildren = flickrXML.getChildren();
   
   // alle children von feed
   for(int i = 0; i< feedChildren.length; i++){
     println(i + ": " + feedChildren[i].getName());
     
     // ist child ein "entry"
     if(feedChildren[i].getName().equals("entry")){
       
       // ist ein entry
       XML[] entryChildren = feedChildren[i].getChildren();
       for(int j = 0; j<entryChildren.length; j++){
         
         // suche titel tag
         if(entryChildren[j].getName().equals("title")){
           println("entryName: " + entryChildren[j].getContent());
         }
         
         //suche link tag
         if(entryChildren[j].getName().equals("link") &&  
             entryChildren[j].hasAttribute("type") && 
             entryChildren[j].getString("type").equals("image/jpeg")){
               println(entryChildren[j].getString("href"));
               PImage img = loadImage(entryChildren[j].getString("href"));
               flickrBilder.add(img);
         }
       }
     }
     
   }
    
  
}
