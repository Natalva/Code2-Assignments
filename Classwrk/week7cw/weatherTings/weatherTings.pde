void setup (){
JSONObject data = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=89ba334eba2ad75feacfaadb5b09d51f");
JSONArray weather = data.getJSONArray("weather");
JSONObject element = weather.getJSONObject(0);
int id = element.getInt ("id");
String main = element.getString("main");
String description =  element.getString("description");
String icon =  element.getString("icon");


size(600,600);
background (255);
fill(0);
textSize(20);
text(id,50,100);
text(main,50,150);
text(description,50,200);
text(icon,50,250);

if (main == "Clouds");{
  
}

}


void draw(){

}