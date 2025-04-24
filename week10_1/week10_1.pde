//week10_1_people_
//頭 身體 手臂 手肘 腳
size(600,600);
PImage people=loadImage("people.png");
PImage head=loadImage("head.png");
PImage body=loadImage("body.png");
background(#FFFFF2);
image(people, 0, 0); //基礎的人
fill(255, 0, 255, 128); //半透明的紫
rect(0, 0,600, 600); //蓋上去
image(head, 0, 0); //再畫頭
image(body, 0, 0); //再畫身體
