Spaceship bob;
Star [] dave = new Star[200];
boolean isAccelerating = false;
boolean isRotatingLeft = false;
boolean isRotatingRight = false;
ArrayList <Asteroid> george;
int asteroidnum = 20;

public void setup() 
{
  size(800,600);
  background(0);
  bob = new Spaceship();
  george = new ArrayList <Asteroid>();
  for (int i = 0; i < dave.length; i++)
  dave[i] = new Star();
  for (int i = 0; i < asteroidnum; i++)
  george.add(new Asteroid());
}

public void draw() 
{
  background(0);
  bob.show(isAccelerating);
  bob.move();
  for (int i = 0; i < dave.length; i++)
  dave[i].show();
  if (isAccelerating == true)
  bob.accelerate(.1);
  if (isRotatingLeft == true)
  bob.turn(-7);
  if (isRotatingRight == true)
  bob.turn(7);
  for(int i = 0; i < asteroidnum; i++){
  george.get(i).show();
  george.get(i).move();
  
  if ((dist((float)george.get(i).getX(),(float)george.get(i).getY(),(float)bob.getX(),(float)bob.getY())) < 20){
  george.remove(i);
  asteroidnum--;
    }
  
  }
}


public void keyPressed(){
if (key == 'w')
isAccelerating = true;
if(key == 'a')
isRotatingLeft = true;
if(key == 'd')
isRotatingRight = true;
if(key == 'h')
bob.hyperspace();
if(key == 's')
bob.decelerate();
}

public void keyReleased()
{
  if (key == 'w')
  isAccelerating = false;
  if (key == 'a') 
  isRotatingLeft = false;
  if (key == 'd') 
  isRotatingRight = false;
}
