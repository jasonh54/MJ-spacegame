class GameObject{
  PImage sprite;
  float x,y,w,h;
  public GameObject(){
  }
  public GameObject(PImage sprite, float x,float y, float w, float h){
    this.sprite = sprite;
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
  }
  public void show(){
    image(sprite,x-w/2,y-h/2,w,h);
  }
}
