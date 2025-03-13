//week04_05a_rotateZ_translate_box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2); //移動到畫面中心
  
      //把以下兩行分別註解 排列組合觀察
      rotateZ(radians(frameCount)); //對Z軸旋轉
      translate(0,-50); //把下端 移動到中心去
      box(10,100,10); //可移動的長條
}
