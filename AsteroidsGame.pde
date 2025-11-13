Spaceship bob;
Star [] dave = new Star[150];
boolean isAccelerating = false;
boolean isRotatingLeft = false;
boolean isRotatingRight = false;

public void setup() 
{
  size(500,500);
  background(0);
  bob = new Spaceship();
  for (int i = 0; i < dave.length; i++)
  dave[i] = new Star();
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
