boolean DEBUG = false;
boolean colisionBotonRectangularCenterMode( float x_, float y_, float ancho_, float alto_ ) {
  //recibe coordenadas de un rectangulo
  //devuelve true/false si el mouse colisiona

  if ( mouseX > x_-ancho_/2 && mouseX < x_+ancho_/2
    &&  mouseY > y_-alto_/2 && mouseY < y_+alto_/2 ) {
    return true;
  } else {
    return false;
  }
}


boolean colisionMouseSuperficieCircular( float x_, float y_, float r_ ) {
  // devuelve true/false si el mouse esta dentro
  //de una supercie en esa coordenada y radio:
  if (  dist(mouseX, mouseY, x_, y_) < r_) {
    return true;
  } else {
    return false;
  }
}
