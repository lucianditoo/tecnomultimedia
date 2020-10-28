class Juego {
  //propiedades (fondo, personaje, enemigos)
  PImage img1, img2, img3;
  Flechas [] arregloFlechas;
  int cantFlechas = 39;
  int escudo_vida = 2;
  boolean escudo = true;
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
         if ( arregloFlechas[i].colision_soldado(soldado.getX(), soldado.getY(),
         soldado.getRadio() ) ) {
           //Acciones causadas por la colision:
           soldado = new Player();
         }
         if (escudo == true) {
           if ( arregloFlechas[i].colision_escudo(soldado.getX(), soldado.getY(),
           soldado.getRadio() ) ) {
           //Acciones causadas por la colision:
           arregloFlechas[i] = new Flechas();
           escudo_vida = -1;
         }
         if ( escudo_vida == 0 ) {
           soldado.sinEscudo();
           escudo = false;
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
