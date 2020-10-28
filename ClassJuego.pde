class Juego {
  //propiedades (fondo, personaje, enemigos)
  PImage img1, img2, img3;
  Flechas [] arregloFlechas;
  int cantFlechas = 21;
  int escudo_vida = 2;
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
       soldado.draw();
       for (int i=0; i<cantFlechas; i++) {
         arregloFlechas[i].draw();
         if (estado == 1) {
           if ( arregloFlechas[i].colision_soldado(soldado.getX(), soldado.getY(),
           soldado.getRadio() ) ) {
           //Acciones causadas por la colision:
           escudo_vida = 2;
           soldado = new Player();
         }
           if ( arregloFlechas[i].colision_escudo(soldado.getX(), soldado.getY(),
           soldado.getRadio() ) ) {
           //Acciones causadas por la colision:
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
