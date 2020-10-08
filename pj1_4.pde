void pj1_4() {
  image(img7, 0, 0, escX(1024), escY(768) );
  ellipse(escX(600), escY(465), 120, 120  );
  ellipse(escX(820), escY(550), 120, 120  );
   if ( colisionMouseSuperficieCircular( escX(820), escY(550), 120  ) ) {
    pushStyle();
    textAlign(CENTER);
    textSize(21);
    text("Descansare...", mouseX,mouseY);
    stroke(255,0,0);
    ellipse(escX(820), escY(550), 120, 120);
    popStyle();
 }
   if ( colisionMouseSuperficieCircular( escX(600), escY(465), 120  ) ) {
    pushStyle();
    textAlign(CENTER);
    textSize(21);
    text("Estas heridas no son nada, soy invencible!", mouseX,mouseY);  
    stroke(255, 0, 0);
    ellipse(escX(600), escY(465), 120, 120);
    popStyle();
 } else {stroke(255);
 }
}

void clickPj1_4() {  
  if ( colisionMouseSuperficieCircular( escX(600), escY(465), 120  ) ) {
    estado ++;
    println("Te cruzas con un enemigo, parecia debil, pero logra atravesarte con su espada facilmente debido a tus heridas... ");
}   else {println("He perdido mucha sangre..."); }
   if ( colisionMouseSuperficieCircular( escX(820), escY(550), 120  ) ) {
     hoguera = true;
     println("Descansas y el poder de la hoguera sana tus heridas !");
     estado ++;
   } 
}
