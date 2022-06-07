Duck cow = new Duck();
Environment[] opts;
Environment[] envs;
PImage img;
PImage knife;
PImage tree;
int ticker = 0;
int shiftv = 1;
Environment nextEnv;

void setup()
{
  size (480,720 );
  background(255);
  img = loadImage("cow.png");
  knife = loadImage("knife.png");
  tree = loadImage("tree.png");
  
  // current Envs
  envs = new Environment[13];
  for (int i = 0; i < 12; i ++) {
    nextEnv = new Grass(i*60);
    
    envs[i] = (nextEnv);
  }
  
  //// Options for Envs
  //opts = Environment[12]
  //for (int i = 0; i < 6; i ++) {
  //  opts[i] = (new Road(-1));
  //}
  //for (int i = 0; i < 6; i ++) {
  //  opts.add(new Grass(-1));
  //}
}

void draw()
{
  //if (ticker > 0) {
  //  ticker --;
  //} else {
  //  int opt = (int)(Math.random() * 12);
  //  envs.add(opts.get(opt));
  //  opts.add(envs.remove(0));
  //  ticker = 60;
  //}

  for (Environment e : envs) {
    //e.move();
    e.spawn();
  }
  //cow.naturalMove();
  image(img, cow.getX(), cow.getY(), 50, 50);

/*
  //why is this only running once?
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
  

  // System.out.println(cow.deathStatus);
  // if (cow.isDead() || cow.deathStatus){
  //   background(0);
  //   // for later - add something that tells the user GAME OVER
  //   noLoop();
  // }

*/

}

void keyPressed(){
  if (key == 'W' || key == 'w'){
    if (cow.treeGone){  //bro why is this not working
      cow.moveUp();
    }
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
