void init() {
  smooth();
  noStroke(); 
  String[] teamNames = loadStrings("team.txt");
  txt = join(teamNames, "\n");
  
  buttonBack = loadImage("buttonBack.png");
  buttonHome = loadImage("buttonHome.png");
  buttonStart = loadImage("buttonStart.png");
  buttonNext = loadImage("buttonNext.png");
  start = loadImage("Flappy-Bird-1.jpg");
  help = loadImage("help3.png");
  topPipe = loadImage("topPipe.png");
  botPipe = loadImage("bottomPipe.png");
  hallowenBackground = loadImage("img4.jpg");
  christmasBackground = loadImage("img.jpg");
  hallowenBird = loadImage("bird2.png");
  christmasBird = loadImage("birdLive.png");
  birdDead = loadImage("birdDead.png");
  creepyGhost = loadImage("bat3.png");
  cuteGhost = loadImage("cuteghost2.png");
  modebgDay = loadImage("img.jpg");
  modeBgNight =loadImage("img4.jpg");
  gameOver = loadImage("gameOver.png");
  snow = loadImage("snow.png");
  snow2 = loadImage("snow2.png");
  stars = loadImage("stars6.PNG");
  
  click = new SoundFile(this, "mixkit-quick-win-video-game-notification-269.wav");
  hit = new SoundFile(this, "hit.mp3");
  halloweenMusic = new SoundFile(this, "halloween_music.wav");
  eat = new SoundFile(this, "eat.wav");
  jingleBells = new SoundFile(this, "christmasSong.wav");
  
  heart = loadShape("heart-svgrepo-com.svg");
  
  help.resize(50, 50);
  buttonHome.resize(80, 80);
  buttonBack.resize(80, 80);
  buttonNext.resize(80, 80);
  modebgDay.resize(578, 800);
  modeBgNight.resize(600, 800);
  creepyGhost.resize(70, 70);
  cuteGhost.resize(50, 50);
  hallowenBird.resize(70, 70);
  start.resize(800, 800);
  topPipe.resize(91, 445);
  botPipe.resize(91, 445);
  
  birdX = 200;
  birdY = 200;
  pipeW = topPipe.width;
  pipeH = topPipe.height;
  tries =3;
  pipeSpeed = 4;
  birdFaceX = birdX + christmasBird.width;
  hallowenBirdFaceX = birdX + hallowenBird.width;
  hallowenBirdFaceY = birdY + hallowenBird.height;
  g=1;
  gap = 300;
  distance = 250;
  currPipe = -1;
  
  isLife = true;
  isStart = true;
  isMode = false;
  christmasMode = true;
  
  //pipes loop
  pipeX = new int[4];
  pipeY = new int[pipeX.length];
  for (i=0; i< pipeX.length; i++) {
    pipeX[i] = width + distance*i; //distance between each pipe on x-axis
    pipeY[i] = (int)random(-350, 0); // height will be displayed on screen -> min = 95 (-350+ pipeH), max = 445 (pipeH)
  }
  
  //ghosts loop
  // 4 creepy, 4 cute. total 8
  ghostNum = 4;
  creepyGhosts = new ArrayList();
  cuteGhosts = new ArrayList();
  for (int i = 0; i < ghostNum; i++)
  {
    creepyGhosts.add(new Ghost());
    cuteGhosts.add(new Ghost());
  }

  //snow loop
  snowY = new int [30];
  snowX = new int [snowY.length];
  for (int i = 0; i < snowY.length; i++)
  {
    snowX[i] = (int)random(-10, width+10);
    snowY[i] = (int)random(-10, height);
  }
  
  //hearts loop
  heartX = new int[3];
  heartY = new int[heartX.length];
  for (int i = 0; i < heartX.length; i++)
  {
    heartX[i] = 25+ 30*i;
    heartY[i] = 25;
  }
}
