class Knife extends Entity {
  Knife(Road r){
    x = 0;
    y = (int)r.getY();
    dy = 0;
    dx = (int)Math.random()*3 + 1; //yo fix this to make it random
  }

  void moveKnife(){
    y = y + 1;
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
      c.died();
    }
  }


  /*
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
