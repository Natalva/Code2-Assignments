// state = screen
// text to display for each screen   (state representation)
// options to choose for each screen (state transitions)

// string for each text
// string for each option - corresponds to a keypress
PImage[] images = new PImage[3];
int state = 0;
JSONArray json;

String[] descriptions = {
  "You wake up in Miami and don't know what is going on", 
  "Lets dance!", 
  "go to the beach", 
};

String[][] options = {
  {"you need to dance", "you make a friend"}, 
  {"shake it", ""}, 
  {"steal a motorcycle", "enjoy the dance battle"}
};

int[][] optionTargets = {
  {1, 2}, 
  {0, 0}, 
  {1, 0}, 
};

void setup() {
  size(600, 600);
  imageMode(CENTER);
  images[0] = loadImage("mia.png");
  images[1] = loadImage("dance.jpg");
  images[2] = loadImage("beach.jpg");


  json = new JSONArray();

  for (int i = 0; i < descriptions.length; i++) {
    JSONObject item = new JSONObject();
    
    item.setString("description", descriptions[i]); 
    
    String option = options[i][0] + ", " + options[i][1];
    item.setString("option", option);
    
    String optionTarget = "{" + optionTargets[i][0] + ", " + optionTargets[i][1] + "}";
    item.setString("option target", optionTarget); 
    
    json.setJSONObject(i, item);
  }
  
  saveJSONArray(json, "data/new.json");
}

void draw() {
  background(255); 
  textSize(40); 
  fill(0); 
  text(descriptions[state], 40, 40, 450, 300); 
  images[state].resize(300, 0); 
  image(images[state], width/2, height/2); 

  textSize(24); 
  int i = 0; 
  for (String option : options[state]) {
    text(option, 40, 450 + i * 50); 
    i++;
  }
}

void keyPressed() {
  //state = (state + 1) % descriptions.length;
  //if (keyCode == 49) {
  //  state = optionTargets[state][0];
  //}
  //if (keyCode == 50) {
  //  state = optionTargets[state][1];
  //}
  //if (keyCode == 51) {
  //  state = optionTargets[state][2];
  //}

  for (int i = 0; i < optionTargets[state].length; i++) {
    if (keyCode - 49 == i) {
      state = optionTargets[state][i];
    }
  }
}