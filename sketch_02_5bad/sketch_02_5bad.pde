//week02_5_a_combine_02_4_and_02_3_bad
//描圖,卻出錯
PImage img;
void setup(){
  size(400,400);
  img=loadImage("cute.jpg");
}//記得把圖檔,(像上週一樣)拉到程式碼裡
void draw(){
  background(img);
  fill(255,200);//半透明的色彩 白色,alpha值是128
  rect(0,0,400,400);//畫超大的四邊形,全部蓋住
  
  stroke(255,0,0);//紅色的線
  if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);
}
