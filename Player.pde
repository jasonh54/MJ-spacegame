class Player extends GameObject{
  float xv,yv;
  Timer time = new Timer(500);
  public Player(){
    super(player,400,800,50,50);
    xv = 0;
    yv = 0;
  }
  public void move(){
    if(wKey == true){
      yv=-5;
    }
    else if(sKey == true){
      yv=5;
    }
    else{
      yv=0;
    }
    if(dKey == true){
      xv=5;
    }
    else if(aKey == true){
      xv=-5;
    }
    else{
      xv=0;
    }
    x+=xv;
    y+=yv;
  }
  public void shoot(){
    if(space == true && time.countDown() == true){
      missiles.add(new Missile(this.x,this.y));
    }
  }
  public void gethit(){
    for(int i=0;i<spawn.size();i++){
      if(collisionCheck(this,spawn.get(i))==true){
        noLoop();
      }
    }
  }
}
//git add .
//git commit -m "message"
//git push origin master
