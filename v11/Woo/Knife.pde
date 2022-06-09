public class Knife extends Entity {

  public Knife(int xPos, int yPos) {
    super(xPos, yPos);
    type = 1;
    //dx = 2;
    dx = -((int)random(0, 3) + 1);
  }

  public Knife(int xPos, int yPos, boolean rightFacing) {
    super(xPos, yPos);
    type = 2;
    //dx = 2;
    dx = ((int)random(0, 3) + 1);
  }



}
