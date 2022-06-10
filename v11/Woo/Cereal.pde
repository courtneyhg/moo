public class Cereal extends Entity {

  public Cereal(int xPos, int yPos) {
    super(xPos, yPos);
    type = 3;
    dx = 1;
    //dx = (int)random(0, 3) + 1;
  }

  // true if e is on milk
  public boolean milkHere(Entity e) {
    return (x != e.getX() && y == e.getY());
  }



}
