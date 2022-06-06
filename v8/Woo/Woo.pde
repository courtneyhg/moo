import java.util.Queue;

Duck cow = new Duck();

Queue<Environment> envs;
PImage img;
PImage knife;
PImage tree;
int ticker = 60;
int shiftv = 1;
Environment nextEnv;

void setup()
{
  size (480,720 );
  background(255);
  img = loadImage("cow.png");
  knife = loadImage("knife.png");
  tree = loadImage("tree.png");
  envs = new Queue<Environment>();
  for (int i = 11; i >= 0; i ++) {
    nextEnv = new Grass(i*60);
    nextEnv.spawn();
    envs.push(nextEnv);
  }
  nextEnv = new Road(-1);
  envs.push(nextEnv);
  
}

void draw()
{
  if (ticker > 0) {
    ticker --;
  } else {
    int opt = Math.random() * 3;
    if (opt > 2) {
      envs.pop();
      nextEnv = new Grass(-1);
      envs.push(nextEnv);
    // } else if (opt > 1) {
    } else {
      
    }

    ticker = 60;
  }
  

  // System.out.println(cow.deathStatus);
  // if (cow.isDead() || cow.deathStatus){
  //   background(0);
  //   // for later - add something that tells the user GAME OVER
  //   noLoop();
  // }
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
