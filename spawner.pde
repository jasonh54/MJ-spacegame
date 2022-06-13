class Spawner{
  Timer timer,aster,timer2;
  public Spawner(){
    timer=new Timer(1000);
    aster=new Timer(2500);
    timer2=new Timer(1500);
  }
  public void spawnEnemy(){
    if(timer.countDown()==true){
      spawn.add(new Enemy());
    }
    if(aster.countDown()==true){
      spawn.add(new Asteroid());
    }
    if(timer2.countDown()==true){
      spawn.add(new Enemy2());
    }
  }
}
