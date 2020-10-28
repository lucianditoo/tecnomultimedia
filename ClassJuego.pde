class Juego {
  //propiedades (fondo, personaje, enemigos)
  PImage img1, img2, img3;
  Flechas [] arregloFlechas;
  int cantFlechas = 21;
  int escudo_vida = 2;
  int NG = 0;
  Player soldado;
  Fondo lvl0;
  //constructor
  Juego() {
    soldado = new Player();
    lvl0 = new Fondo();
    arregloFlechas = new Flechas [cantFlechas];
  for (int i=0; i<cantFlechas; i++) {
    arregloFlechas[i] = new Flechas();
  }
 }
     void draw() {
       lvl0.draw();
       push();
       textAlign(CENTER);
       textSize(30);
       text("NG+"+NG, 50, 30);
       pop();
       soldado.draw();
       if (soldado.getX() > width-135) {
         NG = NG+1;
     }
       for (int i=0; i<cantFlechas; i++) {
         arregloFlechas[i].draw();
         if (estado == 1) {
           if ( arregloFlechas[i].colision_soldado(soldado.getX(), soldado.getY(),
           soldado.getRadio() ) ) {
           //Acciones causadas por la colision:
           impacto_soldado.rewind();
           impacto_soldado.play();
           arregloFlechas[i] = new Flechas();
           escudo_vida = 2;
           soldado = new Player();
         }
           if ( arregloFlechas[i].colision_escudo(soldado.getX(), soldado.getY(),
           soldado.getRadio() ) ) {
           //Acciones causadas por la colision:
           impacto_escudo.rewind();
           impacto_escudo.play();
           arregloFlechas[i] = new Flechas();
           escudo_vida = escudo_vida-1;
         }
           if (escudo_vida == 0) {
           estado = 2;
        }
        }  else if (estado == 2) {
           if ( arregloFlechas[i].colision_soldado(soldado.getX(), soldado.getY(),
           soldado.getRadio() ) ) {
           //Acciones causadas por la colision:
           impacto_soldado.rewind();
           impacto_soldado.play();
           arregloFlechas[i] = new Flechas();
           escudo_vida = 2;
           estado = 1;
           soldado = new Player();
         }
        }
       }
 
       
  }
     void keyPressed(){
       soldado.keyPressed();
}
void keyReleased(){
    soldado.keyReleased();
  }
  
  //funciones y metodos:
  //evntos principales:
  

  
  
}
