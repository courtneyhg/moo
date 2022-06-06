class Duck extends Entity{
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


}
