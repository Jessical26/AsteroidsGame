class Asteroid extends Floater
{
  protected int myX, myY;
  public void setX(int x){myCenterX = x;}  
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
  
  private int myRotationSpeed;
  public Asteroid()
  {
    if(Math.random() <= 0.5)
    myRotationSpeed = -1;
    else
    myRotationSpeed = 1; 
    
    corners = 6;
    int[] xS = {8,-5,7 ,6,-8,-10};
    int[] yS = {2,-4,8,-9,10,-12};
    xCorners = xS;
    yCorners = yS;
    myColor = color(80,80,80);
    
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);

  }
  
  public void move()
  {  
     turn(myRotationSpeed);
      
  }

}
