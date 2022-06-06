class Timer{
  int timeStamp;
  int interval;
  //timers are constructed using an interval value
  public Timer(int interval){
    timeStamp = 0;
    this.interval = interval;
  }
  //this function checks whether or not a certain amount of time interval has passed
  //returns a boolean
  public boolean countDown(){
    if(millis() > timeStamp + interval){
      timeStamp = millis();
      return true;
    }
    return false;
  }
}
