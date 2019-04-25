float theta;

void setup(){
size(700,800);
}

void draw(){
background(255);
theta = map(mouseX,0,width,0,PI/2);
strokeWeight(1);
translate (width/2, height);

branch(200);{
}
void branch (float len){
line (0,0,0,-len);
}