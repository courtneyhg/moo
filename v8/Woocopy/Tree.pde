class Tree extends Entity {
Tree(Grass g){
  x = (int)random(0, 241);
  y = (int)g.getY();
  dy = 1;
  dx = 0;
}

  void spawnTree(){
    image(tree, x, y, 40, 40);
  }

  void moveTree(){
    y = y + dy;
    if (y > height) {
      y = -60;
    }
  }

  void treeTop(Duck c){
    if (x == c.getX() && y == c.getY()-60){ //there is a tree when you press W
      c.treeT = false;
    }
  }

  void treeBottom(Duck c){
    if (x == c.getX() && y == c.getY()+60){ //there is a tree when you press S
      c.treeB = false;
    }
  }

  void treeLeft(Duck c){
    if (x == c.getX()-60 && y == c.getY()){ //there is a tree when you press A
      c.treeL = false;
    }
  }

  void treeRight(Duck c){
    if (x == c.getX()+60 && y == c.getY()){ //there is a tree when you press D
      c.treeR = false;
    }
  }


}
