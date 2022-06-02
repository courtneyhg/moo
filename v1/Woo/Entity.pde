public class Entity {

  public int x;
  public int y;
  public int dx;
  public int dy;

  public Entity() {
    x = 0;
    y = 0;
    dx = 1;
    dy = 1;
  }

  // Accessors

  public int getX() {
    return x;
  }

  public int getY() {
    return y;
  }

  // Methods

  public boolean isHere(Entity e) {
    return (x == e.getX() && y == e.getY());
  }

  public void graphics() {

  }

  public void killed() {
    x = -1;
    y = -1;
    dx = 0;
    dy = 0;
  }


}
