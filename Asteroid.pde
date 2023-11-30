class Asteroid extends Floater
{
  public double rotSpeed; 
  public Asteroid(){
    corners = 8;
    xCorners = new int[]{4,4,8,5,2,0,-2,-3};
    yCorners = new int[]{-1,-5,-2,1,2,4,2,-2};
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}
