Boton siguiente, gameOver;
class Boton {
  //atributos de la clase:

  //constructor:
  Boton() {
    
  }

  //funcionalidades:
  //(metodos o procedimientos)
 void continuar() {
    dibujarSiguiente();
  }
  void dibujarSiguiente() {
    pushStyle();
    textSize(29);
    textAlign(RIGHT);
    rectMode(CENTER);
    noFill();
    rect(width-80, height-15,150,25);
    text("Siguiente", width/1-15, height/1-5);
    popStyle();
  }
  void fin() {
    finalizar();
  }
  void finalizar() {
    pushStyle();
    textSize(29);
    textAlign(RIGHT);
    rectMode(CENTER);
    noFill();
    rect(width-80, height-45,150,25);
    text("Descansar", width/1-10, height/1-35);
    popStyle();
 }
}
