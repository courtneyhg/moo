Grass grassy = new Grass();
Road roady = new Road();
Duck cow = new Duck();
int time;
int n = 0;
PImage img;
boolean isCreated = false;


void setup()
{
  size (480,720 );
  background(0);
  img = loadImage("cow.jpg");

}

void draw()
{
  grassy.spawn(0);
  grassy.spawn(60);
  grassy.spawn(120);
  grassy.spawn(180);
  grassy.spawn(240);
  roady.spawn(300);
  grassy.spawn(360);
  grassy.spawn(420);
  grassy.spawn(480);
  grassy.spawn(540);
  grassy.spawn(600);
  grassy.spawn(660);
  grassy.spawn(720);

  //roady.spawn(0);

/*
  n += 1;
  grassy.spawn(0);
  grassy.move();

  if (n == 60){  //later do mod 60 to spawn other lands
    milky.spawn(0);
    isCreated = true;
  }

  if (isCreated){
    milky.move();
  }
  */


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
