class Bullet extends Floater {
  Bullet(Spaceship theShip) {
    myCenterX = theShip.getSpaceshipX();
    myCenterY = theShip.getSpaceshipY();
    myXspeed = theShip.getShipXspeed();
    myYspeed = theShip.getShipXspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
  
  public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  
  public void show() {
    noStroke();
    fill(69,229,(int)(Math.random()*150)+80);
    ellipse((int)myCenterX,(int)myCenterY,6,6);
  }
  
  public double getBulletX() {
    return myCenterX;
  }
  
  public double getBulletY() {
    return myCenterY;
  }
}
