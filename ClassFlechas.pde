class Flechas {
  //propiedades
  //ubicacion, imagen, velocidad de movimiento
  float x, y, vel, ancho, alto, radio;
  PImage img;
  //constructor
  Flechas() {
    //carga imagen
    //valores iniciales de ubicacion y movimiento
    img = loadImage("arrow.png");
    x = random (0, width);
    y = 0;
    vel = 8;
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
    image(img, 0-12, 0+12, ancho, alto);
    pop();
    push();
    stroke(255);
    noFill();
    ellipseMode(CENTER);
    // hit-box de las flechas:
   // ellipse(x-25, y+28, radio*2, radio*2);
  // frameRate(30); 
 /*aca queria comentar que este arreglo del frame rate lo hice porque note que al
 agregar el fondo ("img1") el frame rate se reduce a la mitad y algunas animaciones
 se notaban mas lentas, por ejemplo, para que la hit-box de las flechas fueran a la
 par de la imagen de la flecha tuve que bajar el frameRate de la ellipse para poder
 medir bien las disancias de las flechas con el personaje*/
    pop();
  }
  void mover(){
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
  boolean colision(float x_, float y_, float radio_){
    stroke(255);
    // calculo visual de la colision etre las flechas y el soldado:
   // line(x-25, y+28, x_+95, y_+40);
  /* gracias a la idea del profe el line me ayudo a corregir ciertas coordenadas
  de las imagenes que de otra manera no me hibiese dado cuenta que estaban mal
  colocadas. El error se encontraba en un mal uso de variables "x,y" y de no 
  pensarlas de manera mas general y abstracta*/ 
    float distancia = dist(x-25, y+28, x_+95, y_+40);
    if (distancia < radio+radio_){
    //colisiona
    return true;
    } else {
    //no colosiona
    return false;
    }
  }
}
