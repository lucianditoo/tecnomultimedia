class Flechas {
  //propiedades
  //ubicacion, imagen, velocidad de movimiento
  float x, y, vel, ancho, alto, radio;
  PImage png;
  //constructor
  Flechas() {
    //carga imagen
    //valores iniciales de ubicacion y movimiento
    png = loadImage("arrow.png");
    x = random (0, width);
    y = random (-1000, -100);
    vel = 5;
    ancho = 80;
    alto = 80;
    radio = alto-74;
  }
  //metodos o funciones:
  //actualizar, dibujar, mover (evaluar keyPressed)
  void draw() {
    dibujar();
    mover();
  }
  void dibujar() {
    push();
    translate(x, y);
    imageMode(CENTER);
    image(png, 0, 0, escX(ancho), escY(alto) );
    pop();
  }
  void mover() {
    // movimiento de las flechas
    x = x-vel;
    y = y+vel;
    // evaluacion para los limites de la pantalla
    if (x<0) {
      x = width;
      y = random (0, height);
    }
    if (y>height) {
      y = 0;
      x = random (0, width);
    }
  }
  boolean colision_soldado(float x_, float y_, float radio_) {
    if (DEBUG) {
      push();
      noFill();
      ellipseMode(CENTER);
      rectMode(CENTER);
      stroke(255, 0, 0);
      line( escX(x-5), escY(y+5), escX(x_+90), escY(y_+height-70) );
      ellipse( escX(x-5), escY(y+5), 12, 12 );
      ellipse( escX(x_+90), escY(y_+height-70), escX(55), escY(55) );
      stroke(255);
      line( escX(x-5), escY(y+5), escX(x_+128), escY(y_+height-62) );
      ellipse( (x_+128), (y_+height-62), 18, 41 );
      pop();
    }
    float distancia1 = dist(escX(x-5), escY(y+5), escX(x_+90), escY(y_+height-70) );
    if ( distancia1 < escY(radio)+escY(radio_) ) {
      //colisiona
      return true;
    } else {
      //no colosiona
      return false;
    }
  }
  boolean colision_escudo(float x__, float y__, float radio__) {
    float distancia2 = dist(escX(x-5), escY(y+5), escX(x__+128), escY(y__+height-62) );
    if ( distancia2 < escY(radio)+escY(radio__) ) {
      //colisiona
      return true;
    } else {
      //no colosiona
      return false;
    }
  }
}
