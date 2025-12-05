class Spaceship extends Floater  
{   
   Spaceship(){
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myCenterX = 400.0;
    myColor = 255;
    myCenterY = 300.0;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0.0;
  }
  
  public double getX(){
  return myCenterX;}
  public double getY(){
    return myCenterY;}
  public double getDirection(){
    return myPointDirection;}
  public double getXspeed(){
    return myXspeed;}
  public double getYspeed(){
    return myYspeed;}
  public void setX(double x){
    myCenterX = x;}
  public void setY(double y){
    myCenterY = y;}
  public void setPointDirection(double direction){
    myPointDirection = direction;}
  
  public void decelerate(){
    myXspeed *= 0.85;
    myYspeed *= 0.85;
  }
  
  public void hyperspace(){
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*600;
    myPointDirection = Math.random()*180;
    myXspeed = 0;
    myYspeed = 0;
  }
  
public void show (boolean jets)  //Draws the floater at the current position  
  {         
    fill(myColor);   
    stroke(myColor);    
    strokeWeight(1);
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

if(jets)
    {
      strokeWeight(2);
      line(-12,-4,-18,-6);
      line(-8,0,-18,0);
      line(-12,4,-18,6);
    }
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }      
   
}
