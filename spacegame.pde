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
void keyReleased(){
  if(keyCode == 87){
    wKey = false;
  }
  if(keyCode == 65){
    aKey = false;
  }
  if(keyCode == 68){
    dKey = false;
  }
  if(keyCode == 83){
    sKey = false;
  }
}

float distance(GameObject obj1, GameObject obj2){
  float a = obj1.x - obj2.x;
  float b = obj1.y - obj2.y;
  return( sqrt(a*a + b*b));
}

boolean collisionCheck(GameObject obj1, GameObject obj2){
  if(distance(obj1,obj2) < (obj1.w/2 + obj2.w/2)){
    return true;
  }
  return false;
}
