void menu() {
  page=1;  
  textSize(150);
  text("Welcome to Space Invaders", width/2, height/5);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("PRESS 1 FOR SINGLE PLAYER", ((width/2)), (height/2)-100);
  text("PRESS 'I' FOR INSTRUCTIONS", width/2, ((height/2)+400));
  textSize(25);
  text("Shivneel Mistry", width/2, height/2 +800);
}
void endgame() {
  background(0);
  textSize(90);
  text("Your Score is:"+countY, width/2, height/2);
  text("Press '0' to return to main menu", width/2, height-100);
}
