//your variable declarations here
Spaceship ship;
Star [] nightSky;
Asteroid asteroid = new Asteroid();
public void setup() 
{
  //your code here
  size(500,500);
  ship = new Spaceship();
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
      ship.turn(-5);
    }
    if (key == '6')
    {
      ship.turn(5);
    }
    if (key == '8')
    {
      ship.accelerate(1);
    }
    if (key == ' ')
    {
      ship.setX((int)(Math.random()*500));
      ship.setY((int)(Math.random()*500));
      ship.setPointDirection((int)(Math.random()*360));
      ship.setDirectionX(0);
      ship.setDirectionY(0);
    }
  }

public void draw() 
{
  //your code here
  background(0);
  ship.show();
  ship.move();
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  asteroid.show();
  asteroid.move();
}
