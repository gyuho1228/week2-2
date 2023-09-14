float []a1, b1, c1, vx1, vy1;
float []a2, b2, c2, vx2, vy2;
float x, y;
float []dx, dy, d;

int score;
void setup(){
  
  size(1000, 1000);
  x = 500; y = 800;
  score = 0;
  

  a1 = new float[10];
  b1 = new float[10];
  c1 = new float[10];
  vx1 = new float[10];
  vy1 = new float[10];
  a2 = new float[10];
  b2 = new float[10];
  c2 = new float[10];
  vx2 = new float[10];
  vy2 = new float[10];
  dx = new float[10];
  dy = new float[10];
  d = new float[10];
  
  for(int i=0; i<6; i++){
    a1[i] = random(width);
    b1[i] = random(height);
    c1[i] = random(5, 15);
    vx1[i] = random(4, 6);
    vy1[i] = random(4, 6);
    a2[i] = random(width);
    b2[i] = random(height);
    c2[i] = random(5, 15);
    vx2[i] = random(4, 6);
    vy2[i] = random(4, 6);
  }
}
void draw(){
  
  background(0, 255, 255);
  
 fill(0,255,0);
  triangle(500,0,0,800,1000,800);
  fill(139,69,19);
  quad(300,800,700,800,700,1000,300,1000);


  
  for(int i=0; i<5; i++){
    a1[i] += vx1[i]; b1[i] += vy1[i];
    a2[i] += vx2[i]; b2[i] += vy2[i];
    ob1(a1[i],b1[i],c1[i]);
    ob2(a2[i],b2[i],c2[i]);
    
    if(a1[i]>width || a1[i]<0) vx1[i] = -vx1[i];
    if(b1[i]>height || b1[i] < 0) vy1[i] = -vy1[i];
    if(a2[i]>width || a2[i]<0) vx2[i] = -vx2[i];
    if(b2[i]>height || b2[i] < 0) vy2[i] = -vy2[i];
  }  
  cat(x, y, 10+2*score);
  if(keyPressed){
    if(key == 'd' ) x += 4;
    else if(key == 'a' ) x -= 4;
    else if(key == 'w' ) y -= 4;
    else if(key == 's' ) y += 4;
  }
  collide1();//아이템 먹기
  collide2();//적에 닿기
  collide3();//영역 밖으로 나가기
  
  if(0 <= score && score < 5){
    textSize(90);
    text("score:"+score, 500, 200);
  }
  else if (score == 5){
    textSize(90);
    text("Victory!", 500, 200);
    noLoop();
  }
  else if (score == -1){   //score == -1에서 게임 오버(장애물에 닿거나 영역에서 나간 경우)
    textSize(90);
    text("defeat", 500, 200);
    noLoop();
  }
}


void keyPressed(){  //r을 눌러 재시작
  if (key == 'r' || key == 'R') {
    setup();
    loop();
  }
}
