class Knife extends Entity {
  Knife(Road r){
    x = (int)random(0, 241); // fix this too they are all spawning in the same spot
    y = (int)r.getY();
    dy = 1;
    //dx = (int)random(0, 2) + 1; //yo fix this to make it random
    dx = 0;
  }

  void moveKnife(){
    y = y + dy;
    if (y > height) {
      y = -60;
    }

    x = x + dx;
    if (x > width){
      x = 0;
    }
  }

  void checkStatus(Duck c){
    if (x == c.getX() && y == c.getY()){
      System.out.println(c.deathStatus);
      c.died();
    }
  }

/*
  // seems to work the same way as checkStatus^^
  void checkStatus(Duck c){
    if (isHere(c)){
      c.deathStatus = true;
    }
  }
*/

  void spawnKnife(){
    image(knife, x, y, 40, 40);
  }

}
