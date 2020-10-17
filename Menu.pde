void menu() {
  y = height;
    escudo = false;
    hoguera = false;
    espada = false;
  textSize(39);
  image(img[0], 0, 0, escX(1024), escY(768) );
  stroke(255);
  rectMode(CENTER);
  noFill();
  textAlign(CENTER);
  text("jugar", width/2, height-168);
  text("tutorial/creditos", width/2, height-88);
  rect(width/2,height-178,150,50);
  rect(width/2,height-103,350,50);

}

void clickMenu() {
  //cuatro condiciones para que una coordenada
  //este dentro de una zona rectangular:
  if ( mouseX>width/2-350/2 && mouseX<width+350/2 
  && mouseY>(height-103)-25 && mouseY<(height-103)+25 ) {
    //dentro de boton "VER CREDITOS":
    estado = 14;
  }


  //cuatro condiciones para que una coordenada
  //este dentro de una zona rectangular:
   if ( mouseX>width/2-75 && mouseX<width/2+75 
&& mouseY>(height-178)-25 && mouseY<(height-178)+25 ) {
    //dentro de boton "EMPEZAR":
    estado = 2;
    music.close();
    music = minim.loadFile("Caballero.mp3");
    music.loop();
 }
} 
