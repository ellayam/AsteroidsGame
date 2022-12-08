class Asteroid extends Floater {
  protected double myRotationSpeed;
  
  public Asteroid() {
    corners = 7;
    xCorners = new int[] {14,15,2,-8,-18,-15,-10};
    yCorners = new int[] {14,-10,-16,-4,0,5,10};
    myColor = color(110);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (Math.random()*3) - 1;
    myYspeed = (Math.random()*3) - 1;
    myPointDirection = 0;
    myRotationSpeed = (Math.random()*8) - 4;
  }
  
  public void move() {
    turn(myRotationSpeed);
    super.move();
  }
  
  public double getAsteroidX() {
    return myCenterX;
  }

  public double getAsteroidY() {
    return myCenterY;
  }
}

class SmallAsteroid extends Asteroid {
  SmallAsteroid(Asteroid theAsteroid) {
    corners = 5;
    xCorners = new int[] {6,7,3,-5,-6};
    yCorners = new int[] {6,-4,-5,-3,0}; 
    myCenterX = theAsteroid.myCenterX;
    myCenterY = theAsteroid.myCenterY;
    myXspeed = (Math.random()*3) - 1;
    myYspeed = (Math.random()*3) - 1;
    myPointDirection = Math.random()*360;
    myRotationSpeed = (Math.random()*8) - 4;
  }
  
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
