void game() {
  background(darkBlue);
  image(shrekyo, -100, 0, 1500, 600);

  paddlex = mouseX;
  //DRAW PADDLE --------------------
  stroke(0);
  strokeWeight(3);
  fill(cream);
  ellipse(paddlex, paddley, paddled, paddled);

  //DRAW BALL --------------------
  fill(cream);
  stroke(0);
  strokeWeight(3);
  circle(ballx, bally, balld);

  //PAUSE BUTTON --------------------
  strokeWeight(3);
  fill(255);
  tactile(3, 3, 50, 50);
  square(3, 3, 50);

  //MOVE BALL --------------------
  if (mode == GAME) {
    ballx = ballx + ballvx;
    bally = bally + ballvy;
  }
  //BOUNCING OFF WALLS --------------------
  if (bally < 10||bally > height-10 ) {
    ballvy = ballvy * -1;
  }
  if (ballx < 10||ballx > width-10) {
    ballvx = ballvx * -1;
  }

  //LIVES AND SCORING --------------------
  if (bally > 590) {
    lives = lives-1;
  }

  if (lives < 1) {
    mode = LOSESCREEN;
  }

  if (score > 44) {
    mode = GAMEOVER;
  }
  //BOUNCING OFF PADDLE --------------------
  d = dist(ballx, bally, paddlex, paddley);
  if (d <= r+R) {
    ballvx = (ballx - paddlex)/15;
    ballvy = (bally - paddley)/15;
  }

  //BRICKS --------------------
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i++;
  }

  //SCORE AND LIVES --------------------
  fill(255);
  textSize(35);
  text("Score:" +score, 50, 40);
  text("Lives:" +lives, 625, 40);
}

void gameClicks() {
  if (mouseX > 3 && mouseX < 53 && mouseY > 3 && mouseY < 53) {
    mode = PAUSE;
  }
}

void manageBrick(int i) {
  if (y[i] == 80)  fill(pink);
  if (y[i] == 160) fill(green);
  if (y[i] == 240) fill(lightBlue);
  if (y[i] == 320) fill(purple);
  if (y[i] == 400) fill(earth);
  strokeWeight(0);
  circle (x[i], y[i], brickd);
  d = dist(ballx, bally, x[i], y[i]); //brick bounce ----------
  if (d <= r + brickd/2) {
    ballvx = (ballx - x[i])/5;
    ballvy = (bally - y[i])/5;
    alive[i] = false;
    score++;
    error.rewind();
    error.play();
  }
}
