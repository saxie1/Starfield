Particle [] dots;
void setup()
{
  size(400,400);
  background(0);
  dots = new Particle [200];
  for(int i=0;i<dots.length;i++)
  {
    dots[i]=new NormalParticle();
  }
  dots[0]=new OddballParticle();
  dots[1]=new JumboParticle();
}
void draw()
{
  background(0);
  for(int i=0;i<dots.length;i++)
  {
    dots[i].show();
    dots[i].move();
  }
}
class NormalParticle implements Particle
{
  int myColor;
  double myX,myY,myAngle,mySpeed;

  NormalParticle()
  {
    myX=200;
    myY=200;
    myAngle=Math.random()*(2*Math.PI);
    mySpeed=(Math.random()*4+1);
    myColor=255;
  }
  public void move()
  {
    myX=(myX+((Math.cos(myAngle))*mySpeed));
    myY=(myY+((Math.sin(myAngle))*mySpeed));
  }
  public void show()
  {
    ellipse((float)myX,(float)myY,10,10);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  int myColor;
  double myX,myY,myAngle,mySpeed;

  OddballParticle()
  {
    myX=200;
    myY=200;
    myAngle=Math.random()*(2*Math.PI);
    mySpeed=(Math.random()*10+1);
    myColor=255;
  }
  public void move()
  {
    myX=(myX+(Math.cos(Math.random()*(4*Math.PI))));
    myY=(myY+(Math.sin(Math.random()*(4*Math.PI))));
  }
  public void show()
  {
    fill(255,0,0);
    rect((float)myX,(float)myY,15,15);
    fill(255);
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
    ellipse((float)myX,(float)myY,30,30);
  }
}
