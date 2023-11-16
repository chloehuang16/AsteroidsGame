class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  private int starColor;
  Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    starColor = color(random(255), random(255), random(255));
  }
  
  void show(){
    fill(starColor);
    ellipse(myX, myY, 4,4);
  }
}
