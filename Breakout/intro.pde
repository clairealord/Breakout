void intro() {
  coffin.rewind();
  coffin.play();
  
  image(shrekya, -500, 0, 1500, 600);
  fill(0);
  textSize(50);
  text("Not Breakout", 200, 100);
  textSize(25);
  text("The sequel to 'Not Pong'", 200, 150);

  //START BUTTON --------------------
  fill(255);
  strokeWeight(5);
  tactile(255, 400, 300, 100);
  rect(225, 400, 300, 100);
  fill(0);
  textSize(70);
  text("Yayaya", 255, 475);

  fill(255);
  tactile(750, 550, 50, 50);
  rect(750, 550, 50, 50);
  fill(0);
  textSize(20);
  text("?", 770, 580);

  image(gif[frame], 0, 0, width/4, height/4);
  frame++;
  if (frame == 10) frame = 0;
  image(gif[frame], 600, 0, width/4, height/4);
  frame++;
  if (frame == 10) frame = 0;
  }

  void introClicks() {
    //START BUTTON CLICKS -------------------- 
    if (mouseX > 225 && mouseX < 525 && mouseY > 400 && mouseY < 500) {
      mode = GAME;
      
      //ok before you laugh at me just know that I spent 2 hours experimenting with loops and none of them worked
      //i dont know why they didnt work but i know I was putting the right stuff 
      //at least the game resets lol
      alive[0] = true;
      alive[1] = true;
      alive[2]= true;
      alive[3] = true;
      alive[4] = true;
      alive[5] = true;
      alive[6] = true;
      alive[7] = true;
      alive[8] = true;
      alive[9] = true;
      alive[10] = true;
      alive[11] = true;
      alive[12] = true;
      alive[13] = true;
      alive[14] = true;
      alive[15] = true;
      alive[16] = true;
      alive[17] = true;
      alive[18] = true;
      alive[19] = true;
      alive[20] = true;
      alive[21] = true;
      alive[22] = true;
      alive[23] = true;
      alive[24] = true;
      alive[25] = true;
      alive[26] = true;
      alive[27] = true;
      alive[28] = true;
      alive[29] = true;
      alive[30] = true;
      alive[31] = true;
      alive[32] = true;
      alive[33] = true;
      alive[34] = true;
      alive[35] = true;
      alive[36] = true;
      alive[37] = true;
      alive[38] = true;
      alive[39] = true;
      alive[40] = true;
      alive[41] = true;
      alive[42] = true;
      alive[43] = true;
      alive[44] = true;
     
    }
  
    if (mouseX > 750 && mouseX < 800 && mouseY > 550 && mouseY < 600) {
      mode = SECRET;
    }
  }
