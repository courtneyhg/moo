import java.util.ArrayList;
/* COLOR KEY */
//final color red = color(255, 0, 0);
//final color green = color(0, 255, 0);
//final color darkBlue = color(0, 0, 255);
//final color lightBlue = color(0, 255,255);
//final color yellow = color(255, 255, 0);
//final color pink = color(255, 0, 255);
//final color gray = color(100);
//final color white = color (255);

public class Environment {

  private int[] col;
  float x = 0;
  float y = 0;
  float speed = 1;


  public Environment() {
    col = new int[3];
  }

  // Accessors

  public int[] getColor() {
    return col;
  }

  public float getY() {
    return y;
  }

  void move() {
    y = y + speed;
    /*
    if (y > height) {
      y = 0;
    }
    */
  }


}
