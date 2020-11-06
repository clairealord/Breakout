void secret() {
  background(purple);
  image(egg, 200, 100, 400, 400);
  fill(0);
  textSize(30);
  text("You have found the egg.", 225, 75);
  text("Now pay your sacrifice.", 240, 550);
}

void secretClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600) {
    mode = INTRO;
  }
}
