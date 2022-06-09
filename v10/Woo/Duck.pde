public class Duck extends Entity {

  public Duck() {
    super(60, 540);
  }

  public void moveY(int dy) {
    setY(getY() + dy);
  }

  public void moveX(int dx) {
    setX(getX() + dx);
  }

    boolean isDead(){
      boolean deathStatus = false;
      if (y >= height || y < 0){
        deathStatus = true;
      }
      if (x >= width || x < 0){
        deathStatus = true;
      }
      return deathStatus;
  }

}
