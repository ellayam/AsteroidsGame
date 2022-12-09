Spaceship rocket = new Spaceship();
Star[] twinkle = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
ArrayList <SmallAsteroid> broken = new ArrayList <SmallAsteroid>();

public void setup() 
{
  size(500,500);
  background(0);
  
  for(int i = 0; i < twinkle.length; i++) {
    twinkle[i] = new Star();
  }
  
  for(int i = 0; i < 20; i++) {
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
    }
  }
  
  for(int i = 0; i < pew.size(); i++) {
    pew.get(i).move();
    pew.get(i).show();
    for(int j = 0; j < asteroids.size(); j++) {
      if(dist((int)asteroids.get(j).getAsteroidX(),(int)asteroids.get(j).getAsteroidY(),(int)pew.get(i).getBulletX(),(int)pew.get(i).getBulletY()) < 20) {
        score++;
        for(int k = 0; k < 4; k++) {
          broken.add(new SmallAsteroid(asteroids.get(j)));
        }
        asteroids.remove(j);
        pew.remove(i);
        break;
      }
    }
  }
  
  for(int i = 0; i < broken.size(); i++) {
    broken.get(i).move();
    broken.get(i).show();
  }
  
  rocket.move();
  rocket.show();
  
  if(score > 14) {
    fill(255);
    textSize(60);
    text("YOU WIN!",115,270);
  }
  
  fill(255);
  textSize(20);
  text("Your Score: " + score,20,20,200,200);
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
  
  if(key == ' ') {
    pew.add(new Bullet(rocket));
  }
  
  if(key == '1') {
    for(int i = 0; i < 8; i++) {
      asteroids.add(new Asteroid());
    }
  }
}
