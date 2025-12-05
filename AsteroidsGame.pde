Spaceship bob;
Star [] dave = new Star[200];
boolean isAccelerating = false;
boolean isRotatingLeft = false;
boolean isRotatingRight = false;
boolean beamShowing = false;
ArrayList <Asteroid> george;
int asteroidnum = 20;
ArrayList <Bullet> fred = new ArrayList <Bullet>();
int health = 100;
int score = 0;

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
  
  fill(255);
  textSize(20);
  text("Health: " + health + "%", 10,30);
  text("Score: " + score, 10,50);
  text("Asteroids Left: " + asteroidnum, 10, 70);
  if(health == 0){
  textSize(50);
  text("Game Over, Press R to Restart", 50,300);
bob.setX(100);
bob.setY(400);
}
if (asteroidnum == 0 && health > 0)
text("You Win! Press R to Reset",300,300);
if(score == 200 && health == 100){
textSize(30);
text("Perfect Round!",325,400);
}
if(health > 0){
for (int i = george.size() - 1; i >= 0; i--) {
    george.get(i).show();
    george.get(i).move();
    float d = dist((int)george.get(i).getX(), (int)george.get(i).getY(), (int)bob.getX(), (int)bob.getY());
    if (d < 20) {
        george.remove(i);
        asteroidnum--;
        health-=10;
    }
}


  for(int i = 0; i < fred.size(); i++){
  fred.get(i).show();
  fred.get(i).move();
  }
  
for (int i = george.size() - 1; i >= 0; i--) {
    for (int j = fred.size() - 1; j >= 0; j--) {
        float d = dist((int)george.get(i).getX(), (int)george.get(i).getY(), (int)fred.get(j).getX(), (int)fred.get(j).getY());
        if (d < 20) {
            fred.remove(j);
            george.remove(i);
            asteroidnum--;
            score+=10;
            break;
        } else if (fred.get(j).getX() > 795 || fred.get(j).getY() > 595 || fred.get(j).getX() < 5 || fred.get(j).getY() < 5)
            fred.remove(j);
    }
    }
for (int i = 0; i < fred.size(); i++)
if (fred.get(i).getX() > 795 || fred.get(i).getY() > 595 || fred.get(i).getX() < 5 || fred.get(i).getY() < 5){
fred.remove(i);
i--;}
}
}


public void keyPressed(){
if (health > 0){
  
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
if(key == ' ')
fred.add(new Bullet(bob));
}

if(key == 'r'){
asteroidnum = 20;
setup();
for (int i = 0; i < fred.size(); i++)
fred.remove(i);
health = 100;
score = 0;}
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
