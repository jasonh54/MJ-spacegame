class Player extends GameObject{
  float xv,yv;
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
}
//git add .
//git commit -m "message"
//git push origin master
