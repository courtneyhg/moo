class Grass extends Environment{
private float x = 0;
private float y = 0;
private float speed = 1;

  public Grass(int n){
    y = n;
  }

  void move(Tree t) {
    y = y + speed;

    if (y > height) {
      y = -60;
    }
    t.moveTree();

  }

  public float getY() {
    return y;
  }


}
