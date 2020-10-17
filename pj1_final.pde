void pj1_final() { 
   if (espada == true){
     image(img[8], 0, 0, escX(1024), escY(768) );
     pushStyle();
     textAlign(CENTER);
     textSize(29);
     text("Luego de conseguir la Espada del enlace de Fuego continuas tu camino       ",width/2, y+50 );
     text("hasta el castillo donde se encuentra la cuidadora del enlace de la primera  ",width/2, y+150 );
     text("llama, al reencontrarte con ella no puede evitar abrazarte     ",width/2, y+250 );
     text("Ser de ceniza, estoy aqui para servirte por siempre, te dice con total  ",width/2, y+350 );
     text("sinceridad al igual que siempre.          ",width/2, y+450 );
     text("Que sera esta vez, luz ? oscuridad ?    ",width/2, y+550 );
     text("sin importar lo que elijas siempre estare a tu lado, ser de ceniza    ",width/2, y+650 );
     text("ha llegado el momento de emprender viaje una vez mas   ...     ",width/2, y+750 );
      y --;
  frameRate(30);
     popStyle();
  gameOver.fin();
}
   if (espada == false){
     image(img[9], 0, 0, escX(1024), escY(768) );
     pushStyle();
     textAlign(CENTER);
     textSize(29);
     text("Cierras tu corazon ante la pena que sientes por Gundyr, tu viejo amigo       ",width/2, y+50 );
     text("sellado por la espada del enlace de fuego hace siglos... lo unico que  ",width/2, y+150 );
     text("querias era sacarlo de su miseria y ponerle fin a los siglos     ",width/2, y+250 );
     text("que paso petrificado poniendole fin a su vida. Detras del cuerpo moribundo  ",width/2, y+350 );
     text("de gundyr queda la espada del enlace.          ",width/2, y+450 );
     text("podra encender siquiera una llama ?    ",width/2, y+550 );
     text("sin el alma del gran gundyr era dificil saberlo    ",width/2, y+650 );
     text("ha llegado el momento de emprender viaje una vez mas   ...     ",width/2, y+750 );
      y --;
  frameRate(30);
     popStyle();
  gameOver.fin();
 }
}
void clickPj1_final() {  if (espada == true){
  if ( mouseX>(width-80)-75 && mouseX<(width-80)+75 
 && mouseY>(height-45)-25/2 && mouseY<(height-45)+25/2 ) {
    estado = 13;
    println("Gundyr es absorbido por el poder de la espada"); }
 } else if (espada == false){
    if ( mouseX>(width-80)-75 && mouseX<(width-80)+75 
 && mouseY>(height-45)-25/2 && mouseY<(height-45)+25/2 ) {
    estado = 13;
    println("Asesinas a Gundyr...");
  }
 }
}
