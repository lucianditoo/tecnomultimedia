class Player {
  //propiedades
  //ubicacion, imagen, velocidad de movimiento
  float x, y, ancho, alto, radio, velocidad;
  PImage img;
  //constructor
  Player() {
    //carga imagen
    //valores iniciales de ubicacion y movimiento
    img = loadImage("soldado.png");
    x = 0;
    y = height-110;
    ancho = 100;
    alto = 100;
    velocidad = 5;
    radio = 55/2;
  }
  
  //metodos o funciones:
  //actualizar, dibujar, mover (evaluar keyPressed)
  void draw() {
    push();
    translate(x, y);
    imageMode(CENTER);
    image(img, 0+100, 0+58, ancho, alto);
    pop();
    dibujar();
  }
  void dibujar(){
    push();
    noFill();
    stroke(255);
    ellipseMode(CENTER);
    rectMode(CENTER);
    // hit-box del soldado:
   // ellipse(x+95, y+40, radio*2, radio*2);
  // rect(x+130, y+48, 20, 50);
 /* el "rect" es el hit-box del escudo, pensaba hacer que las flechas desaparecieran
 al colisionar con el escudo pero no llegue a programar la interaccion. Puede que
 para la entrega final lo agregue si llego a poder. Tambien se me ocurrio para
 agregarle mas detalle al juego que cada vez que colisione una flecha con el escudo
 ademas de desaparecer y volver a entrar a la pantalla por algun eje tambien se
 dibujen flechas en distintas posiciones en el escudo para dar la sensacion de que 
 estas impactan y van acumulandose aparte de proteger al soldado y cambiar la
 dificultad y versatilidad del juego*/
    pop();
  }
  void respawn(){
    push();
    translate(x, y);
    x = 0;
    y = height-110;
    pop();
  }
  void keyPressed(){
    mover(); 
  }
  
 void mover() {
   if (keyPressed) { // movimiento lateral
     if (keyCode == LEFT) {
       x = (x-velocidad);
     } else if (keyCode == RIGHT) {
       x = (x+velocidad);
     } //evaluacion para los limites de la pantalla
     if (x < 0) {
       x = (x+velocidad);
     } 
     if (x > width-125) {
       push();
       translate(x, y);
       x = 0;
       y = height-110;
       pop();
       println("ganaste");
     }
   }
 }
 //metodos que devuelven los atributos:
 float getX(){
   return x;
 }
 float getY(){
   return y;
 }
 float getRadio(){
   return radio;
 }
}
