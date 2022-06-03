class Milk extends Environment{
  public Milk(){

  }

  void spawn(int n){
    fill(255);
    rect(x, y-n, 480, height/12);
  }

}
