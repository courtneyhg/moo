class Grass extends Environment{
  Grass(){
  /*
    col.set(0, 0);
    col.set(1, 255);
    col.set(2, 0);
    */
  }

  void spawn(){
    fill(0, 23, 90);
    rect(x, y, 480, height/12);
  }

}
