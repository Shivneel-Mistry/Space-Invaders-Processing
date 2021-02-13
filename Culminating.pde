// inital gun position, initial bullet position off the screen so you cant see it, initial bullet position, initial alien position
float player1X, player1Y, player2X, player2Y, gunX = 350, bulletY = 3750, bulletX = 355, ellX = random(0), ellY = 0, ship, alien, bulletposX, player1, player2;
boolean moveDown = true, moveUp = false, bullet = true; // bullet starts off not moving // alien moves down
int countA = 0, countY = 0, sTime, millis, seconds; //score for alien// score for me
PImage aliens, spaceship;
float sX, sY1, page;
void setup() {
  fullScreen(P3D);  //size along with rendering
  smooth(0);
  page = 1;
  aliens= loadImage("Space Invaders PNG.png");
  spaceship =loadImage("Spaceship PNG.png");
  spaceship.resize(150, 150);
  //  p1= loadImage("p1.png");
  //p2 = loadImage("p2.jpg");
  aliens.resize(150, 150);
  starback();//background setup
}
void draw() {
  seconds = second()-sTime;
  if (page==0) {
    instructions();
  }
  if (page == 1) {
    background(0);
    menu(); 
    backDraw();
  }
  if (page==2) {
    player1();
  }

  if (page==4) {
    endgame();
  }
} 
void keyPressed() {

  if (key == 'i') {
    page = 0;
  }
  if(page==2){
  if (key == ' ') {
    bulletX = sX +75;
    bulletY = 1750;
    moveUp = true;
  }
  }
  if (key == '1' ) {
    page = 2;
    sTime = second();
  }

  if (key == '0') {
    page = 1;
     }
     }
