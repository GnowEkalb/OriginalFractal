double fromEdge = 0.4641016151;
double fromCenter = 1-0.4641016151;
double sizeChange = 1/(1+(2/Math.sqrt(3)));

public void setup()
{
  background(0);
  size(800,800);
}

public void draw()
{
  fill(0);
  rect(0,0,800,800);
  noFill();
  strokeWeight(0.5);
  stroke(250);
  fractal(400,400,(int)(2*dist(400,400,mouseX,mouseY)));
}

public void fractal(int x, int y, int size) 
{
  if(size <= 20)
    ellipse(x,y,size,size);
  else
 {
    ellipse(x,y,size,size);
    fractal(x,(int)(y+size/2*fromCenter),(int)(size*sizeChange));
    fractal((int)(x+size/2*fromCenter*Math.cos(PI/6)),(int)(y-size/2*fromCenter/2),(int)(size*sizeChange));
    fractal((int)(x-size/2*fromCenter*Math.cos(PI/6)),(int)(y-size/2*fromCenter/2),(int)(size*sizeChange));
    
    fractal(x,(int)(y-size/2*fromCenter),(int)(size*sizeChange));
    fractal((int)(x+size/2*fromCenter*Math.cos(PI/6)),(int)(y+size/2*fromCenter/2),(int)(size*sizeChange));
    fractal((int)(x-size/2*fromCenter*Math.cos(PI/6)),(int)(y+size/2*fromCenter/2),(int)(size*sizeChange));

 }
}
