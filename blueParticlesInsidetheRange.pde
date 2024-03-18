Particle[] particles = new Particle[4000];
void setup(){
  size(600,600);
  smooth();
  noStroke();
  
  for (int i = 0; i<4000; i++){
    particles[i] = new Particle();
  }}

void draw(){
  background(35,27,107);
  translate(width/2, height/2);
  for(Particle p: particles){
    p.move();
    p.show();
  }}

class Particle{
  float x, y, size, directionX, directionY;
  //constructor
  public Particle(){
    this.size = random(0.5, 4);
    this.directionX = random(-1,1);
    this.directionY = random(-1,1);
  }

  public void move(){
    if(dist(this.x, this.y, 0,0)>250){
      //random target position
      PVector position = new PVector(this.x, this.y);
      PVector target = new PVector(random(-250,250), random(-250, 250));
      
      PVector direction = PVector.sub(target, position);
      direction.div(600);
      directionX = direction.x;
      directionY = direction.y;
    }
  
    this.x += directionX;
    this.y += directionY;}
    
   public void show(){
     fill(0,190,255,this.size*30);
     
     ellipse(this.x, this.y, this.size, this.size);}
}
  
  
