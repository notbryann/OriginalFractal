public void setup()
{
  background(0);
  size(750,750);
}
public void draw()
{
  sierpinski(0,700,700);
}
public void lines(int x1, int y1, int x2, int y2, int x3, int y3,int t)
{
  stroke((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
  fill(30,30,40);
  triangle(x1, y1, x2, y2, x3, y3);
  if(t < 19){
    lines(x1+10, y1-5, x2, y2+13, x3-10, y3-5, t+1);
  }
}
public void sierpinski(int x, int y, int len) 
{  
  stroke(255);
  fill(30,30,40);
  if(len <= 150) {
    triangle(x, y, x+len/2, y-len, x+len, y);
    lines(x, y, x+len/2, y-len, x+len, y, 10);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}