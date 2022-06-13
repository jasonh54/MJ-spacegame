class Background extends GameObject{
  public Background(){
    super(spaceBackground,400,400,800,800);
  }
  public void move(){
    y=y+2;
  }
}
