class Enemy extends GameObject{
  public Enemy(){
    super(enemy, random(800),0,50,50);
  }
  public void move(){
    y=y+10;
  }
}

class Enemy2 extends GameObject{
  public Enemy2(){
    super(enemy2, random(800),0,75,75);
  }
  public void move(){
    y=y+7;
  }
}

class Asteroid extends GameObject{
  public Asteroid(){
    super(asteroid, random(800),0,100,100);
  }
  public void move(){
    y=y+5;
  }
}
////git add .
//git commit -m "message"
//git push origin master
//1)use the overloaded function of the game object
//2)write a move function for the class you're working on
//3) make an object and tell it to show and move in the draw function
