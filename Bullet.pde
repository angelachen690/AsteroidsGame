class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getSpeedX();
    myYspeed = theShip.getSpeedY();
    myPointDirection = theShip.getPD();
    accelerate(4);
  }
  public void show() {
    fill(0, 0, 255);
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
  
 
  public void move ()
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
 
  }  
  public float getX(){
   return(float) myCenterX; 
  }
  
  public float getY(){
   return (float) myCenterY; 
  }
}
