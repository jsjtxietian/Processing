
class Walker 
{
  int x, y;

  Walker() 
  {
    x = width/2;
    y = height/2;
  }

  void render() 
  {
    stroke(0);
    strokeWeight(2);
    point(x, y);
  }

  
  void step() 
  {

    float r = random(1);
   
    
    if (r < 0.5) 
    {    
      int xdir = (mouseX-x);
      int ydir = (mouseY-y);
      if (xdir != 0) 
      {
        xdir /= abs(xdir);
      } 
      if (ydir != 0) 
      {
        ydir /= abs(ydir);
      }
      x += xdir;
      y += ydir;
    } 
    else 
    {
      int xdir = int(random(-2, 2));
      int ydir = int(random(-2, 2));
      println(xdir);
      x += xdir;
      y += ydir;
    }

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}