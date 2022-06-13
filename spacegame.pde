PImage player;
PImage enemy;
PImage missile;
PImage alienMissile, asteroid, enemy2, heart, shield, spaceBackground;
Enemy e;
Player p;
Missile m;
Spawner s;
Background b,b2;
boolean wKey, aKey, sKey, dKey, space;
ArrayList<Missile> missiles; 
ArrayList<GameObject> spawn=new ArrayList<GameObject>();


void setup(){
  size(800,800);
  player = loadImage("images/playerShip.png");
  enemy = loadImage("images/enemyShip.png");
  missile = loadImage("images/missileimage.png");
  alienMissile = loadImage("images/alienMissile.png");
  enemy2 = loadImage("images/enemyShip2.png");
  heart = loadImage("images/heart.png");
  shield = loadImage("images/shield.png");
  asteroid = loadImage("images/asteroid.png");
  spaceBackground = loadImage("images/spacebackground.jpg");
  p = new Player();
  e = new Enemy();
  m = new Missile(340,800);
  s = new Spawner();
  b = new Background(400,400);
  b2 = new Background(400,-400);
  missiles = new ArrayList<Missile>();
}

void draw(){
  background(0);
  b.show();
  b.move();
  b2.show();
  b2.move();
  e.show();
  e.move();
  p.show();
  p.move();
  p.shoot();
  m.move();
  m.show();
  s.spawnEnemy();
  p.gethit();
  

  for(int i=0;i<missiles.size();i++){
    missiles.get(i).move();
    missiles.get(i).show();
  }
  for(int k=0;k<spawn.size();k++){
    spawn.get(k).show();
    spawn.get(k).move();

  }
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
  if(keyCode == 32){
    space = true;
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
  if(keyCode == 32){
    space = false;
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
