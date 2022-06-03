Grass grassy = new Grass();
Milk milky = new Milk();
Duck cow = new Duck();
int time;
PImage img;


void setup()
{
  size (480,720 );
  background(0);
  img = loadImage("cow.jpg");

}

void draw()
{
  grassy.move();
  grassy.spawn();

  if (grassy.getY() > 60) {
    milky.move();
    milky.spawn();
  }

  //fill(234,232,827);
  //ellipse(cow.getX(), cow.getY(), 40, 40);
  image(img, cow.getX(), cow.getY(), 40, 40);
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
