class Star
{
   private int myX, myY, mySize, starColor;
  
   public Star() {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     mySize = (int)(Math.random()*4)+1;
     starColor = color((int)(Math.random()*140)+80);
   }
   
   public void show() {
     noStroke();
     fill(starColor);
     ellipse(myX,myY,mySize,mySize);
   }
}
