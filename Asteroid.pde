class Asteroid extends Floater
{
  private double rotSpeed; 
  public Asteroid(){
    corners = 7;
    xCorners = new int[]{-12,0,12,9,9,0,-9};
    yCorners = new int[]{-6,-15,-12,-3,6,9,9};
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;   
    myXspeed = (Math.random()*5)-3;
    myYspeed = (Math.random()*5)-3; 
    myColor = #4B4242;
  }
  
   public void move(){
     turn(rotSpeed);
     myCenterX += myXspeed;
     myCenterY += myYspeed;
     if(myCenterX >width)
     {     
        myCenterX = 0;    
     }    
     else if (myCenterX<0)
     {     
       myCenterX = width;    
     }    
     if(myCenterY >height)
     {    
      myCenterY = 0;    
     } 
    
     else if (myCenterY < 0)
     {     
       myCenterY = height;    
     }   
   }
  
  
    public double getX(){
      return myCenterX;
    }
  
    public double getY(){
      return myCenterY;
    }
}
