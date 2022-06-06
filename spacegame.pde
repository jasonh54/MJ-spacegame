PImage player;
PImage enemy;
PImage missile;
Enemy e;
Player p;
Missile m;
boolean wKey, aKey, sKey, dKey;


void setup(){
  size(800,800);
  player = loadImage("images/playerShip.png");
  enemy = loadImage("images/enemyShip.png");
  missile = loadImage("images/missileimage.png");
  p = new Player();
  e = new Enemy();
  m = new Missile(340,800);
}

void draw(){
  background(0);
  e.show();
  e.move();
  p.show();
  p.move();
  m.move();
  m.show();
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
