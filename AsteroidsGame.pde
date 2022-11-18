Spaceship rocket;
Star[] twinkle;

public void setup() 
{
  size(500,500);
  background(0);
  rocket = new Spaceship();
  twinkle = new Star[200];
  for(int i = 0; i < twinkle.length; i++) {
    twinkle[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < twinkle.length; i++) {
    twinkle[i].show();
  }
  rocket.show();
  rocket.move();
}

public void keyPressed() {
  if(key == 'w') {
    rocket.accelerate(4);
  }
  
  if(key == 's') {
    rocket.accelerate(-2);
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
