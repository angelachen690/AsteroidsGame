class Asteroid extends Floater{
  private double rotationSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -12;
    yCorners[0] = -21;
    xCorners[1] = 8;
    yCorners[1] = -19;
    xCorners[2] = 15;
    yCorners[2] = 0;
    xCorners[3] = 7;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -20;
    yCorners[5] = 0;
     myColor = color(103,82,88);
     myCenterX = (int)(Math.random()*500);
     myCenterY = (int)(Math.random()*500);
     myXspeed = (int)(Math.random()*2)+1;
     myYspeed = (int)(Math.random()*2)+1;
     myPointDirection = 0;
     rotationSpeed = (Math.random()*5)-5;
  }
  public void move(){
   turn(rotationSpeed);
   super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
