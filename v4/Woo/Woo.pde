import java.util.ArrayList;

int time = 0;
int n = 0;
PImage img;
boolean isCreated = false;
ArrayList<Environment> env;
Duck cow = new Duck();


void setup()
{
  size (480,720);
  background(100);
  img = loadImage("cow.png");
  frameRate(10);
}

void draw()
{
  pushMatrix();
  translate(0, 1);
  background(100);
  cow.setY(cow.getY() + 1);
  image(img, cow.getX() - 1, cow.getY() - 1, 60, 60);
  rect(20, 20, 40, 40);
  popMatrix();
}

void keyPressed(){
  if (key == 'W' || key == 'w'){
    cow.moveUp();
  }
  if (key == 'S' || key == 's'){
    cow.moveDown();
  }
  if (key == 'A' || key == 'a'){
    cow.moveLeft();
  }
  if (key == 'D' || key == 'd'){
    cow.moveRight();
  }
}
