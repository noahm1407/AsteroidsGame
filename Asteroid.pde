
class Asteroid extends Floater {
private double rotSpeed;

Asteroid(){
  rotSpeed = Math.random()*3;
    corners = 9;
    xCorners = new int[]{-11,-7,7,9,11,13,7,-7,-11};
    yCorners = new int[]{-7,-9,-9,-8,-4,7,9,9,7};
    myCenterX = Math.random()*700;
    myColor = 255;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*2;
    myYspeed = Math.random()*2;
    myPointDirection = 0.0;
}

public void move(){
  turn(rotSpeed);
  super.move();
}
public void show(){
fill(57,57,57);   
stroke(255);
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

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);

}

public double getX(){
  return myCenterX;}
public double getY(){
   return myCenterY;}

}
