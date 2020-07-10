void menu() {
    escudo = false;
    hoguera = false;
    espada = false;
  textSize(39);
  image(img1, 0, 0, 1024, 768);
  stroke(255);
  rectMode(CENTER);
  noFill();
  textAlign(CENTER);
  text("empezar", width/2+5, 600);
  text("tutorial/creditos", width/2, 680);
  rect(518,590,150,50);
  rect(518,665,350,50);

}

void clickMenu() {
  //cuatro condiciones para que una coordenada
  //este dentro de una zona rectangular:
  if ( mouseX>518-175 && mouseX<518+175 && mouseY>665-25 && mouseY<665+25 ) {
    //dentro de boton "VER CREDITOS":
    estado = 14;
  }


  //cuatro condiciones para que una coordenada
  //este dentro de una zona rectangular:
  if ( mouseX>518-75 && mouseX<518+75 && mouseY>590-25 && mouseY<590+25 ) {
    //dentro de boton "EMPEZAR":
    estado = 1;
  }
}
