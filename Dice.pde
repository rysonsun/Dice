Die bob;    
    void setup()
  {
      size(500,600);
      textAlign(CENTER);
      noLoop();
  }
void draw()
{
  background(200);
  int nums = 0;
  for (int x = 50; x < 500; x = x + 50){
    for (int y= 50; y<500; y= y+50) {
    bob = new Die(x,y);
    bob.roll();
    bob.show();
    nums = nums + bob.Num;
     }
    }
     text(" Total: " + nums, 250, 550); 
   }
   void mousePressed()
   {
     redraw();
   }
   
class Die
{
  int Num, myX, myY;
  Die(int x, int y)
  {
  myX=x;
  myY=y;
  }
void roll()
{
 Num = ((int)(Math.random()*6+1));
}
void show()
{
  //noStroke();
  fill(50);
  rect(myX, myY, 50, 50, 7);
  fill(0);
  if (Num == 1){ 
  ellipse( myX+ 25, myY+25, 20, 20);
  }
  else if (Num == 2){ 
  ellipse( myX+ 15, myY+25, 15, 15); 
  ellipse( myX+ 35, myY+25, 15, 15);
  }
  else if (Num == 3){ 
  ellipse( myX+12, myY+10, 15, 15);
  ellipse( myX+ 25, myY+25, 15, 15);
  ellipse( myX+ 40, myY+40, 15, 15);
  }
  else if (Num == 4){ 
  ellipse( myX+ 15, myY+15, 15, 15);
  ellipse( myX+ 35, myY+15, 15, 15);
  ellipse( myX+ 15, myY+35, 15, 15);
  ellipse( myX+ 35, myY+35, 15, 15);
  }
  else if (Num == 5){
  ellipse( myX+ 10, myY+10, 15, 15);
  ellipse( myX+ 40, myY+10, 15, 15);
  ellipse( myX+ 10, myY+40, 15, 15);
  ellipse( myX+ 40, myY+40, 15, 15);
  ellipse( myX+ 25, myY+25, 15, 15);
  }
  else{
  ellipse( myX+ 15, myY+10, 12.5, 12.5);
  ellipse( myX+ 15, myY+25, 12.5, 12.5);
  ellipse( myX+ 15, myY+40, 12.5, 12.5);
  ellipse( myX+ 35, myY+10, 12.5, 12.5);
  ellipse( myX+ 35, myY+25, 12.5, 12.5);
  ellipse( myX+ 35, myY+40, 12.5, 12.5);
  }
  }
}
