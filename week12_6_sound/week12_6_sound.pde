//week12_6_sound
//要有聲音 需要聲音的圖書館函式庫
//Sketch_Library_Managed Libraries 找sound會看到
//看到sound|Provides a simple way to work with audio 
//選他 右下角 下載(有勾勾)
//安裝好Sound後  會有File_Examples點開Libraries核心函式庫Sound
//Soundfile 那堆範例 看SimplePlayback 簡單播放音樂的範例
import processing.sound.*;
SoundFile mySound;
void setup(){
 size(400,400);
 mySound=new SoundFile(this,"music.mp3"); //
 mySound.play(); //播放
}
void draw(){ //記得要有個空的draw()函式 才會持

}
