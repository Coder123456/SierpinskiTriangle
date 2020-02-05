public void setup()
{
 size(700,700);
 background(255);
}
public void draw()
{
sierpinski(0,0,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, double len) 
{
 if(len <= 13)
 {
   fill(x/2, x*4, y/3);
 rect(x, y, (int)len/2 ,(int)len/ 2, 7);
 noStroke();

 rect(600 - x, 600 - y, (int)len/2 ,(int)len/ 2, y);
 rect(600 - x, y, (int)len/2 ,(int)len/ 2, y);
 rect(x, 600 - y, (int)len/2 ,(int)len/ 2, y);
 
 
 } else {
   sierpinski(x,y,(len/1.5));
   sierpinski(((5/2)+y),x,(len/1.4));
   sierpinski(y + (int)(len)/4,x + (int)(len)/2,(len/2));
 }
}
