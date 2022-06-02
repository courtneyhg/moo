Grass grassy = new Grass();
Milk milky = new Milk();
Duck cow = new Duck();
int time;

void setup()
{
  size (480,720 );
  background(0);
}

void draw()
{
  grassy.move();
  grassy.spawn();

  if (millis() > time){
    time = millis()+300;
    milky.move();
    milky.spawn();
  }

  fill(234,232,827);
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
