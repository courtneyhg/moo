class Tree extends Entity {
Tree(Grass g){
  x = 0;
  y = (int)g.getY();
  dy = 1;
  dx = 0;
}

  void spawnTree(){
    image(tree, x, y, 60, 60);
  }

  void moveTree(){
    y = y + dy;
    if (y > height) {
      y = -60;
    }
  }

}
