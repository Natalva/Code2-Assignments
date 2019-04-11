int[] AirValue = new int[100];


void setup (){
  size(600, 240);

  background(153);
  JSONObject AirQuality = loadJSONObject("https://api.openaq.org/v1/measurements?city=Beijing");
  
  //println(AirQuality.size());
  JSONArray data = AirQuality.getJSONArray("results");
  //the size of the array is 100
  
  for (int i = 0; i<100; i++){
    AirValue[i] = data.getJSONObject(i).getInt("value");
    print(AirValue[i]+",");
  }
}


void draw(){
  background(255);
  for(int i = 0; i<100; i++){
    fill(255);
    rect(i*5, height/2-AirValue[i], 4, AirValue[i]);
    //HOVER TEXT BOUNDARY CHECK !!
  if ( mouseX > i*5 && mouseX < 4+i*5 && mouseY> height/2-AirValue[i] && mouseY < AirValue[i] + height/2-AirValue[i]){
    fill(0);
    text (AirValue[i], i*5,height/2+20);
  }
  } 
}