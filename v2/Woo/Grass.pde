class Grass extends Environment{
  public Grass(){
  /*
    col.set(0, 0);
    col.set(1, 255);
    col.set(2, 0);
  */
  }

  void spawn(int n){
    fill(0, 255, 0);
    rect(x, y-n, 480, height/12);
  }

}
