//week08_4_gudam_body_haed
//慢慢把「切割開」的模式,逐一組合起來
PShape body, head;
void setup(){
  size(400,400,P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
}
void draw(){
  background(255);
  translate(width/2,height/2+100);
  sphere(10); //基準點
  scale(10,-10,10);
  pushMatrix();
    translate(0.0,+22.5); //(3)再掛回原來的地方
    rotate (radians(x)); //(2)轉動
    //translate(x/10,y/10); //要放在小x,y座標
    //println(x/10,y/10); //印出座標,等一下要去上面的數
    translate(0.0,-22.5); //(1)我們的頭的中心,有放在旋轉中心
    shape(head,0,0);
  popMatrix();
  shape(body,0,0);
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y-=mouseY-pmouseY;
}
