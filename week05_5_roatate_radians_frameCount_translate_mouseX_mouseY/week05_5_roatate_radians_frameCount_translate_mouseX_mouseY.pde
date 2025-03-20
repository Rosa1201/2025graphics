//week05_5_roatate_radians_frameCount_translate_mouseX_mouseY
//比較rotate & translate的順序
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  //請做以下測試:把下面2行,調一下順序
  //會發現:畫東西之前的translate()才有效果
  //在電腦圖學裡,畫圖時會照著之前"累積的移動 旋轉"來放東西
  rotate(radians(frameCount)*20); //1秒有60個frame,轉60度,要變radians單位
  translate(mouseX,mouseY); //移動mouse所在位置
  rect(-50,-5,100,10); //寬度100的棒子,但放在左上角
}
