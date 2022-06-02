class Grass extends Environment{
  Grass(){
    col.set(0, 0);
    col.set(1, 255);
    col.set(2, 0);
  }

  void spawn(){
    rect(0, 0, 480, height/12);
  }

}
