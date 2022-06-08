// Setup Variables
PImage cow;
PImage knife;
PImage tree;
boolean gameStart;

// Environment Variables
int shiftY = 0;
Environment[] envs = new Environment[3];
int currEnv;
ArrayList<Environment> allEnv = new ArrayList<Environment>();

// Entity Variables
Duck duck = new Duck();
final int duckV = 60;

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
  image(bg, 0, 0);
  
}

void keyPressed() {
  
  // To Start
  if (key == ' ') {
    gameStart = true;
    loop();
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
      allEnv.remove(1);
      allEnv.add(envs[currEnv]);

      shiftY = 0;

    } else {
      shiftY ++;
    }

    // Shift Entities
    duck.setY(duck.getY() + 1);

    // Draw Board
    for (int i = 0; i < 13; i ++) {
      allEnv.get(i).drawEnv((11-i) * 60 + shiftY);
    }

    // Draw Cow
    image(cow, duck.getX(), duck.getY(), 50, 50);
  }
}

// void checkDeath() {

// }

// void checkMove() {

// }

void updatePts() {
  if (netPts > pts) {
    pts = netPts;
  }
}