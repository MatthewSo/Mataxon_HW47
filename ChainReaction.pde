Ball[] balls;
int x;
boolean cl = true;
  void setup(){
    background(0);
    balls = new Ball[25];
    for(int i= 0; i < 25; i++){
      balls[i] = new Ball();
    }
    balls[0].setState(2);
    for(int i = 0;i < 25; i++){
      fill(balls[i].getColor());
      ellipse((float)balls[i].getXcor(), (float)balls[i].getYcor(), (float)balls[i].getRadius(), (float)balls[i].getRadius());
    }
      
  }
  
    void draw(){

        for(int i = 0; i < 25; i++){
          
         fill(0);
        ellipse((float)balls[i].getXcor(), (float)balls[i].getYcor(), (float)balls[i].getRadius(), (float)balls[i].getRadius());
        for (int j = 0; j < 25; j++){
          if(balls[j].getState() == 1|| balls[j].getState() ==3){
            if(balls[i].getState() != 1 && balls[i].getState() != 3){
            if(balls[i].getXcor() + balls[i].getRadius() == balls[j].getXcor() + balls[j].getRadius() || balls[i].getYcor() + balls[i].getRadius() == balls[j].getYcor() + balls[j].getRadius()){
              balls[i].setState(1);
            }
          }
          }
        }
        balls[i].move();
        fill(balls[i].getColor());
        ellipse((float)balls[i].getXcor(), (float)balls[i].getYcor(), (float)balls[i].getRadius(), (float)balls[i].getRadius());
        
          }

          
     // ellipse((float)(Math.random() * 100),(float)( Math.random()* 100), (float)(Math.random() * 10),(float)( Math.random() * 10));
    }
void settings(){
 size(600, 600);
}

void mousePressed(){
  if(cl){
    Ball b = new Ball();
    cl = false;
    b.setState(1);
    b.setXcor(mouseX);
    b.setYcor(mouseY);
    fill(b.getColor());
    ellipse(b.getXcor(), b.getYcor(), (float)b.getRadius(), (float)b.getRadius());
    balls[0] = b;
}
}