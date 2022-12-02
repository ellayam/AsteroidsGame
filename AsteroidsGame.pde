Spaceship rocket;
Star[] twinkle;
ArrayList <Asteroid> asteroids;

public void setup() 
{
  size(500,500);
  background(0);
  rocket = new Spaceship();
  twinkle = new Star[200];
  for(int i = 0; i < twinkle.length; i++) {
    twinkle[i] = new Star();
  }
  asteroids = new ArrayList <Asteroid>();
  for(int i = 0; i < 15; i++) {
    asteroids.add(new Asteroid());
  }
}

int score = 0;
public void draw() 
{
  background(0);
  for(int i = 0; i < twinkle.length; i++) {
    twinkle[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    if(dist((int)rocket.getSpaceshipX(),(int)rocket.getSpaceshipY(),(int)asteroids.get(i).getAsteroidX(),(int)asteroids.get(i).getAsteroidY()) < 27) {
      asteroids.remove(i);
      score++;
    }
  }
  rocket.move();
  rocket.show();
}

public void keyPressed() {
  if(key == 'w') {
    rocket.accelerate(1.4);
  }
  
  if(key == 's') {
    rocket.accelerate(-0.7);
  }
  
  if(key == 'd') {
    rocket.turn(10);
  }
  
  if(key == 'a') {
    rocket.turn(-10);
  }
  
  if(keyCode == SHIFT) {
    rocket.hyperspace();
  }
}
