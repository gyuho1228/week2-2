void collide2(){//적에 닿기
  dx = new float[5];
  dy = new float[5];
  for (int i = 0; i<5; i++){
    dx[i] = x - a2[i];
    dy[i] = y - b2[i];
    d[i] = sqrt(dx[i]*dx[i] + dy[i]*dy[i]);
    if (d[i] < (3*(10+2*score) + 5*c2[i])){ 
      score = -1;
    }
  }
}
