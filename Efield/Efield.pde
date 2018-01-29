import java.util.ArrayList;
ArrayList<Particle> particles;
int increment = 20;


void setup()
{
  size(800,800);
  particles= new ArrayList<Particle>();
  particles.add(new Particle(1,200000, 0, 0));
  particles.add(new Particle(-1,200000, 600, 200));
  particles.add(new Particle(-1,200000, 400, 600));
  particles.add(new Particle(1,200000, width/2, height/2));
  
}

void draw() {
  particles.get(0).position.x = mouseX;
  particles.get(0).position.y = mouseY;
  background(204);
   for(Particle p: particles)
  {
    strokeWeight(15);
    point(p.position.x,p.position.y);
  }
 
    strokeWeight(2);
    for(int i = 0; i < width; i+= increment)
    {
      for(int j = 0; j < width; j+= increment)
      {
        float magX= 0;
        float magY = 0;
        for(Particle p: particles)
       {
         float mag = p.EField(i,j);
         float Direction = p.EFieldDirection(i,j);
         magX += mag*cos(Direction);
         magY += mag*sin(Direction);
       }
        line(i, j, i + magX, j + magY);
      }
    }
}
