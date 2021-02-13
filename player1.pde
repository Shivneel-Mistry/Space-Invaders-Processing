boolean characterAlive = true;
void player1() {
  background(0);
  backDraw(); //redraw so no trails
  //textFont(font); //introducing font
  image(aliens, ellX, ellY, 150, 150); //alien
  text("Aliens:", 2250, 100);
  text(countA, 2600, 100);   //score for alien
  fill(33, 33, 55);   //black  
  image(spaceship, sX, sY1); //gun
  fill(0, 255, 0);
  text("Your Score:", 450, 100);
  text(countY, 1050, 100); //score for me
  ellipse(bulletX, bulletY, 10, 10); // bullet hidden in gun
  sX = constrain(mouseX, 5, 2850);
  sY1 = constrain(mouseY, 1750, 1750);
  if (moveDown == true) { // makes a circle moving in down direction
    ellY = ellY + 10;
  }
  if (ellY > 1750) {
    ellY = 0;
    ellX = random(150, 2850);
    moveDown = true; 
    countA++;
    if(countA > 2){
     characterAlive = false; 
    }
  }
  if (moveUp == true) { //moves bullet up
    bulletY =  bulletY-10;
  }
  if (bulletY<10) { //resets bullet
    bulletY=1750;
    moveUp = false;
  }
  if (bulletY < ellY +150 && bulletY > ellY && bulletX < ellX +150 &&  bulletX> ellX-150) {
    ellY = 0;
    ellX =random(10, 3000);
    moveDown = true;
    countY++;
  }
  if (seconds > 59 && characterAlive == true) {
    characterAlive = false;
    endgame();
  }
  if (characterAlive == false) {
    endgame();
  }
  text(seconds, 140, 90);
}