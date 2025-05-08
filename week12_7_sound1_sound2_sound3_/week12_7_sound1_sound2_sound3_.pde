//week12_7_sound_Intro_ingame_sword_monkey
import processing.sound.*;
SoundFile sndInGame,sndIntro,sndMonkey,sndSword;
void setup(){
 size(400,400);
 sndInGame=new SoundFile(this,"InGame Music.mp3"); 
 sndIntro=new SoundFile(this,"Intro Song_Final.mp3"); 
 sndMonkey=new SoundFile(this,"Monkey 1.mp3"); 
 sndSword=new SoundFile(this,"sword slash.mp3"); 
 sndIntro.play(); //播放
}
boolean playingIntro=true;
void keyPressed(){  //按下空白建 進入遊戲音樂
  if(playingIntro){ //若在播"開場簡介"
    sndIntro.stop(); //開場簡介的音樂 stop
    sndInGame.play(); //進入遊戲關卡音樂play
    playingIntro=false; //現在沒播"開場簡介"
  }
  else{ //若沒播"開場簡介"
    sndInGame.stop();
    sndIntro.play();
    playingIntro=true;
  }
}
void mousePressed(){
  if(mouseButton==LEFT)sndSword.play();
  if(mouseButton==RIGHT)sndMonkey.play();
}
void draw(){ //記得要有個空的draw()函式 才會持

}
