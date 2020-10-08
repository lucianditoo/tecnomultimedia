void pj1_1() { 
    image(img27, 0, 0, escX(1024), escY(768) );
    ellipse(escX(500), escY(100), 120, 120 );
    ellipse(escX(690),escY(520), 120, 120 );
   if ( colisionMouseSuperficieCircular( escX(690), escY(520), 120  ) ) {
    pushStyle();
    textAlign(CENTER);
    textSize(21);
    text("Recojer escudo", mouseX,mouseY);
    stroke(255,0,0);
    ellipse(escX(690),escY(520),120,120);
    popStyle();
 }
   if ( colisionMouseSuperficieCircular( escX(500), escY(100), 120  ) ) {
    pushStyle();
    textAlign(CENTER);
    textSize(21);
    text("Emprender viaje", mouseX,mouseY);  
    stroke(255, 0, 0);
    ellipse(escX(500), escY(100), 120, 120);
    popStyle();
 } else {stroke(255);
 }
}

void clickPj1_1() {
   if ( colisionMouseSuperficieCircular( escX(500), escY(100), 120  ) ) {
    estado = 4;
    println("Te has cruzado con un enemigo y te hirio de muerte... si tan solo tuvieras algo con que defenderte...");
}   else {println("Vaya, mi escudo sigue al lado de mi tumba despues de todo..."); }
   if ( colisionMouseSuperficieCircular( escX(690), escY(520), 120  ) ) {
     escudo = true;
     println("Has conseguido: Escudo del Guerrero");
     estado = 4;
   }
}
