//week02_3_void_draw_stroke_if_mousePressed_line
void setup(){//一開始設定1次(貼上剛剛week02_2程式)
  size(400,400);
  background(255);
  fill(238);
  noStroke();
  float s= 400/14;//計算 每個格子的大小
  for(int i=0;i<14;i++){//左手 i對應y座標
    for(int j=0;j<14;j++){//右手 j對應x座標
      //rect(0,i*s*2,s,s);//先是一下位置
      if((i+j)%2==0)rect(j*s,i*s,s,s);
    }//下面才是真的程式碼,完成畫格子的任務
  }
}
void draw(){//每秒畫60秒
  stroke(150,50,255);//紅色的線
  if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);
}//如果nouse 按下去,就畫線,給兩個座標:現在mouse 和 之前的mouse
