void tutorialCreditos () {
  background(0);
  text("menu", 520, 680);
  rect(518,665,150,50);
}

void clickTutorialCreditos () {
  if ( mouseX>518-75 && mouseX<518+75 && mouseY>665-25 && mouseY<665+25 ) {
    estado = 0;
  }
}
