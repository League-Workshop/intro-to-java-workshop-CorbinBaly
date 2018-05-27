
int x=187;
int y=264;
int acceleration=5;
PImage catPic;
void setup(){
catPic = loadImage("cat.jpg");
catPic.resize(width, height);
background(catPic);
size(700,700);
}
void draw(){
 ellipse(x,y,70,70);
 fill(255,0,0);
  ellipse(374,298,70,70);
  if(mousePressed){
println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");

}
}
void keyPressed(){ 
noStroke();
x++;
y++;
}