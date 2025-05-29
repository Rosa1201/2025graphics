//week15_4_Arcball_rotation_PGraphics_pg
//修改自week15_3
//偷Arcball File>Examples>Demos>Tests>MultipleWindows
PGraphics pg,pg2,pg3,pg4;  //在外宣告 不同人都可以用
Arcball arcball;  //用偷來的Arcball 宣告小寫arcball
void setup(){
  size(400,400,P3D);  //主要的視窗
  arcball=new Arcball(this,200);
  pg=createGraphics(200,200,P3D);
  pg2=createGraphics(200,200,P3D);
  pg3=createGraphics(200,200,P3D);
  pg4=createGraphics(200,200,P3D);
}
void mousePressed(){
  arcball.mousePressed();
}
void mouseDragged(){
  arcball.mouseDragged();
}
void draw(){  //空白的 要放喔
  background(255,0,0);  //紅色大背景
  pg.beginDraw();
  pg.background(0,255,0);  //綠色小背景
  arcball.run();
  //pg.translate(100,100);
  //pg.rotateY(radians(frameCount));
  pg.box(100);
  pg.endDraw();
  
  pg2.beginDraw();
  pg2.background(255,255,0);
  pg2.translate(100,100);
  pg2.rotateY(radians(frameCount));
  pg2.box(100);
  pg2.endDraw();
  
  pg3.beginDraw();
  pg3.background(0,0,255);
  pg3.translate(100,100);
  pg3.rotateY(radians(frameCount));
  pg3.box(100);
  pg3.endDraw();
  
  pg4.beginDraw();
  pg4.background(255,0,255);
  pg4.translate(100,100);
  pg4.rotateY(radians(frameCount));
  pg4.box(100);
  pg4.endDraw();
  
  image(pg,0,0);
  image(pg2,200,0);
  image(pg3,0,200);
  image(pg4,200,200);
}
