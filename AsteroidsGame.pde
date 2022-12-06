Spaceship bob; 
Star[] nightSky;
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
public void setup() 
{
  size(400,400);
  bob = new Spaceship();
  nightSky = new Star[200];
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i < 15; i++){
    ast.add(new Asteroid());
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
  
 for (int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < ast.size(); i++){
    ast.get(i).move();
    ast.get(i).show();
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)ast.get(i).getX(),(float)ast.get(i).getY());
    if(d < 20)
      ast.remove(i);
  }
  
  bob.show();
  bob.move();
  
}
