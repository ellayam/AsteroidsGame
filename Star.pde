class Star
{
   private int myX, myY, mySize, starColor;
  
   public Star() {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     mySize = (int)(Math.random()*5)+1;
     starColor = color((int)(Math.random()*170)+50);
   }
   
   public void show() {
     noStroke();
     fill(starColor);
     ellipse(myX,myY,mySize,mySize);
   }
}
