Spaceship bob; 
Star[] nightSky;
public void setup() 
{
  size(400,400);
  bob = new Spaceship();
  nightSky = new Star[200];
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }

}
public void draw() 
{
  background(0);
  if (keyPressed){
    if(key == 'w'){
      bob.accelerate(0.1);
    }
    else if (key == 'd'){
      bob.turn(10);
    }
    else if (key == 'a'){
      bob.turn(-10);
    }
    else if (key == 's'){
      bob.setSpeed(0);
      bob.hyperspace();
    }
    
  }
  bob.show();
  bob.move();
  
  
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
}
