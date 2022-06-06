PImage player;
PImage enemy;
Enemy e;
Player p;
boolean wKey, aKey, sKey, dKey;


void setup(){
  size(800,800);
  player = loadImage("images/playerShip.png");
  enemy = loadImage("images/enemyShip.png");
  p = new Player();
  e = new Enemy();
}

void draw(){
  background(0);
  e.show();
  e.move();
  p.show();
  p.move();


  resetKeys();
}

void resetKeys(){
  wKey = false;
  aKey = false;
  sKey = false;
  dKey = false;
}

void keyPressed(){
  if(keyCode == 87){
    wKey = true;
  }
  if(keyCode == 65){
    aKey = true;
  }
  if(keyCode == 68){
    dKey = true;
  }
  if(keyCode == 83){
    sKey = true;
  }
}
