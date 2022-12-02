class Asteroid extends Floater {
  private double myRotationSpeed;
  
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
