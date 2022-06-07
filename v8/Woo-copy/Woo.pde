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

Tree t1 = new Tree(g1);
Tree t2 = new Tree(g2);
Tree t3 = new Tree(g3);
Tree t4 = new Tree(g4);
Tree t5 = new Tree(g5);
Tree t6 = new Tree(g6);

PImage img;
PImage knife;
PImage tree;



void setup()
{
  size (480,720 );
  background(255);
  img = loadImage("cow.png");
  knife = loadImage("knife.png");
  tree = loadImage("tree.png");
  image(img, cow.getX(), cow.getY(), 50, 50);

}

void draw()
{
  r6.spawn(k6);
  r6.move(k6);
  g6.spawn(t6);
  g6.move(t6);
  r5.spawn(k5);
  r5.move(k5);
  r4.spawn(k4);
  r4.move(k4);
  g5.spawn(t5);
  g5.move(t5);
  g4.spawn(t4);
  g4.move(t4);
  r3.spawn(k3);
  r3.move(k3);
  r2.spawn(k2);
  r2.move(k2);
  g3.spawn(t3);
  g3.move(t3);
  g2.spawn(t2);
  g2.move(t2);
  r1.spawn(k1);
  r1.move(k1);
  r7.spawn(k7);
  r7.move(k7);
  g1.spawn(t1);
  g1.move(t1);

  image(img, cow.getX(), cow.getY(), 50, 50);
  cow.naturalMove();


  //why is this only running once?
  k1.checkStatus(cow);
  k2.checkStatus(cow);
  k3.checkStatus(cow);
  k4.checkStatus(cow);
  k5.checkStatus(cow);
  k6.checkStatus(cow);
  k7.checkStatus(cow);

  t1.withDuck(cow);
  t2.withDuck(cow);
  t3.withDuck(cow);
  t4.withDuck(cow);
  t5.withDuck(cow);
  t6.withDuck(cow);

  //System.out.println(cow.deathStatus);
  System.out.println(cow.treeGone);

  if (cow.isDead() || cow.deathStatus){
    background(0);
    // for later - add something that tells the user GAME OVER
    noLoop();
  }
}

void keyPressed(){
  // it does not reset treeGone back to true so the cow cant move
  if (key == 'W' || key == 'w'){
    if (cow.treeGone){
      cow.moveUp();
    }
    //cow.treeGone = true;
  }
  if (key == 'S' || key == 's'){
    if (cow.treeGone){
      cow.moveDown();
    }
    //cow.treeGone = true;
  }
  if (key == 'A' || key == 'a'){
    if (cow.treeGone){
      cow.moveLeft();
    }
    //cow.treeGone = true;
  }
  if (key == 'D' || key == 'd'){
    if (cow.treeGone){
      cow.moveRight();
    }
    //cow.treeGone = true;
  }
  cow.treeGone = true;
}
