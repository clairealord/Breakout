void gameover() {
  background(purple);
  beatbox.rewind();
  beatbox.play();
  
  image(despacito, 0, 0, 800, 600);
  fill(255);
  textSize(100);
  text("You Win!", 180, 300);
  textSize(40);
  text("Click anywhere to continue", 130, 400);
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600) {
      mode = INTRO;
    }
}
