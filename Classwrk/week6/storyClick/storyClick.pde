//state = screen
//text to display for each screen (state representation)
//options to choose for each screen (state transitions)

//string for each text
//string for each option - corresponds to keyPress


int state = 0;
String [] descriptions ={
  "state 0",
  "state 1",
  "state 2",
};


String [][] options ={
  {"go to state 1", "option2"}
  {"option1", "option2"}
  {"option1", "option2"}
 
};

void setup () {
size (600,600);
}

void draw (){
background (255);
textSize (40);
fill(0);
text (descriptions [state], 40,40, 450, 300);

textSize (24);
int i =0;
for (String option: options[state]){
  text(option, 40, 450 + i * 50);
  i++;
  }
}

void keyPressed () {
if (keyCode == 49) {
    state = optionTargets[state][0];
}
if (keyCode == 50) {
    state = optionTargets[state][1];
}

for (int i = 0; i < optionTargets [state].length; i++){
  if (keyCode - 49 == i) {
    state = optionsTargets[state][i];
  }
  }
}