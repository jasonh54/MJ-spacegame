class Enemy extends GameObject{
  public Enemy(){
    super(enemy, 400,0,50,50);
  }
  public void move(){
    x=x+10;
    y=y+10;
  }
}
////git add .
//git commit -m "message"
//git push origin master
//1)use the overloaded function of the game object
//2)write a move function for the class you're working on
//3) make an object and tell it to show and move in the draw function
