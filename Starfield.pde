Particle [] particles; //your code here

void setup()
{
  particles = new Particle[400];
  for(int i =0; i <particles.length ; i++)
  particles[i] = new NormalParticle();
	size(500,500);//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double dX, dY, dTheta, dSpeed;//your code here

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
interface Particle
{
  public void show();
  public void move();
}