void pj1() { 
  background(0);
  textSize(29);
  text("Situados sobre un masivo saliente de roca, los muros y el castillo de      ",1000,y+50);
  text("Lothric son un testamento de su antigua gloria y poder. Sin embargo, a  ",1000,y+150);
  text("la llegada del Ser de la ceniza, el reino se encuentra en aparente ruina:  ",1000,y+250);
  text("practicamente todos los habitantes se han convertido en Huecos y los  ",1000,y+350);
  text("patios y caminos del castillo estan llenos de restos de caballeros y sol-  ",1000,y+450);
  text("dados difuntos, indicando que una guerra civil tuvo lugar en el pasado.",1000,y+550);
  text("Ahora que las campanas suenan una vez mas, dandole vida a tus cenizas ",1000,y+650);
  text("ha llegado el momento de emprender viaje una vez mas   ...     ",1000,y+750);
  text("continuar", width/1, height/1);
  stroke(255);
  rectMode(CENTER);
  noFill();
  rect(950, 760,150,50);
  y --;
  frameRate(30);
}


void clickPj1() {
  if ( mouseX>950-75 && mouseX<950+75 && mouseY>760-25 && mouseY<760+25 ) {
    estado = 3;
    music.close();
    music = minim.loadFile("Caballero.mp3");
    music.loop();
  }
}
