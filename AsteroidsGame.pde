//your variable declarations here
Spaceship bob;
Star [] nightSky;
public void setup() 
{
  //your code here
  size(500,500);
  bob = new Spaceship();
  nightSky = new Star[200];
  for(int i = 0; i < nightSky.length; i++)
  {
     nightSky[i] = new Star();
  }
  
}

public void keyPressed()
  {
    if(key == '4')
    {
      bob.turn(-5);
    }
    if (key == '6')
    {
      bob.turn(5);
    }
    if (key == '8')
    {
      bob.accelerate(1);
    }
    if (key == ' ')
    {
      bob.setX((int)(Math.random()*500));
      bob.setY((int)(Math.random()*500));
      bob.setPointDirection((int)(Math.random()*360));
      bob.setDirectionX(0);
      bob.setDirectionY(0);
    }
  }

public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }

}
