class Bullet extends Floater{
  Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getDirection();
    accelerate(6);
  }
  public double getX(){
  return myCenterX;}
  public double getY(){
   return myCenterY;}
  public void show(){
  noStroke();
  fill(86,250,136);
  ellipse((float)myCenterX, (float)myCenterY, 6, 6);
  }
}
