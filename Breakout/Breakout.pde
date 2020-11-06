
//Claire Lord
//Block 1-2 A
//Oct 27, 2020

//MINIM --------------------
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer coffin, e, beatbox, error;

//ARRAYS --------------------
int[] x;
int[] y;
boolean[] alive;
int brickd;
int n; //number of bricks ----------
int tempx; //planning variables for calculating where the bricks will go
int tempy;
PImage[] gif;
int frame;

//MODE FRAMEWORK --------------------
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;
final int SECRET   = 5;
final int LOSESCREEN = 6;

//ENTITY VARIABLES --------------------
float paddlex, paddley, paddled; //paddle ----------
float ballx, bally, balld, ballvx, ballvy; //ball ----------

float d, r, R;

int score, lives;

//COLOUR PALLETE --------------------
color darkBlue     = #151937;
color cream        = #D9C9A6;
color lightBlue    = #25F4F9;
color pink         = #F80BA7;
color green        = #A1FC22;
color earth        = #AEAC77;
color purple       = #AB7AFF;

//IMAGES --------------------
PImage shrekya;
PImage shrekyo;
PImage egg;
PImage birthdayuwu;
PImage despacito;

void setup() {
  size (800, 600);
  mode = INTRO;
  
  //SOUND EFFECTS --------------------
minim = new Minim(this);
coffin = minim.loadFile("coffin.mp3");
e = minim.loadFile("coffin.mp3");
beatbox = minim.loadFile("beatbox.mp3");
error = minim.loadFile("errorcopy.mp3");
  // LOAD GIF --------------------
  gif = new PImage[12];

  int g = 0;
  while (g < 10) {
    gif[g] = loadImage("frame_"+g+"_delay-0.1s.jpg");
    g++;
  }

  //ARRAYS ------------------
  n = 45;
  x = new int[n];
  y = new int[n];
  brickd = 35;
  alive = new boolean[n];
  
  tempx = 80;
  tempy = 80;
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 80;
    if (tempx == width) {
      tempy = tempy + 80;
      tempx = 80;
    }
    i++;
  }
  //INITIALIZE PADDLE -------------------
  paddley = 600;
  paddled = 175;


  //INITIALIZE BALL --------------------
  ballx = width/2;
  bally = 500;
  balld = 20;

  ballvx = 5;
  ballvy = 5;

  r = balld/2;
  R = paddled/2;

  //INITIALIZE IMAGES --------------------
  shrekya = loadImage("Shrekya.jpg");
  shrekyo = loadImage("Shrekyo.jpg");
  egg     = loadImage("egg.jpg");
  birthdayuwu = loadImage("birthdayuwu.jpg");
  despacito = loadImage("despacito.jpg");

  //SCORING AND LIVES --------------------
  score = 0;
  lives = 3;
}

void draw() {
  if (mode == INTRO) {
    intro();
    score = 0;
    lives = 3;
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == SECRET) {
    secret();
  } else if (mode == LOSESCREEN) {
    losescreen();
  } else {
    println("Mode error: "+ mode);
  }
}
