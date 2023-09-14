void ob2(float x, float y, float d){
  fill(100,0,200);
  circle(x,y,10*d);
  fill(200,200,10);
  circle(x-2*d,y-2*d,2*d);
  circle(x+2*d,y-2*d,2*d);
  fill(100,200,10);
  circle(x,y,d);
  circle(x-2*d,y-2*d,d/2);
  circle(x+2*d,y-2*d,d/2);
  arc(x,y+2*d,4*d,4*d,0,PI);
  line(x-2*d,y+2*d,x+2*d,y+2*d);
  line(x-5*d,y-6*d,x-5*d,y);
  line(x-5*d,y-6*d,x,y-5*d);
  line(x,y-5*d,x+5*d,y-6*d);
  line(x+5*d,y-6*d,x+5*d,y);
}
