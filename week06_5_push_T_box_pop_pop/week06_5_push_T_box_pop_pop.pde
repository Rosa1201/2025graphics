//week06_5_push_T_box_pop_pop
//慢慢組合出機器手臂
void setup(){
  size(500,400,P3D);  
}
void draw(){
  background(255); 
  translate(width/2,height/2); 
  sphere(10); 
  
  fill(252,131,77);
  pushMatrix(); //Step4 新的一組
    translate(x,y); //Step5 新的轉動
    //Step3 把程式往右縮排
    box(200,50,25); //Step5 手肘
    
    pushMatrix(); //Step3 把程式往右縮排
      translate(100,0); //Step1 發現放100 0很好
      //if(mousePressed)  //Step2 把剛剛的 if(mousePressed) 刪掉
      rotate(radians(frameCount));  //Step2 只轉動
      translate(25,0,0); // 往右推 讓左端放中心
      box(50,25,50); // 小手腕
    popMatrix(); //Step3 把程式往右縮排
  popMatrix();
}
float x = 0, y = 0; // 會動的位置
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x +" y:"+ y);
}
