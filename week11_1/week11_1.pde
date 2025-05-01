//week11_1_people_saveStrings_loadStrings
PImage people,head,body,uparm1,hand1,uparm2,hand2;
float[] angle=new float[20]; //準備20個關節的變數
int ID = 0; //現在要處理的關節ID(第幾個關節)
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
}
void keyPressed(){
  if(key=='1') ID = 1; //左邊臂
  if(key=='2') ID = 2; //左邊手
  if(key=='3') ID = 3; //右邊臂
  if(key=='4') ID = 4; //右邊手
  if(key=='5') ID = 5; //(待用)
  if(key=='6') ID = 6; //(待用)
  if(key=='0') ID = 0; //頭
  
  if(key=='s'){ //從這裡開始 每次按's'就存一組angle
    String now = ""; //放到現在全部得關節裡
    for(int i=0;i<20;i++){ //利用for迴圈
      now += angle[i] + " "; //全部塞到now裡 記得有空
    }
    lines.add(now); //把現在的這行 加到lines裡
    String [] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
  } 
  if(key=='r'){ //replay，照著之前按's'存檔的lines 重播一次
    if(R==0){ //如果目前沒有任何東西
      String[]file=loadStrings("angles.txt");
      if(file!=null){ //如果有讀到檔案
        for(int i=0;i<file.length;i++){ //就檔案內容逐行
          lines.add(file[i]); //加到lines資料結構裡
        } 
      }
    }
    if(R<lines.size()){
      float [] now = float(split(lines.get(R),' '));
      for(int i=0;i<20;i++)angle[i]=now[i];
      R = (R+1)%lines.size();
    }
  }
}
int R = 0;
ArrayList<String>lines = new ArrayList<String>(); //放移動的結果
//到這裡結束
void setup(){
  size(560,560);
  people=loadImage("people.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  uparm1=loadImage("uparm1.png");
  hand1=loadImage("hand1.png");
  uparm2=loadImage("uparm2.png");
  hand2=loadImage("hand2.png");
}
void draw(){
  background(#FFFFF2);
  image(people, 0, 0); //基礎的人
  fill(255, 0, 255, 128); //半透明的紫
  rect(0, 0, 560, 560); //蓋上去
  
  pushMatrix();
    translate(275 , 120);
    rotate(radians(angle[1]));
    translate(-275, -120);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(242, 117);
      rotate(radians(angle[2]));
      translate(-242, -117);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(325 , 122);
    rotate(radians(angle[3]));
    translate(-325, -122);
    image(uparm1, 0, 0);
    pushMatrix();
      translate(367, 117);
      rotate(radians(angle[4]));
      translate(-367, -117);
      image(hand1, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(300,100);
    rotate(radians(angle[0]));
    translate(-300,-100);
    image(head, 0, 0); //再畫頭
  popMatrix();
  image(body, 0, 0); //再畫身體
}
