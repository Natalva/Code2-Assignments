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
  for(int i = 0; i<100; i++){
    rect(i*5, height/2-AirValue[i], 4, AirValue[i]);
  } 
}