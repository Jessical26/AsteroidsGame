
class Star //note that this class does NOT extend Floater
{
  private int myX, myY,mySize,R,G,B;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    mySize = (int)(Math.random()*8);
    R = (int)(Math.random()*250)+100;
    G = (int)(Math.random()*150)+100;
    B = (int)(Math.random()*150)+100;
    
  }
  public void show()
  {
    fill(R,G,B);
    ellipse(myX,myY,mySize,mySize);
    stroke(0);
  }
}
