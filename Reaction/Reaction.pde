class Ball{
 color c;
 double radius;
 int xspeed;
 int yspeed;
 int xcor;
 int ycor; 
 int state;
 public Ball(){
   c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
   radius = 40;
   xspeed = (int)(Math.random() * 4 + 1);
   yspeed = (int)(Math.random()* 4 + 1);
   xcor = (int)(Math.random()* 580 + 10);
   ycor = (int)(Math.random()* 580 + 10);
   state = 0;
 }
 
 public int getRadius(){
  return (int)radius;
 }
 

 public int getXcor(){
   return xcor;
 }
 public int getYcor(){
   return ycor;
 }
 
 public void setState(int i){
 state = i;
}
public color getColor(){
  return c;
}
public void setXcor(int i){
  xcor = i;
}

public void setYcor(int i){
  ycor = i;
}

public void serRadius(double i){
  radius = i;
}

public int getState(){
  return state;
}


public void grow(){
  if (state == 2){
    return;
  }
  
  if (radius > 100){
    state = 3;
  }
  if (state == 1){
    xspeed = 0;
    yspeed = 0;
    grower();
  }else if(state == 3){
    shrink();
  }
}
 public void grower(){
   if(this.radius < 101){
     radius = radius + 1;
   }
 }
 
 public void shrink(){
   if(this.radius > 1){
     radius = radius - 1;
   }else{
     state = 2;
 }
 }
 
  public void bounce(){
   if(xcor >= 590|| xcor <= 10){
     xspeed = -1 * xspeed;
   }//end if
   if(ycor >= 590 || ycor <= 10){
     yspeed = -1 * yspeed;
   }//end if
 }
 
 public boolean isTouching(Ball x){
   float distance = dist(xcor,ycor, x.getXcor(),x.getYcor());
     return (distance <= (radius/2) + (x.getRadius() / 2));
 }
       
     
 
 public void move(){
   //while(true)
   if(state ==1 || state == 3){
     grow();
   }else if (state == 2){
     radius = 0;
   }
   else{
     
   bounce();
   xcor = xcor + xspeed;
   ycor = ycor + yspeed;
 }}//end move
}//end classs