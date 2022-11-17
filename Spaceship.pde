class Spaceship extends Floater  
{
  Spaceship() {
    corners = 4;
    xCorners =  new int[] {-10,20,-11,-7};
    yCorners = new int[] {-10,0,11,0};
    myColor = color(230);
    myCenterX = myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*(360);
  }
  
  public void hyperspace() {
    myPointDirection = Math.random()*(360);    
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = 0;
    myYspeed = 0;
  }
}
