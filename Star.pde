class Star //note that this class does NOT extend Floater
{
  protected float x;
  protected float y;
  protected float radius1;
  protected float radius2;
  protected int npoints;
  protected int a;
  protected int b;
  protected int c;
  protected float angle;
  protected float halfAngle;
  
  Star(){
  x = (int)(Math.random()*500);
  y = (int)(Math.random()*500);
  radius1 = 2;
  radius2 = 6;
  npoints = 5;
  angle = TWO_PI / npoints;
  halfAngle = angle/2.0;
  a = (int)(Math.random()*205)+50;
  b = (int)(Math.random()*50);
  c = (int)(Math.random()*205)+50;
  }
  
  public void show() {
  beginShape();
  noStroke();
  fill(a, b, c);
  for (float i = 0; i < TWO_PI; i += angle) {
    float sx = x + cos(i) * radius2;
    float sy = y + sin(i) * radius2;
    vertex(sx, sy);
    sx = x + cos(i+halfAngle) * radius1;
    sy = y + sin(i+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
}
