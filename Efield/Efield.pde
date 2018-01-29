void setup()
{
  size(500,500);
  
}



void draw() {
  Particle charge1 = new Particle(1, 100000, mouseX, mouseY);
  background(204);
  strokeWeight(15);
  point(mouseX,mouseY);
  
  strokeWeight(2);
  for(int i = 0; i < width; i+= 20){
    for(int j = 0; j < width; j+= 20){
      line(i ,j, i + charge1.EField(i,j)*cos(charge1.EFieldDirection(i,j)) , j+ charge1.EField(i,j)*sin(charge1.EFieldDirection(i,j)));
    }
  }
}