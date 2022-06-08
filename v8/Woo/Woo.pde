// Setup Variables
PImage cow, knife, tree;
boolean gameStart;

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
  
}

void keyPressed() {
  
  // To Start
  if (key == ' ') {
    gameStart = true;
  }
  
  // To Move
  if (key == 'W' || key == 'w'){
    duck.moveY(-duckV);
    netPts = netPts + 1;
    updatePts();
  }
  if (key == 'S' || key == 's'){
    duck.moveY(duckV);
    netPts = netPts - 1;
    updatePts();
  }
  if (key == 'A' || key == 'a'){
    duck.moveX(-duckV);
  }
  if (key == 'D' || key == 'd'){
    duck.moveX(duckV);
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
        allEnt.add(new Tree(int(random(480)), -60));
        allEnt.add(new Tree(int(random(480)), -60));
      }
      if (currEnv == 1 || currEnv == 2 ) {
        allEnt.add(new Knife(int(random(480)), -60));
        allEnt.add(new Knife(int(random(480)), -60));
      }

      shiftY = 0;

    } else {
      shiftY ++;
    }

    // Shift Entities
    duck.setY(duck.getY() + 1);
    for (Entity ent : allEnt) {
      ent.setY(ent.getY() + 1);

      // Natural movement
      ent.move();
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
  }
}

// void checkMove() {

// }

void updatePts() {
  if (netPts > pts) {
    pts = netPts;
  }
}