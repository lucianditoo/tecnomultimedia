class Player {
  //propiedades
  //ubicacion, imagen, velocidad de movimiento
  float x, y, ancho, alto, radio, velocidad, movX, movY;
  PImage img0, img1;
  //constructor
  Player() {
    //carga imagen
    //valores iniciales de ubicacion y movimiento
    img0 = loadImage("soldado.png");
    img1 = loadImage("soldado_escudo.png");
    x = 0;
    y = 0;
    movX = 0;
    movY = 0;
    ancho = 100;
    alto = 100;
    velocidad = 5;
    radio = 55/2;
  }
  
  //metodos o funciones:
  //actualizar, dibujar, mover (evaluar keyPressed)
  void draw() {
    if (estado == 1) {
    push();
    translate(100, height-50);
    translate(x, y);
    imageMode(CENTER);
    image(img1, 0, 0, escX(ancho), escY(alto) );
    pop();
    mover(); }
    else if (estado == 2){
    push();
    translate(100, height-50);
    translate(x, y);
    imageMode(CENTER);
    image(img0, 0, 0, escX(ancho), escY(alto) );
    pop();
    mover(); }
  }
 void mover() {
   x += movX;
   y += movY;
 }
  void keyPressed(){
    if (keyCode == LEFT) {
       movX =- velocidad;
     } else if (keyCode == RIGHT) {
       movX = velocidad;
     } //evaluacion para los limites de la pantalla
     if (x < 0) {
       x = 0;
     } 
   }
   void keyReleased() {
   if (keyCode == LEFT) {
       movX = 0;
     } else if (keyCode == RIGHT) {
       movX = 0;
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
