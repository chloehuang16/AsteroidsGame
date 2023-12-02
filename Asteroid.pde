class Asteroid extends Floater {
  
  private double rotateSpeed;
  
  public Asteroid() {
    myColor = 100;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = 0;
    myYspeed = 0;
    myXspeed = (Math.random()*4)-2;
    myYspeed = (Math.random()*4)-2;
    myPointDirection = 0;
    corners = 7;        
    xCorners = new int[]{-12,0,12,9,9,0,-9};
    yCorners = new int[]{-6,-15,-12,-3,6,9,9};
    rotateSpeed = (Math.random()*8)-4;
  }
  
  public void move() {
    turn(rotateSpeed);
    super.move();
  }
  
  public double getCenterX() {
    return myCenterX;
  }
  
  public double getCenterY() {
    return myCenterY;
  }
}
