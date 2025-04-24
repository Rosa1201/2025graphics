//week10_2_people_
PImage people,head,body;
void setup(){
  size(560,560);
  people=loadImage("people.png");
  head=loadImage("head.png");
  body=loadImage("body.png");

}
void draw(){
  background(#FFFFF2);
  image(people, 0, 0); //基礎的人
  fill(255, 0, 255, 128); //半透明的紫
  rect(0, 0, 560, 560); //蓋上去
  pushMatrix();
    translate(300,100);
    rotate(radians(mouseX));
    translate(-300,-100);
    image(head, 0, 0); //再畫頭
  popMatrix();
  image(body, 0, 0); //再畫身體
}
