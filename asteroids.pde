//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup()
{
  size(500, 500);
  for (int i = 0; i< nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.show();
  bob.move();

  // bob.keyPressed();
}
public void keyPressed()
{
  if (key == 'h')
  {
    bob.hyperspace();
  }
  if (key == 'a')
  {
    bob.setPointDirection(bob.myPointDirection-5);
  }
  if (key == 'd')
  {
    bob.setPointDirection(bob.myPointDirection+5);
  }
    if (keyCode == RIGHT)
  {
    bob.accelerate(0.025);
  }
 /*     if (keyCode == LEFT)
  {
    bob.accelerate(-0.05);
  }*/
}
