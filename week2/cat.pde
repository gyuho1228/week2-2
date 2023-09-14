void cat(float x, float y, float d){
  strokeWeight(0.05 * d);
  fill(#000000);
  rect(x-3*d, y-3*d, 6*d, 3*d);
  fill(#ffffff);
  circle(x, y, 6*d);
  fill(#FFCC99);
  arc(x+3*d, y-3*d, 6*d, 6*d, PI/2, PI);
  fill(#ffffff);
  line(x+2*d, y-d/2, x+4*d, y-d);
  line(x+2*d, y, x+4*d, y);
  line(x+2*d, y+d/2, x+4*d, y+d);
  line(x-2*d, y-d/2, x-4*d, y-d);
  line(x-2*d, y, x-4*d, y);
  line(x-2*d, y+d/2, x-4*d, y+d);
  arc(x-d/2,y,d,d, 0,PI);
  arc(x+d/2,y,d,d, 0,PI);
  strokeWeight(0.5 * d);
  point(x-d, y-d);
  point(x+d, y-d);
  point(x, y);
  strokeWeight(0.05 * d);
}
