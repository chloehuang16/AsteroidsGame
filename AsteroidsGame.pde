//your variable declarations here
Spaceship bob = new Spaceship();
Star[] bar;
ArrayList <Asteroid> asteroids; 

public void setup() 
{
  size(500,500);
  bob.myCenterX = width/2;
  bob.myCenterY = height/2;
  bar = new Star[400];
  asteroids = new ArrayList <Asteroid>();
  for (int i = 0; i<bar.length;i++){
    bar[i] = new Star();
  }
  for (int i = 0; i < 15; i++) {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < 15; i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    double distance = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY());
    if(distance<23) {
      asteroids.remove(i);
  }
  for (int i =0; i<bar.length;i++){
    bar[i].show();
  }
}

public void keyPressed(){
  if(key == 'h'){
    bob.hyperspace();
  }
  else if (key == 'a'){
    bob.turn(-20);
  }
  else if (key == 'd'){
    bob.turn(20);
  }
  else if (key == 'w'){
    bob.accelerate(0.5);
  }
  else if (key == 's'){
    bob.accelerate(-0.5);
  }
}
