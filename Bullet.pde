class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getCenterX();
    myCenterY = bob.getCenterY();
    myXspeed = bob.getmyXspeed();
    myYspeed = bob.getmyYspeed();
    myPointDirection = bob.getMyPointDirection();
    
  }
  public void show(){
    fill(myColor);
    ellipse(10,10,10,10);
  }
}
