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

  public boolean isHere(Entity e) {
    return (x == e.getX() && y == e.getY());
  }

}
