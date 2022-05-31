int yPos=720;
int xPos=240;
int dir=-50;

void setup()
{
  size (480,720 );
  background(0, 100, 0);
  fill(345,232,435);
  ellipse(xPos, yPos, 40, 40);
}

void draw()
{

}

void keyPressed(){
  if (key == 'W' || key == 'w'){
    yPos=yPos+dir;
    background(0, 100, 0);
    ellipse(xPos, yPos, 40, 40);
    if (yPos>height-72 || yPos<72)
    {
      background(0); //went off board
    }
  }
  if (key == 'S' || key == 's'){
    yPos=yPos-dir;
    background(0, 100, 0);
    ellipse(xPos, yPos, 40, 40);
    if (yPos>height-72 || yPos<72)
    {
      background(0); //went off board
    }
  }
  if (key == 'A' || key == 'a'){
    xPos=xPos+dir;
    background(0, 100, 0);
    ellipse(xPos, yPos, 40, 40);
    if (xPos>width-48 || xPos<48)
    {
      background(0); //went off board
    }
  }
  if (key == 'D' || key == 'd'){
    xPos=xPos-dir;
    background(0, 100, 0);
    ellipse(xPos, yPos, 40, 40);
    if (xPos>width-48 || xPos<48)
    {
      background(0); //went off board
    }
  }
}
