Spaceship bob;
Star[] bar;
ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bow;

void setup() {
  size(500, 500);
  bob = new Spaceship();
  bob.myCenterX = width / 2;
  bob.myCenterY = height / 2;

  bar = new Star[400];
  asteroids = new ArrayList<Asteroid>();
  bow = new ArrayList<Bullet>();

  for (int i = 0; i < bar.length; i++) {
    bar[i] = new Star();
  }

  for (int i = 0; i < 15; i++) {
    asteroids.add(new Asteroid());
  }
}

void keyPressed() {
  if (key == 'h') {
    bob.hyperspace();
  } else if (key == 'a') {
    bob.turn(-20);
  } else if (key == 'd') {
    bob.turn(20);
  } else if (key == 'w') {
    bob.accelerate(0.5);
  } else if (key == 's') {
    bob.accelerate(-0.5);
  } else if (key == 'f') {
    bow.add(new Bullet(bob));
  }
}

void draw() {
  background(0);
  bob.show();
  bob.move();

  for (int i = 0; i < bar.length; i++) {
    bar[i].show();
  }

  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();
    float d = dist((float) bob.myCenterX, (float) bob.myCenterY, (float) asteroids.get(i).getX(), (float) asteroids.get(i).getY());

    if (d < 10) {
      asteroids.remove(i);
    }

    for (int j = 0; j < bow.size(); j++) {
      double distance2 = dist((float) bow.get(j).getCenterX(), (float) bow.get(j).getCenterY(), (float) asteroids.get(i).getX(), (float) asteroids.get(i).getY());
      if (distance2 < 20) {
        asteroids.remove(i);
        bow.remove(j);
        break;
      }
    }
  }

  for (int i = 0; i < bow.size(); i++) {
    bow.get(i).move();
    bow.get(i).show();
  }
}
