class Juego {
  //propiedades (fondo, personaje, enemigos)
  PImage img1, img2, img3;
  Flechas [] arregloFlechas;
  int cantFlechas = 21;
  Player soldado;
  //constructor
  Juego() {
    img1 = loadImage("fondo.png");
    img2 = loadImage("fuego.png");
    img3 = loadImage("alma.png");
    soldado = new Player();
    arregloFlechas = new Flechas [cantFlechas];
  for (int i=0; i<cantFlechas; i++) {
    arregloFlechas[i] = new Flechas();
  }
 }
     void draw() {
       image(img1, 0, 0, 1024, 768);
       image(img2, -120, height-120, 300, 150);
       image(img3, width-85, height-130, 150, 150);
       soldado.draw();
       for (int i=0; i<cantFlechas; i++) {
         arregloFlechas[i].draw();
         if ( arregloFlechas[i].colision(soldado.getX(), soldado.getY(),
         soldado.getRadio() ) ) {
           //Acciones causadas por la colision:
           soldado.respawn();
         }
 }
 
       
  }
     void keyPressed(){
       soldado.keyPressed();
}
  
  //funciones y metodos:
  //evntos principales:
  

  
  
}
