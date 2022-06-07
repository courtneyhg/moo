public class Environment {

  color col;

  public Environment() {
    col = color(0, 0, 0);
  }

  public Environment(color newCol) {
    col = newCol;
  }

  // Accessors

  public color getColor() {
    return col;
  }
  
  // Methods

  // Draw rectangle
  void drawEnv(int y) {
    fill(col);
    rect(0, y, 480, height/12);
  }

}
