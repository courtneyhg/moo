class Duck extends Entity{
  boolean deathStatus = false;

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

  void naturalMove(){
    y = y + 1;
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
