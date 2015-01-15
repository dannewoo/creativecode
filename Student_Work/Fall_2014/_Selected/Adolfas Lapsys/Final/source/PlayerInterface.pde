class PlayerInterface{
//  Movie[] mov;
  AudioPlayer ap;
  int w, hPos;
  float currentPos, endPos, relativePos;
  float bpm, startMs, msPerTick;
  float spaceCount;
  PlayerInterface(AudioPlayer _ap/*, Movie[] _mov*/){
    ap = _ap;
//    mov = _mov;
    w = width;
    currentPos = 0;
    endPos = 0;
    relativePos = 0;
    hPos = 0;
    bpm = 0;
    startMs = 0;
    msPerTick = 0;
    spaceCount = 0;
  }
  
  boolean barEnabled = false;
  
  void enable(){
    currentPos = ap.position();
    endPos = ap.length();
    relativePos = currentPos/endPos;
    hPos = int(relativePos * w);
    if(keyPressed){
      if (key == 32){
        spaceCount++;
        if(spaceCount%2 == 1){
//          mov[0].play();
          ap.play();
        } else {
          ap.pause();
//          mov[0].pause();
        }
        delay(100);
      }
    }
  }
  
//  void videoAtTime(int movID, int startMs, int endMs, float startPos){
//    if (spaceCount > 0){
//      if (elapsedMs() == startMs){
//        mov[movID].play();
//        mov[movID].jump(startPos);
//        image(mov[movID], 0, 0, width, height);
//      } else if (elapsedMs() > startMs && elapsedMs() < endMs){
//        image(mov[movID], 0, 0, width, height);
//      } else if (elapsedMs() == startMs){
//        mov[movID].stop();
//      }
//    }
//  }
  
  void showBar(){
    pushMatrix();
    noStroke();
    fill(200, 20);
    rect(0, height-80, width, 80);
    fill(100, 20);
    rect(0, height-75, width, 30);
    fill(200, 20);
    rect(0, height-70, hPos, 20);
    popMatrix();
    barEnabled = true;
  }
  
  void showStats(int ts){
    String a, t, sc;
    a = (int(currentPos) + "/" + int(endPos));
    t = (int((elapsedMs()/msPerTick) + 1) + "");
    pushMatrix();
    textAlign(RIGHT);
    textSize(ts);
    fill(300);
    text(a, width, height - (85 + ts));
    text(t, width, height - (90 + (ts * 2)));
    popMatrix();
  }
  
  void setStartMs(float _startMs){
    startMs = _startMs;
  }
  
  void setTickRate(float _bpm){
    bpm = _bpm;
    msPerTick = (60000/_bpm);
  }
  
  float elapsedMs(){
    return ap.position() - startMs;
  }
  
  float positionMs(){
    return ap.position();
  }
  
  float ticks(){
    return floor(elapsedMs()/msPerTick) + 1;
  }
  
  float ticksToElapsedMs(int i){
    return (msPerTick * (i - 1)) + startMs;
  }
}
