void personajeElegir() {
  image(img4, 0, 0, 1024, 768);
if ( mouseX>250-215 && mouseX<250+215 && mouseY>424-310 && mouseY<424+310 ) {
  textAlign(LEFT);
  textSize(21);
  text("Pyromantico:", mouseX,mouseY);
  text("Sus poderes surgieron del caos,", mouseX+15,mouseY+15);
  text("conjura fuego para atacar a distancia", mouseX+15,mouseY+30);
  }
if ( mouseX>780-215 && mouseX<780+215 && mouseY>424-310 && mouseY<424+310 ) {
  textAlign(RIGHT);
  textSize(21);
  text("Caballero:", mouseX-5,mouseY);
  text("Resistente y habil en combate, sus", mouseX-5,mouseY+15);
  text("enemigos sucumbiran ante su fuerza", mouseX-5,mouseY+30);
  }
} 

void clickPersonaje() {
  if ( mouseX>250-215 && mouseX<250+215 && mouseY>424-310 && mouseY<424+310 ) {
    //Pyromantico elegido:
    estado = 0;
  }
  if ( mouseX>780-215 && mouseX<780+215 && mouseY>424-310 && mouseY<424+310 ) {
    //Caballero elegido:
    estado = 2;
    music.close();
    music = minim.loadFile("Caballero.mp3");
    music.loop();
  }
} 
