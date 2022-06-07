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

  protected int[] col;
  protected float x = 0;
  protected float y = 0;
  protected float speed = 1;

  public Environment() {
    col = new int[3];
  }

  // Accessors

  public int[] getColor() {
    return col;
  }
  
  // Modifiers
  public void set(float num) {
    y = num;
  }

  void spawn() {
    fill(0, 255, 0);
    rect(x, y, 480, height/12);
  }

  void move() {
    y = y + speed;

    if (y > height) {
      y = -60;
    }
  

  }




}
