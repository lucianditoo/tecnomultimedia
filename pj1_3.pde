void pj1_3() {
  image(img[4], 0, 0, escX(1024), escY(768) );
  pushStyle();
  textAlign(CENTER);
  text("No dejas ni a uno vivo, eres el mas fuerte !", escX(500), escY(200) );
  popStyle();
  siguiente.continuar();
  
}

void clickPj1_3() {
  if ( mouseX>(width-80)-75 && mouseX<(width-80)+75 
 && mouseY>(height-15)-25/2 && mouseY<(height-15)+25/2 ) {
    estado ++;
    println("Tu escudo te ha salvado"); }
}
