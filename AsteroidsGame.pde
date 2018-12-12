//your variable declarations here
Spaceship ship;
Star [] nightSky;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullet = new ArrayList <Bullet>();

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
    if(key == 'a')
    {
      ship.turn(-5);
    }
    if (key == 'd')
    {
      ship.turn(5);
    }
    if (key == 'w')
    {
      ship.accelerate(1);
    }
    if (key == 's')
    {
      ship.setX((int)(Math.random()*500));
      ship.setY((int)(Math.random()*500));
      ship.setPointDirection((int)(Math.random()*360));
      ship.setDirectionX(0);
      ship.setDirectionY(0);
    }
    if (key == ' '){
    bullet.add(new Bullet(ship));
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
  for (int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).move();
    asteroids.get(i).show();
    float d = dist(ship.getX(), ship.getY(), asteroids.get(i).getX(), asteroids.get(i).getY());
    if (d < 10)
      asteroids.remove(i);
  }
  
  for (int b = 0; b < bullet.size(); b++){
      for(int a = 0; a < asteroids.size(); a++){
      float d = dist(bullet.get(b).getX(), bullet.get(b).getY(), asteroids.get(a).getX(), asteroids.get(a).getY());
      if (d < 15){
        asteroids.remove(a);
        bullet.remove(b);
        break;
      }
      }
  }   
  for (int i = 0; i < bullet.size(); i++){
    bullet.get(i).show();
    bullet.get(i).move();
  }

}
