PImage player;
PImage enemy;
Player p;
void setup(){
  size(800,800);
  player = loadImage("images/playerShip.png");
  enemy = loadImage("images/enemyShip.png");
  p = new Player();
}

void draw(){
  background(0);
  p.show();
  p.move();
}
