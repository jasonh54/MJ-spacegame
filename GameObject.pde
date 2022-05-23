class GameObject{
  PImage sprite;
  float x,y,w,h;
  public GameObject(){
  }
  public void show(){
    image(sprite,x,y,w,h);
  }
}
