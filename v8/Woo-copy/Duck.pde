class Duck extends Entity{
  boolean deathStatus = false;
  boolean treeT = true;
  boolean treeB = true;
  boolean treeL = true;
  boolean treeR = true;
  int score = 0;

  Duck(){
    y = 420;
    x = 240;
    dy = -60;
    dx = -60;
  }

  void moveUp(){
    y = y + dy;
    score ++;
  }

  void moveDown(){
    y = y - dy;
    score --;
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

  void noMove(){
    x = x;
    y = y;
  }

  void died(){
    deathStatus = true;
  }

  String showScore(){
    // for now, the score only represents how far up the cow has made it when it died
    String points = "";
    points = points + score;
    return points;
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
