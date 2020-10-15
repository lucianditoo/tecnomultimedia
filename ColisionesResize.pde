float escX( float valor_ ) {
  //devuelve el valor del parametro
  //proporcionalme a la escala de la pantalla
  return map( valor_, 0, 1024, 0, width );
}

float escY( float valor_ ) {
  //devuelve el valor del parametro
  //proporcionalme a la escala de la pantalla
  return map( valor_, 0, 768, 0, height );
}



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
  if (  dist(mouseX, mouseY, x_, y_) < r_    ) {
    //hay colison:
    return true;
  } else {
    // no hay colision:
    return false;
  }
}
