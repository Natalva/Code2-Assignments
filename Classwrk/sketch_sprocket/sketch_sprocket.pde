ArrayList<Sprocket> sprockets;

void setup() {
  sprockets = new ArrayList<Sprocket>();
  for(int i =0; i <100; i++){
    Sprocket.newSprocket = new Sprocket();
    sprockets.add(newSprocket);
  }
    //for(int i =0; i <100; i++){
    //  //call the report() method of all sprockets
    //  Sprocket s = sprockets.get(i);
    //  s.report();
  
  //for each
  for (Sprocket s: sprocket) {
    s.report();
    
  }
}

void draw(){

}
class Sprocket {
int num = 0;
Sprocket(){}

void report
}