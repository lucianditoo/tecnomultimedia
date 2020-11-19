class Player {
  //propiedades
  //ubicacion, imagen, velocidad de movimiento
  float x, y, ancho, alto, radio, velocidad, movX, movY;
  PImage png0, png1;
  //constructor
  Player() {
    //carga imagen
    //valores iniciales de ubicacion y movimiento
    png0 = loadImage("soldado.png");
    png1 = loadImage("soldado_escudo.png");
    x = 0;
    y = 0;
    movX = 0;
    movY = 0;
    ancho = 100;
    alto = 100;
    velocidad = 3;
    radio = 55/2;
  }

  //metodos o funciones:
  //actualizar, dibujar, mover (evaluar keyPressed)
  void draw() {
    if (juego.getEstadoX() == 1) {
      push();
      translate(100, height-70);
      translate(x, y);
      imageMode(CENTER);
      image(png1, 0, 0, escX(ancho), escY(alto) );
      pop();
      mover();
    } else if (juego.getEstadoX() == 2) {
      push();
      translate(100, height-70);
      translate(x, y);
      imageMode(CENTER);
      image(png0, 0, 0, escX(ancho), escY(alto) );
      pop();
      mover();
    }
  }
  void mover() {
    // y += movY;
    x += movX;
    if (x < 0) {
      x = 0;
    }
  }
  void keyPressed() {
    if (keyCode == LEFT) {
      movX =- velocidad;
    } else if (keyCode == RIGHT) {
      movX = velocidad;
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
  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  float getRadio() {
    return radio;
  }
}
