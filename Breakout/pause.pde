void pause() {
  background(255);
  fill(0);
  textSize(70);
  text("paused", 250, 300);
}

void pauseClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600) {
      mode = GAME;
    }
}
