int x=115;
int y=185;


void setup()
{

  size(600, 500);
  noLoop();
  rectMode(CENTER);
}
Die bob;
void draw()
{
  background(181, 245, 156);
 
  
  stroke(1);
  int sumDots=0;
  for (x=80; x<500; x=x+80) {
    for (y=80; y<450; y=y+80) {

      bob = new Die(x, y);
      bob.show();
      bob.roll();
      if (bob.flipValue<7) {
        sumDots=sumDots+bob.flipValue;
     }//end if

      
        //stroke(181, 245, 156);
        //fill(181, 245, 156);
        //rect(115, 465, 110, 20);
        
      //end text
       
    }//end for 2
  }//end for 1
  fill(0);
  text("Total Dots: "+sumDots, 80, 470);
}//end void draw


int flipRandom=(int)((Math.random()*6)+1);
class Die
{
  double flipRandom;
  int myX, myY, flipValue;

  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  { 
    flipRandom=Math.random();
    if (flipRandom<(.16))
      flipValue=1;
    else if (flipRandom<(.32))
      flipValue=2;
    else if (flipRandom<(.48))
      flipValue=3;
    else if (flipRandom<(.64))
      flipValue=4;
    else if (flipRandom<(.80))
      flipValue=5;
    else {
      flipValue=6;
    }
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 70, 70, 15);
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    if (flipValue==1) {
      ellipse(myX, myY, 10, 10);
    }//x=115;y=185
    if (flipValue==2)
    {
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
    }
    if (flipValue==3) {
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX, myY+15, 10, 10);
    }
    if (flipValue==4) {
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX-15, myY+15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
    }
    if (flipValue==5) {
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX-15, myY+15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX, myY, 10, 10);
    }
    if (flipValue==6) {
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX-15, myY, 10, 10);
      ellipse(myX-15, myY+15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY, 10, 10);
    }
  }// end show()
}//end dice class

void mousePressed() {
 
  redraw();
}



