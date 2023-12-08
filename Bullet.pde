class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getMyCenterX();
    myCenterY = bob.getMyCenterY();
    myXspeed = bob.getmyXspeed();
    myYspeed = bob.getmyYspeed();
    myPointDirection = bob.getMyPointDirection();
    accelerate(6.0);
    
  }
  public void show(){
    fill(255,255,0);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  public void move () {           
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }   
  
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
