NormalParticle [] particles; //your code here
int rgb;
void setup()
{
  particles = new NormalParticle[400];
  for(int i =0; i <particles.length ; i++)
    particles[i] = new NormalParticle();
	size(500,500);//your code here
}
void draw()
{
  background(250);
  rgb = (int)(Math.random()*256); //your code here
  stroke(rgb,rgb,rgb);
  for(int i =0; i <particles.length ; i++)
  {
    particles[i].move();
    particles[i].show();
  }
}
class NormalParticle
{
	double dX, dY, dTheta, dSpeed;//your code here
  NormalParticle()
  {
    dX = 250;
    dY = 250;
    dTheta = Math.random()*2*Math.PI;
    dSpeed = Math.random()*10;
  }
  void move()
  {
    dX = dX + dSpeed*Math.cos(dTheta);
    dY = dY + dSpeed*Math.sin(dTheta);
  }
  void show()
  {
    ellipse((float)dX,(float)dY,1,1);
  }
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}