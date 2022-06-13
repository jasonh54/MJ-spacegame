class Background extends GameObject{
  public Background(float x, float y){
    super(spaceBackground,x,y,800,800);
  }
  public void move(){
    y=y+2;
    if(y==1200){
      y=-400;
    }
  }
}
