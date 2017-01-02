class Walker
{
  float x,y;
  
  float tx,ty;
  
  Walker()
  {
    tx = 0; 
    ty = 10000;
  }
  
  void step()
  {
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 0.01;
    ty += 0.01;
  }
  
  void display()
  {
    stroke(0);
    
    ellipse(x,y,16,16);
  }
}

Walker w;

void setup()
{
  fullScreen();
  w = new Walker();
  background(255);
}

void draw()
{
  w.step();
  w.display();
}