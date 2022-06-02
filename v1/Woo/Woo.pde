Grass pop = new Grass();
Duck cow = new Duck();

void setup()
{
  size (480,720 );
  fill(345,232,435);
}

void draw()
{
  pop.move();
  pop.spawn();
  ellipse(cow.getX(), cow.getY(), 40, 40);
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
