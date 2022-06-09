// Setup Variables
// import processing.sound.*;
PImage cow, knife, tree;
boolean gameStart;
// SoundFile introMoo;

// Environment Variables
int shiftY = 0;
Environment[] envs = new Environment[3];
int currEnv;
ArrayList<Environment> allEnv = new ArrayList<Environment>();

// Entity Variables
Duck duck = new Duck();
final int duckV = 60;
ArrayList<Entity> allEnt = new ArrayList<Entity>();

// Points
int pts = 0;
int netPts = 0;

/************************ CROSS ROAD ***************************/

void setup() {
  
  // Load PNGs
  cow = loadImage("cow.png");
  knife = loadImage("knife.png");
  tree = loadImage("tree.png");

  // Preparation
  size (480, 720);
  gameStart = false;
  envs[0] = new Grass();
  envs[1] = new Road();
  envs[2] = new Road();

  // Set Game Background
  currEnv = 0;
  for (int i = 0; i < 13; i ++) {
    allEnv.add(envs[currEnv]);
  }

  // Start Screen
  background(0);

  // // Mooing
  // introMoo = new SoundFile(this, "cow.wav");
  // introMoo.amp(0.3);
  // introMoo.play();
}

void keyPressed() {
  
  // To Start
  if (key == ' ') {
    gameStart = true;
  }
  
  // Move Up
  if (key == 'W' || key == 'w'){
    duck.moveY(-duckV);

    // Cannot move if a Tree is in the path
    if (!checkMove()) {
      duck.moveY(duckV);
      return;
    }

    netPts = netPts + 1;
    updatePts();
  }
  
  // Move Down
  if (key == 'S' || key == 's'){
    duck.moveY(duckV);

    // Cannot move if a Tree is in the path
    if (!checkMove()) {
      duck.moveY(-duckV);
      return;
    }

    netPts = netPts - 1;
    updatePts();
  }

  // Move Left
  if (key == 'A' || key == 'a'){
    duck.moveX(-duckV);

    // Cannot move if a Tree is in the path
    if (!checkMove()) {
      duck.moveX(duckV);
      return;
    }
  }

  // Move Right
  if (key == 'D' || key == 'd'){
    duck.moveX(duckV);

    // Cannot move if a Tree is in the path
    if (!checkMove()) {
      duck.moveX(-duckV);
      return;
    }
  }

}

void draw() {
  
  // Pressed Space
  if (gameStart == true) {

    if (shiftY == 59) {
      currEnv = int(random(3));    
      allEnv.remove(0);
      allEnv.add(envs[currEnv]);

      if (allEnt.size() > 26) {
        allEnt.remove(0);
        allEnt.remove(0);
      }

      if (currEnv == 0 ) {
        allEnt.add(new Tree(int(random(8)) * 60, -61));
        allEnt.add(new Tree(int(random(8)) * 60, -61));
      }
      if (currEnv == 1 || currEnv == 2 ) {
        allEnt.add(new Knife(int(random(480)), -61));
        allEnt.add(new Knife(int(random(480)), -61));
      }

      shiftY = 0;

    } else {
      shiftY ++;
    }

    // Shift Entities
    duck.setY(duck.getY() + 1);
    for (Entity ent : allEnt) {
      ent.setY(ent.getY() + 1);
      ent.move(); // Natural movement
    }

    // Draw Board
    for (int i = 0; i < 13; i ++) {
      allEnv.get(i).drawEnv((11-i) * 60 + shiftY);
    }
    for (Entity ent : allEnt) {
      if (ent.getType() == 0) {
        image(tree, ent.getX(), ent.getY(), 60, 60);
      }
      if (ent.getType() == 1) {
        image(knife, ent.getX(), ent.getY(), 60, 60);
      }
    }

    // Draw Cow
    image(cow, duck.getX(), duck.getY(), 60, 60);

    // Display Score
    fill(255);
    textSize(50);
    text(pts, 20, 60);

  }

  System.out.println(checkDeath());

  if (duck.isDead() || checkDeath()) {
    background(0);
    text("GAME OVER", 10, 100);
    text("Score: " + pts, 10, 200);
    noLoop();
  }

}

boolean checkMove() {
  boolean canMove = true;
  for (Entity ent : allEnt) {
    if (ent.getType() == 0 && ent.isHere(duck)) {
      canMove = false;
    }
  }
  return canMove;
}

 boolean checkDeath() {
   boolean death = false;
   for (Entity ent : allEnt){
     if (ent.getType() == 1 && ent.knifeHere(duck)) {
      death = true;
    }
   }
   return death;
 }

void updatePts() {
  if (netPts > pts) {
    pts = netPts;
  }
}
