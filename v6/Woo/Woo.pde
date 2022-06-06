Grass grassy = new Grass(0);
Road roady = new Road(60);
Grass a = new Grass(180);
Grass b = new Grass(240);
Grass c = new Grass(420);
Grass d = new Grass(480);
Grass e = new Grass(660);
Road r1 = new Road(120);
Road r2 = new Road(300);
Road r3 = new Road(360);
Road r4 = new Road(540);
Road r5 = new Road(600);
Road r6 = new Road(720);

Duck cow = new Duck();
int time;
int n = 0;
PImage img;
boolean isCreated = false;
float x = 0;
float y = 0;


void setup()
{
  size (480,720 );
  background(255);
  img = loadImage("cow.png");
  image(img, cow.getX(), cow.getY(), 40, 40);

}

void draw()
{
  background(355);
  r6.spawn();
  r6.move();
  e.spawn();
  e.move();
  r5.spawn();
  r5.move();
  r4.spawn();
  r4.move();
  d.spawn();
  d.move();
  c.spawn();
  c.move();
  r3.spawn();
  r3.move();
  r2.spawn();
  r2.move();
  b.spawn();
  b.move();
  a.spawn();
  a.move();
  r1.spawn();
  r1.move();
  roady.spawn();
  roady.move();
  grassy.spawn();
  grassy.move();

  image(img, cow.getX(), cow.getY(), 40, 40);
  cow.naturalMove();
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
