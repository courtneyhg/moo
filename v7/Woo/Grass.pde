class Grass extends Environment{
private float x = 0;
private float y = 0;
private float speed = 1;

  public Grass(int n){
    y = n;
  }

  void spawn(){
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
