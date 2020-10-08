void pj1_2Ab() { 
  textSize(29);
  pushStyle();
  textAlign(CENTER);
  text("(Haz click en ''Siguiente'' para continuar)",escX(500),escY(200) );
  popStyle();
  if (escudo == true){
   image(img23, 0, 0, escX(1024), escY(768) );
   pushStyle();
   textAlign(CENTER);
   text("Te enfrentas a varios enemigos... pero sobrevives",escX(500),escY(200) );
   popStyle();
   siguiente.continuar();
 } else if (escudo == false){
   image(img21, 0, 0, escX(1024), escY(768) );
   gameOver.fin();
 }
}

void clickPj1_2Ab() { 
  if (escudo == true){
  if ( mouseX>(width-80)-75 && mouseX<(width-80)+75 
 && mouseY>(height-15)-25/2 && mouseY<(height-15)+25/2 ) {
    estado ++;
    println("Comienza la aventura"); }
 } else if (escudo == false){
    if ( mouseX>(width-80)-75 && mouseX<(width-80)+75 
 && mouseY>(height-45)-25/2 && mouseY<(height-45)+25/2 ) {
    estado = 13;
    println("Has Muerto");
  }
 }
}
