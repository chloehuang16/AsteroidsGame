class Asteroid extends Floater
{
  public double rotSpeed; 
  public Asteroid(){
    //make asteroids
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCeneterY;
  }
}
