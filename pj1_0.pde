void pj1() { 
  background(0);
  pushStyle();
  textAlign(CENTER);
  textSize(29);
  text("Situados sobre un masivo saliente de roca, los muros y el castillo de      ",width/2, y+50 );
  text("Lothric son un testamento de su antigua gloria y poder. Sin embargo, a  ",width/2, y+150 );
  text("la llegada del Ser de la ceniza, el reino se encuentra en aparente ruina:  ",width/2, y+250 );
  text("practicamente todos los habitantes se han convertido en Huecos y los  ",width/2, y+350 );
  text("patios y caminos del castillo estan llenos de restos de caballeros y sol-  ",width/2, y+450 );
  text("dados difuntos, indicando que una guerra civil tuvo lugar en el pasado.",width/2, y+550 );
  text("Ahora que las campanas suenan una vez mas, dandole vida a tus cenizas ",width/2, y+650 );
  text("ha llegado el momento de emprender viaje una vez mas   ...     ",width/2, y+750 );
  stroke(255);
  rectMode(CENTER);
  noFill();
  rect(width-80, height-15,150,25);
  y --;
  frameRate(30);
  popStyle();
  siguiente.continuar();
}


void clickPj1() {
  if ( mouseX>(width-80)-75 && mouseX<(width-80)+75 
 && mouseY>(height-15)-25/2 && mouseY<(height-15)+25/2 ) {
    estado ++;
    println("Continuar"); 
    music.close();
    music = minim.loadFile("Caballero.mp3");
    music.loop();
    y = 720;
  }
}
