PImage player;
PImage enemy;
Enemy e;
void setup(){
  size(800,800);
  player = loadImage("images/playerShip.png");
  enemy = loadImage("images/enemyShip.png");
}

void draw(){
  e.show();
  e.move();
}
