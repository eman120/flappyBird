import processing.sound.*;
SoundFile jingleBells, click, hit, halloweenMusic, eat;
PImage start, topPipe, botPipe, bird, background, snow, snow2, modebgDay, modeBgNight, birdDead, creepyGhost, cuteGhost, gameOver, christmasBackground, hallowenBackground, christmasBird, hallowenBird, help, stars, buttonBack,buttonHome,buttonStart, buttonNext;

PShape heart;
int[] pipeX, pipeY, snowX, snowY, heartX, heartY ;
ArrayList <Ghost> creepyGhosts, cuteGhosts ;
int i, speed = 1, g, birdFaceX, hallowenBirdFaceX, tries, gap, backgroundX, backgroundY, birdX, life, pipeW, pipeH, score, pipeSpeed, distance, currPipe, ghostNum;
boolean isLife, isMode, christmasMode, isStart;
float angle = 0.0, y = 200.0, birdY, birdYS, hallowenBirdFaceY;
String txt;
float angleBird = 0.0, gBird =0.05;
PFont font;

void setBackground()
{ 
  background = christmasMode?  christmasBackground: hallowenBackground; 
  background.resize(800, 800);
  image(background, backgroundX, backgroundY);
  image(background, backgroundX + background.width, backgroundY);
  backgroundX = backgroundX - 1 ; //background speed control
  if (backgroundX < -background.width)
  {
    backgroundX = 0; //reset when first image is done
  }
}

void birdHearts() {
  for (int i = 0 ; i < tries ; i++ )
  {
    shape(heart, heartX[i], heartY[i], 25, 25);
  }
}


void setBird() {
  bird = christmasMode? christmasBird : hallowenBird;
  image(bird, birdX, birdY);
  birdY = birdY + birdYS;
  birdYS += 0.8; //bird gravity ++ each iteration of draw
  if (birdY + bird.height >= height) {
    tries--;
  }
}

void jump() {
  if ((mousePressed && mouseButton == LEFT) || (keyPressed && key == ' ')) {
    if (birdY >= bird.height)
      birdYS = -10;
  }
}
