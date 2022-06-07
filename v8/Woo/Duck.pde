class Duck extends Entity{
  boolean deathStatus = false;
  boolean treeGone = true;

  Duck(){
    y = 420;
    x = 240;
    dy = -60;
    dx = -60;
  }

  void moveUp(){
    y = y + dy;
  }

  void moveDown(){

    y = y - dy;
  }

  void moveLeft(){
    x = x + dx;
  }

  void moveRight(){
    x = x - dx;
  }

  void shiftY(int num){
    y = y + num;
  }

  void died(){
    deathStatus = true;
  }

  boolean isDead(){
    if (y >= height || y < 0){
      deathStatus = true;
    }
    if (x >= width || x < 0){
      deathStatus = true;
    }
    return deathStatus;
  }


}
