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
