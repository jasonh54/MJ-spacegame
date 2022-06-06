class Missile extends GameObject{
  public Missile(float x,float y){
    super(missile,x,y,10,50);
  }
  public void move(){
    y=y-10;
  }
}
