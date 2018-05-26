boolean launched = false;
int score=0;
void setup(){
size(500,500);
}
int foodX=100;
  int foodY=20;
int fishX= 500;
void draw(){
  background(141,233,237);
  drawFish();
  checkCatch(foodX, foodY);
  fill(80, 190, 240);
  fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
  noStroke();
  ellipse(foodX, foodY, 90, 100);
  foodY=(foodY+score+1);
  if(boolean launched== true)
  if(foodY>=500){
  foodY=0;
    foodY=(foodY+1);
    foodX = (int) random(width-20);
    score--;
  }
  if(score==15){
textSize(20);
text("You win,good job!",250,250);
fill(0,0,0);
foodY=-9000;
}
}  

void checkCatch(int x, int y){
     if(x > fishX && x < fishX+70){
          if(y > mouseY-17 && y < mouseY+30){
               score++;
               foodY = 20; //if the food was eaten, make more food fall from the top
               foodX = (int) random(width-20);
          }
     }
     else if (foodY > height && score > 0){
          score--;
     }
}
void drawFish(){
     noStroke();
     fill(255,255,255);
     ellipse(fishX-17,mouseY-17,20,20); //back side eye
     fill(255,200,88);
     ellipse(fishX,mouseY,90+score,50+score*3); //body
     triangle(fishX+30,mouseY,fishX+70,mouseY+30,fishX+70,mouseY-30); //tail
     stroke(0);
     triangle(fishX,mouseY,fishX+15,mouseY+10,fishX+15,mouseY-10); //side fin
     noStroke();
     fill(255,200,88);
     ellipse(fishX,mouseY,15,15); //side fin cover
     noStroke();
     fill(255,255,255);
     ellipse(fishX-25,mouseY-15,20,20); //front eye
     fill(0,0,0);
     ellipse(fishX-25,mouseY-15,5,5); //pupil
     fill(141,233,237);
     ellipse(fishX-45,mouseY,25,25); //mouth
}