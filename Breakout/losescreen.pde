void losescreen() {
  e.rewind();
  e.play();
  
  image(birthdayuwu, 0, 0, 800, 600);
  fill(255, 0, 0);
  textSize(75);
  text("You lose lol", 200, 300);
  textSize(30);
  text("click anywhere to continue", 200, 350);
}

void losescreenClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600) {
      mode = INTRO;
    }
}
