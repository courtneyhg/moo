class Tree extends Entity {
Tree(Grass g){
  x = 0;
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

  void withDuck(Duck c){
    if (x == c.getX() && y == c.getY()-60){ //there is a tree when you press W
      c.treeGone = false;
    }
    if (x == c.getX() && y == c.getY()+60){ //there is a tree when you press S
      c.treeGone = false;
    }
    if (x == c.getX()-60 && y == c.getY()){ //there is a tree when you press A
      c.treeGone = false;
    }
    if (x == c.getX()+60 && y == c.getY()){ //there is a tree when you press D
      c.treeGone = false;
    }
  }

}
