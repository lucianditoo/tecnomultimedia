void pj1_5Ab() { 
  if (hoguera == true){
  image(img[6], 0, 0, escX(1024), escY(768) );
  ellipse(escX(600), escY(465), 120, 120 );
  ellipse(escX(550), escY(250), 120, 120 );
   if ( colisionMouseSuperficieCircular( escX(550), escY(250), 120  ) ) {
    pushStyle();
    textAlign(CENTER);
    textSize(21);
    text("Retirar espada del cuerpo de Gundyr...", mouseX,mouseY);
    stroke(255,0,0);
    ellipse(escX(550), escY(250), 120, 120);
    popStyle();
 }
   if ( colisionMouseSuperficieCircular( escX(600), escY(465), 120  ) ) {
    pushStyle();
    textAlign(CENTER);
    textSize(21);
    text("Poner fin al sufrimiento de Gundyr!", mouseX,mouseY);  
    stroke(255, 0, 0);
    ellipse(escX(600), escY(465), 120, 120);
    popStyle();
 } else {stroke(255);
}
 } else if (hoguera == false) {
    image(img[7], 0, 0, escX(1024), escY(768) ); 
    gameOver.fin();
 }
}

void clickPj1_5Ab() { 
 if ( colisionMouseSuperficieCircular( escX(600), escY(465), 120  ) ) {
   println("Atraviesas a Gundyr con tu espada..."); 
   estado ++;
}
   if ( colisionMouseSuperficieCircular( escX(550), escY(250), 120  ) ) {
     espada = true;
     println("Consigues: ''Espada del enlace de Fuego''");
     estado ++;
   }
   if ( mouseX>(width-80)-75 && mouseX<(width-80)+75 
 && mouseY>(height-45)-25/2 && mouseY<(height-45)+25/2 ) {
    estado = 13;
    println("Has Muerto");}
}
