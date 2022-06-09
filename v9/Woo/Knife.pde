public class Knife extends Entity {

  public Knife(int xPos, int yPos) {
    super(xPos, yPos);
    type = 1;
    //dx = 2;
    dx = (int)random(0, 3) + 1;
  }



}
