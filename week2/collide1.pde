void collide1(){//아이템 먹기
  dx = new float[5];
  dy = new float[5];
  for (int i = 0; i<5; i++){
    dx[i] = x - a1[i];
    dy[i] = y - b1[i];
    d[i] = sqrt(dx[i]*dx[i] + dy[i]*dy[i]);
    if (d[i] < (3*(10+2*score) + 2*c1[i])){
      score += 1;
      a1[i] = 1100; b1[i] = 1100;
      
    }
  }
}
