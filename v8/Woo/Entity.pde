public class Entity {

  boolean isAlive;
  int x, y;
  int speed;

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

  // Modifiers

  public void setX(int num) {
    x = num;
  }

  public void setY(int num) {
    y = num;
  }

}