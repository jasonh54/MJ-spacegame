class Spawner{
  Timer timer;
  public Spawner(){
    this.timer=new Timer(1000);
  }
  public void spawnEnemy(){
    if(timer.countDown()==true){
      spawn.add(new Enemy());
    }
  }
}
