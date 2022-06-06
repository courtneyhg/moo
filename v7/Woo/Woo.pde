Duck cow = new Duck();

Grass g1 = new Grass(0);
Grass g2 = new Grass(180);
Grass g3 = new Grass(240);
Grass g4 = new Grass(420);
Grass g5 = new Grass(480);
Grass g6 = new Grass(660);

Road r1 = new Road(120);
Road r2 = new Road(300);
Road r3 = new Road(360);
Road r4 = new Road(540);
Road r5 = new Road(600);
Road r6 = new Road(720);
Road r7 = new Road(60);

Knife k1 = new Knife(r1);
Knife k2 = new Knife(r2);
Knife k3 = new Knife(r3);
Knife k4 = new Knife(r4);
Knife k5 = new Knife(r5);
Knife k6 = new Knife(r6);
Knife k7 = new Knife(r7);

int time;
int n = 0;
PImage img;
PImage knife;



void setup()
{
  size (480,720 );
  background(255);
  img = loadImage("cow.png");
  knife = loadImage("knife.png");
  image(img, cow.getX(), cow.getY(), 40, 40);

}

void draw()
{
  r6.spawn(k6);
  r6.move(k6);
  g6.spawn();
  g6.move();
  r5.spawn(k5);
  r5.move(k5);
  r4.spawn(k4);
  r4.move(k4);
  g5.spawn();
  g5.move();
  g4.spawn();
  g4.move();
  r3.spawn(k3);
  r3.move(k3);
  r2.spawn(k2);
  r2.move(k2);
  g3.spawn();
  g3.move();
  g2.spawn();
  g2.move();
  r1.spawn(k1);
  r1.move(k1);
  r7.spawn(k7);
  r7.move(k7);
  g1.spawn();
  g1.move();

  image(img, cow.getX(), cow.getY(), 40, 40);
  cow.naturalMove();
  
  k1.checkStatus(cow);
  k2.checkStatus(cow);
  k3.checkStatus(cow);
  k4.checkStatus(cow);
  k5.checkStatus(cow);
  k6.checkStatus(cow);
  k7.checkStatus(cow);

  System.out.println(cow.deathStatus);
  if (cow.isDead() || cow.deathStatus){
    background(0);
    // for later - add something that tells the user GAME OVER
    noLoop();
  }
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
