class Road extends Environment{
private float x = 0;
private float y = 0;
private float speed = 1;

  public Road(int n){
    y = n;
  }

  void spawn(Knife k){
    fill(0, 255, 255);
    rect(x, y, 480, height/12);
    k.spawnKnife();
  }

  void move(Knife k) {
    y = y + speed;

    if (y > height) {
      y = -60;
    }

    k.moveKnife();
    //k.checkStatus(cow);
  }

  public float getY() {
    return y;
  }

}
