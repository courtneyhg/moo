public class Entity {

  boolean alive;
  int x, y;
  int dx;
  int type;

  public Entity() {
    alive = true;
  }

  public Entity(int xPos, int yPos) {
    this();
    x = xPos;
    y = yPos;
  }

  // Accessors

  public int getX() {
    return x;
  }

  public int getY() {
    return y;
  }

  public int getType() {
    return type;
  }

  public boolean isDead() {
    return !alive;
  }

  // Modifiers

  public void setX(int num) {
    x = num;
  }

  public void setY(int num) {
    y = num;
  }

  public void kill() {
    alive = false;
  }

  // Methods

  // Nature
  public void move() {
    x = x + dx;
    if (x > 480) {
      x = x - 480;
    }

  }

}