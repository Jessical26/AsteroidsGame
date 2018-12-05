//your variable declarations here
Spaceship ship;
Star [] nightSky;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();

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
  
  for(int nI = 0; nI < 10;nI++)
  {
    asteroids.add(new Asteroid());
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
  for(int nI = 0; nI < asteroids.size(); nI++)
  {
    asteroids.get(nI).show();
    asteroids.get(nI).move();
  }
  for (int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).move();
    asteroids.get(i).show();
    float d = dist(ship.getX(), ship.getY(), asteroids.get(i).getX(), asteroids.get(i).getY());
    if (d < 10)
      asteroids.remove(i);
  }
}
