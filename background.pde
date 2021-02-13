float[] star1 =new float[750], star2=new float[750], speed=new float[750];
void starback() {
  stroke(255);
  strokeWeight(1);
  for (int x = 0; x < 750; x++) {  
    star1[x] = random(0, width);
    star2[x] = random(0, height);
    speed[x] = (2*(random(1, 2)));
    x = x + 1;
  }
}
void backDraw() {
  int x = 0;
  while (x < 750) {
    point(star1[x], star2[x]);
    star2[x] = star2[x]- speed[x];
    if (star2[x]<0) {
      star2[x] = height;
    }
    x = x + 1;
  }
}