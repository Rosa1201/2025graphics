//week10_4_people_
PImage people,head,body,uparm1,hand1,uparm2,hand2;
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
    rotate(radians(mouseX));
    translate(-275, -120);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(242, 117);
      rotate(radians(mouseX));
      translate(-242, -117);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(325 , 122);
    rotate(radians(mouseX));
    translate(-325, -122);
    image(uparm1, 0, 0);
    pushMatrix();
      translate(367, 117);
      rotate(radians(mouseX));
      translate(-367, -117);
      image(hand1, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(300,100);
    rotate(radians(mouseX));
    translate(-300,-100);
    image(head, 0, 0); //再畫頭
  popMatrix();
  image(body, 0, 0); //再畫身體
}
