class Spaceship extends Floater  {   
    public Spaceship(){
      corners = 12;
      xCorners = new int[] {-23, 2, 6, 16, 6, 2, -23, -8,-12,-4,-12,-8};
      yCorners = new int[]{-23, -8,-12, 0, 12,8, 23, 8, 6, 0, -6,-8};
      myColor = 255;

    }
    public void hyperspace(){
      myCenterX = random(width);
      myCenterY = random(height);
      myPointDirection = random(360);
      myXspeed = 0;
      myYspeed = 0;
    }
}
