class Particle
{
  public int sign;
  public float charge;
  public PVector position;
  public float maxCharge;
  
  public Particle(int sign, float charge, float x, float y){
    this.sign = sign;
    this.charge = charge;
    this.position = new PVector(x,y); 
    
    this.maxCharge = this.charge* .0005;
  }
  
  public float EField(float x, float y)
  {
    float distanceSquared = (this.position.x-x)*(this.position.x-x) + (this.position.y-y)*(this.position.y-y);
    float mag = this.charge  / distanceSquared * sign;
    if(mag > this.maxCharge)
      mag = this.maxCharge;
      
    return mag;
  }
  
  public float EFieldDirection(float x, float y){
    return atan2(this.position.y - y, this.position.x - x);
  }
}