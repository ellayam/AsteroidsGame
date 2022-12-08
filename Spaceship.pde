class Spaceship extends Floater  
{
  public Spaceship() {
    corners = 4;
    xCorners =  new int[] {-15,15,-15,-7};
    yCorners = new int[] {-10,0,10,0};
    myColor = color(225);
    myCenterX = myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random() * 360;
  }
  
  public void hyperspace() {
    myPointDirection = Math.random()*(360);    
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = 0;
    myYspeed = 0;
  }
  
  public double getSpaceshipX() {
    return myCenterX;
  }
  
  public double getSpaceshipY() {
    return myCenterY;
  }
  
  public double getShipXspeed() {
    return myXspeed;
  }
  
  public double getShipYspeed() {
    return myYspeed;
  }
  
  public double getPointDirection() {
    return myPointDirection;
  }
}
