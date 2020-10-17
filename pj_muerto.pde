void pj_muerto() {
image(img[10], 0, 0, escX(1024), escY(768) );
rect(width/2,height-178,150,50);
pushStyle();
textAlign(CENTER);
text("Menu", width/2, height-168);
popStyle();
 if (escudo == true && hoguera == true && espada == false){
   pushStyle();
   textAlign(CENTER);
   text("Fin del juego", width/2, height-68);
   popStyle();
 } else if (escudo == true && hoguera == true && espada == true){
    pushStyle();
   textAlign(CENTER);
   text("Fin del juego", width/2, height-68);
   popStyle();
 } else {
   pushStyle();
   textAlign(CENTER);
   text("Has muerto", width/2, height-68);
   popStyle();}
 }

void clickPj_muerto() { 
   if ( mouseX>width/2-75 && mouseX<width/2+75 
&& mouseY>(height-178)-25 && mouseY<(height-178)+25 ) {
    estado = 0;
    music.close();
    music = minim.loadFile("ds3sound.mp3");
    music.loop();
    if (escudo == true && hoguera == true && espada == false){
    println("Has puesto a Gundyr a descansar...");
    println("Felicidades ! has desbloqueado el final ''El descanso de Gundyr''"); }
  } if (escudo == true && hoguera == true && espada == true){
    println("Has despertado el poder de las almas en tu interior...");
    println("Felicidades ! has desbloqueado el final ''El Santuario del Enlace de Fuego''"); }
}
