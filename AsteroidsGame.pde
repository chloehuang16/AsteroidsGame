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
  for (int i =0; i<bar.length;i++){
    bar[i].show();
  }
  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();
    float d = dist((float)bob.getMyCenterX(), (float)bob.getMyCenterY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());

    if (d < 10) {
      asteroids.remove(i);
    }
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
