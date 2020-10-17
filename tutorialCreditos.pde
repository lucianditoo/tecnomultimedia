void tutorialCreditos () {
  background(0);
  pushStyle();
  textAlign(CENTER);
  textSize(29);
  text("En esta aventura grafica tendras que tomar decisiones para poder          ",width/2, y+50 );
  text("avanzar. si sabes elegir correctamente las opciones podras avanzar, pero  ",width/2, y+150 );
  text("si te equivocas, moriras !!! en las pantallas en las que debes tomar       ",width/2, y+250 );
  text("decisiones puedes obtener pistas impresas en la consola si haces     ",width/2, y+350 );
  text("click en cualquier lugar de la pantalla, cuidado de clickear las opciones  ",width/2, y+450 );
  text("si no estas seguro de cual elegir. prueba todos los caminos y juega mas",width/2, y+550 );
  text("de una aventura para desbloquear todos los finales con todos los     ",width/2, y+650 );
  text("secretos del juego.   Historia del juego por...                 ",width/2, y+750 );
  text("Luciano Salbitano    fuente y juego original...                 ",width/2, y+850 );
  text("Dark souls III         by       FROMSOFTWARE...                 ",width/2, y+950 );
  y --;
  frameRate(30);
  popStyle();
  text("menu", width/2, height-88);
  rect(width/2,height-103,150,50);
}

void clickTutorialCreditos () {
   if ( mouseX>width/2-75 && mouseX<width/2+75 
&& mouseY>(height-103)-25 && mouseY<(height-103)+25 ) {
    estado = 0;
  }
}
