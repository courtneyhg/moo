// Setup Variables
// import processing.sound.*;
PImage cow, pig, chicken, goat, smurf, donkey, knife, knife2, tree, cereal, start, chosenCharacter;
boolean gameInstr;
boolean gameSelect;
boolean gameStart;
// SoundFile introMoo;

// Environment Variables
int shiftY = 0;
Environment[] envs = new Environment[4];
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
void setup(){
  size(480, 720);
  newStart();
}


void newStart() {
  
  // Load PNGs
  cow = loadImage("cow.png");
  pig = loadImage("pig.png");
  chicken = loadImage("chiken.png"); 
  goat = loadImage("goat.png");
  smurf = loadImage("smurf.png");
  donkey = loadImage("donkey.png");
  knife = loadImage("knife.png");
  knife2 = loadImage("knife2.png");
  tree = loadImage("tree.png");
  cereal = loadImage("cereal.png");
  start = loadImage("start.png");

  // Preparation
  size (480, 720);
  gameInstr = false;
  gameStart = false;
  envs[0] = new Grass();
  envs[1] = new Road();
  envs[2] = new Road();
  envs[3] = new Milk();

  // Set Game Background
  currEnv = 0;
  for (int i = 0; i < 13; i ++) {
    allEnv.add(envs[currEnv]);
  }

  // Start Screen
  image(start, 0, 0);
  textSize(27);
  text("PRESS SPACE TO READ INSTRUCTIONS", 25, 50);

  // // Mooing
  // introMoo = new SoundFile(this, "cow.wav");
  // introMoo.amp(0.3);
  // introMoo.play();
}

void keyPressed() {
  
  // To Start
  if (key == ' ') {
    if (!gameInstr) {
      gameInstr = true; // Press space to go to instructions
    } else if (!gameSelect) {
      gameSelect = true; // Press space to go to duck selection
    } else if (!gameStart) {
      gameStart = true; // Press space to start
    }
  }
  
  // Move Up
  if (key == 'W' || key == 'w'){
    duck.moveY(-duckV);

    // Cannot move if a Tree is in the path
    if (!checkMove()) {
      duck.moveY(duckV);
      return;
    }

    // Cannot move if there is no cereal (doesnt work yet)
    if (jumpPer()){
      if (!checkJump()){
        duck.moveY(duckV);
        return;
      }
      else {
        duck.moveY(-duckV);
        duck.moveX(1);
      }
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
  
  // Instruction Screen
  if (gameInstr) {
    background(105, 206, 236);
    image(cow, 0, 450);
    cow.resize(170, 190);
    fill(255);
    textSize(50);
    text("HOW TO PLAY:", 80, 100);
  // Creating Rectangle
    fill(236, 233, 216);
    rect(60, 180, 360, 240);
    String s = "Use WASD to move the cow (W - Up, A - Left, S - Down, D - Right). Avoid knives and trees. Get on the cereal to avoid drowning in the milk river. Good luck!";
    fill(0);
    textSize(24);
  // Shaping Text To Fit Rectangle
    text(s, 70, 205, 350, 240);
    text("PRESS SPACE TO CONTINUE", 170, 550);
 }

  // Character Selection Screen // We'll do this is time allows
  if (gameSelect) {
    background(105, 206, 236);
    textSize(45);
    fill(255);
  // Creating Title Text
    text("Choose your character:", 23, 60);
    textSize(30);
  // Creating Cow
    image(cow, 10, 70);
    text("[1]", 79, 280);
  // Creating Pig
    image(pig, 280, 80);
    pig.resize(170, 170);
    text("[2]", 360, 280);
  // Creating Smurf
    image(smurf, -30, 290);
    smurf.resize(290, 210);
    text("[3]", 90, 513);
  // Creating Donkey
    image(donkey, 280, 280);
    donkey.resize(160, 200);
    text("[4]", 350, 510);
  // Creating Chicken
    image(chicken, 50, 530);
    chicken.resize(140, 160);
    text("[5]", 150, 690);
  // Creating Goat
    image(goat, 250, 520);
    goat.resize(180, 170);
    text("[6]", 410, 690);
    
    if (keyPressed) {
      if (key == '1') {
        chosenCharacter = cow;
        gameStart = true;
      }
      if (key == '2') {
        chosenCharacter = pig;
        gameStart = true;
      }
      if (key == '3') {
        chosenCharacter = smurf;
        gameStart = true;
      }
      if (key == '4') {
        chosenCharacter = donkey;
        gameStart = true;
      }
      if (key == '5') {
        chosenCharacter = chicken;
        gameStart = true;
      }
      if (key == '6') {
        chosenCharacter = goat;
        gameStart = true;
      }
    }
 }
  
  if (gameStart) {

    if (shiftY == 59) {
      currEnv = int(random(4));    
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
      if (currEnv == 1) {
        allEnt.add(new Knife(int(random(480)), -61));
        allEnt.add(new Knife(int(random(480)), -61));
      }
      if (currEnv == 2) {
        allEnt.add(new Knife(int(random(480)), -61, true));
        allEnt.add(new Knife(int(random(480)), -61, true));
      }
      if (currEnv == 3 ) {
        allEnt.add(new Cereal(int(random(480)), -61));
        allEnt.add(new Cereal(int(random(480)), -61));
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
      if (ent.getType() == 2) {
        image(knife2, ent.getX(), ent.getY(), 60, 60);
      }
      if (ent.getType() == 3) {
        image(cereal, ent.getX(), ent.getY(), 60, 60);
      }
    }

    // Draw Cow
    image(chosenCharacter, duck.getX(), duck.getY(), 60, 60);

    // Display Score
    fill(255);
    textSize(50);
    text(pts, 20, 60);

  }
  
  if (checkJump()){
    System.out.println("1");
  }

  if (duck.isDead() || checkDeath()) {
    background(0);
    text("GAME OVER", 10, 100);
    text("Score: " + pts, 10, 200);
    if (keyPressed){
      newStart();
    }
  }

}

// true if duck is NOT on a tree
boolean checkMove() {
  boolean canMove = true;
  for (Entity ent : allEnt) {
    if (ent.getType() == 0 && ent.isHere(duck)) {
      canMove = false;
    }
  }
  return canMove;
}

// true if duck is on a knife
boolean checkDeath() {
  boolean death = false;
  for (Entity ent : allEnt){
    if ((ent.getType() == 1 || ent.getType() == 2) && ent.knifeHere(duck)) {
      death = true;
    }
  }
  return death;
}

// true is duck is on a cereal
boolean checkJump(){
  boolean canJump = true;
  for (Entity ent : allEnt) {
    if (ent.getType() == 3 && ent.milkHere(duck)) {
      canJump = false;
    }
  }
  return canJump;
}

boolean jumpPer(){
  boolean hopCereal = false;
  for (Entity ent : allEnt) {
    if (ent.getType() == 3 && ent.jumpable()) {
      hopCereal = true;
    }
  }
  return hopCereal;
}

// Update Points
void updatePts() {
  if (netPts > pts) {
    pts = netPts;
  }
}
