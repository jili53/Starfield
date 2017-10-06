Particles[] particles;
//your code here
int rgb;
void setup()
{
  particles = new Particles[5000];
  for(int i =0; i <particles.length ; i++)
    particles[i] = new NormalParticle();
	size(500,500);//your code here
}
void draw()
{
  background(142,238,242);
  stroke(98,23,23);
  fill(98,23,23);
  quad(250-50,250,250+50,250,600,500,-100,500);
  rgb = (int)(Math.random()*256); //your code here
  stroke(255,0,0);
  fill(255,0,0);
  for(int i =0; i <particles.length ; i++)
  {
    particles[i].move();
    particles[i].show();
  }
}
class NormalParticle implements Particles
{
	double dX, dY, dTheta, dSpeed;//your code here
  NormalParticle()
  {
    dX = 250;
    dY = 250;
    dTheta = Math.random()*1.2*Math.PI + 0.9*Math.PI;
    dSpeed = Math.random()*10;
  }
  public void move()
  {
    dX = dX + dSpeed*Math.cos(dTheta);
    dY = dY + dSpeed*Math.sin(dTheta);
    if(dX >500 || dX <-500 || dY <-500)
    {
      dX = 250;
      dY = 250;
    }
  }
  public void show()
  {
    ellipse((float)dX,(float)dY,2,2);
  }
}
class OddballParticle implements Particles//uses an interface
{
	int myX,myY; //your code here
  OddballParticle()
  {
    myX = 250;
    myY = 300;
  }
  public void show()
  {
    stroke(0);
    line(myX,myY, myX, myY+60);
    ellipse(myX,myY,60,60);
  }
  public void move()
  {
  }
}
class JumboParticle //uses inheritance
{
	//your code here
}
interface Particles
{
  public void show();
  public void move();
}