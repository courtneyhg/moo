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
  
  public boolean isHere(Entity e) {
    return (x == e.getX() && y == e.getY());
  }

  public boolean knifeHere(Entity e) {
    if (y == e.getY()){
      if (x > e.getX() && x - e.getX() <= 2){
        return true;
      }
      if (x < e.getX() && e.getX() - x <= 2){
        return true;
      }
      else{
        return false;
      }
    }
    else{
      return false;
    }
  }

  // Nature
  public void move() {
    x = x + dx;
    if (x > 480) {
      x = x - 480;
    }

  }

}