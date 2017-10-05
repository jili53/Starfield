interface Particles
{
  public void show();
  public void move();
}

//NormalParticle [] particles; //your code here
int rgb;
void setup()
{
  Particles[] particles = new Particles[1000];
  for(int i =0; i <particles.length ; i++)
    particles[i] = new NormalParticle();
	size(500,500);//your code here
}
void draw()
{
  background(142,238,242);
  rgb = (int)(Math.random()*256); //your code here
  stroke(rgb,0,0);
  fill(rgb,0,0);
  for(int nI =0; nI <particles.length ; nI++)
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
    dTheta = Math.random()*Math.PI + Math.PI;
    dSpeed = Math.random()*10;
  }
  public void move()
  {
    dX = dX + dSpeed*Math.cos(dTheta);
    dY = dY + dSpeed*Math.sin(dTheta);
  }
  public void show()
  {
    ellipse((float)dX,(float)dY,2,2);
  }
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}