public class Entity {

  private int x;
  private int y;
  private int dx;
  private int dy;

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
  
