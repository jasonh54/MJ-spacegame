class Timer{
  int timeStamp;
  int interval;
  public Timer(int interval){
    timeStamp = 0;
    this.interval = interval;
  }
  public boolean countDown(){
    if(millis() > timeStamp + interval){
      timeStamp = millis();
      return true;
    }
    return false;
  }
}
