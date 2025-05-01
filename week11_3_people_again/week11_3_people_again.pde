//week11_3_people_again
//重新來一次 讓程式的架構便更清楚
PImage people,head,body,uparm1,hand1,uparm2,hand2,foot1,foot2;
void setup(){
  size(560,560);
  people=loadImage("people.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  uparm1=loadImage("uparm1.png");
  hand1=loadImage("hand1.png");
  uparm2=loadImage("uparm2.png");
  hand2=loadImage("hand2.png");
  foot1=loadImage("foot1.png"); //增加腳旋轉中心
  foot2=loadImage("foot2.png"); //增加腳旋轉中心
}
float[]angleX=new float[10]; //在3D的世界裡 我們的轉軸
float[]angleY=new float[10];
int ID=0; //一開始是頭的關節
ArrayList<String>lines=new ArrayList<String>();
void keyPressed(){
  if(key=='s'){ //現在動作的所有關節，都存起來
    String now = ""; //空字串 
    for(int i=0;i<10;i++){ 
      now += angleX[i] + " "; //後面有空格 
      now += angleY[i] + " "; //後面有空格 
    }
    lines.add(now); //把現在的這行 加到lines裡
    String [] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
    println("現在存檔:"+now);
  }
  if(key=='r'){ 
      String[]file=loadStrings("angles.txt");
      if(file!=null){ 
        for(int i=0;i<file.length;i++){ 
          lines.add(file[i]); 
          println("現在讀檔:"+file[i]);
        } 
      }
    }
  if(key=='p') playing = !playing; //播動畫<=>不播動畫
  
  if(key=='1') ID = 1; //左邊臂
  if(key=='2') ID = 2; //左邊手
  if(key=='3') ID = 3; //右邊臂
  if(key=='4') ID = 4; //右邊手
  if(key=='5') ID = 5; //左邊腳
  if(key=='6') ID = 6; //右邊腳
  if(key=='0') ID = 0; //頭
}
boolean playing=false; //一開始，不播動畫，按下'p'可切換
void mouseDragged(){
  angleX[ID] += mouseX - pmouseX;
  angleY[ID] += mouseY - pmouseY; //多了這一行
}
int R=0;
void myInterpolate(){
  if(lines.size()>=2){
    float alpha = (frameCount%30)/30.0;
    if(alpha==0.0)R=(R+1)%lines.size();
    int R2=(R+1)%lines.size();
    float [] oldAngle=float(split(lines.get( R ),' '));
    float [] newAngle=float(split(lines.get( R2 ),' '));
    for(int i=0;i<10;i++){
      angleX[i]=oldAngle[i*2+0]*(1-alpha)+newAngle[i*2+0]*alpha;
      angleY[i]=oldAngle[i*2+1]*(1-alpha)+newAngle[i*2+1]*alpha;
    }
  }
}

void draw(){
  background(#FFFFF2);
  if(playing)myInterpolate();
  image(people, 0, 0); //基礎的人
  fill(255, 0, 255, 128); //半透明的紫
  rect(0, 0, 560, 560); //蓋上去
  
  
  image(body, 0, 0); //先畫身體
  pushMatrix();
    translate(300,100);
    //rotate(radians(angle[0]));
    translate(-300,-100);
    image(head, 0, 0); //再畫頭
  popMatrix();

  pushMatrix();
    translate(275 , 120);
    //rotate(radians(angle[1]));
    translate(-275, -120);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(242, 117);
      //rotate(radians(angle[2]));
      translate(-242, -117);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(325 , 122);
    //rotate(radians(angle[3]));
    translate(-325, -122);
    image(uparm1, 0, 0);
    pushMatrix();
      translate(367, 117);
      //rotate(radians(angle[4]));
      translate(-367, -117);
      image(hand1, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix(); //腳1
    translate(279, 212);
    //rotate(radians(angle[4]));
    translate(-279, -212);
    image(foot1, 0, 0);
  popMatrix();

  pushMatrix(); //腳2
    translate(321, 213);
    //rotate(radians(angle[4]));
    translate(-321, -213);
    image(foot2, 0, 0);
  popMatrix();
}
