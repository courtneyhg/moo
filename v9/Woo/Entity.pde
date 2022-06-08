public class Entity {

  boolean isAlive;
  int x, y;
  int dx;
  int type;

  public Entity() {
    isAlive = true;
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

  // Modifiers

  public void setX(int num) {
    x = num;
  }

  public void setY(int num) {
    y = num;
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