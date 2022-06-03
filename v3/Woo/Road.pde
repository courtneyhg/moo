class Road extends Environment{
  public Road(){

  }

  void spawn(int n){
    fill(0, 255, 255);
    rect(x, y+n, 480, height/12);
  }

}
