PImage img;
PImage knife;
PImage tree;
boolean gameStart;
Duck cow = new Duck();

final int duckV = 60;

void setup() {
  
  // Load PNGs
  img = loadImage("cow.png");
  knife = loadImage("knife.png");
  tree = loadImage("tree.png");

  // Start Screen
  size (480, 720);
  background(0);
  gameStart = false;
  imageMode(CENTER);
  
}

void keyPressed() {
  
  // To Start
  if (key == ' ') {
    gameStart = true;
  }
  
  // To Move
  if (key == 'W' || key == 'w'){
    cow.moveY(-duckV);
  }
  if (key == 'S' || key == 's'){
    cow.moveY(duckV);
  }
  if (key == 'A' || key == 'a'){
    cow.moveX(-duckV);
  }
  if (key == 'D' || key == 'd'){
    cow.moveX(duckV);
  }
}

void draw() {
  
  // Pressed Space
  if (gameStart == true) {
    
     image(img, cow.getX(), cow.getY(), 50, 50);
  
  }
}
