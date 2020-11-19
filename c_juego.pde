Juego juego;
class Juego {
  //propiedades (fondo, personaje, enemigos)
  Player soldado;
  Flechas [] arregloFlechas;
  int cantFlechas = 12;
  int escudo_vida = 2;
  int estadoX;
  import ddf.minim.*;
  Minim minim;
  AudioSample impacto_soldado;
  AudioSample impacto_escudo;
  AudioSample soul;

  //constructor
  Juego(PApplet miApp_) {
    minim = new Minim(miApp_);
    estadoX = 1;
    soldado = new Player();
    arregloFlechas = new Flechas [cantFlechas];
    for (int i=0; i<cantFlechas; i++) {
      arregloFlechas[i] = new Flechas();
    }
  }
  void setup() {
    soul = minim.loadSample("soul.mp3");
    impacto_soldado = minim.loadSample("impact_0.mp3");
    impacto_escudo = minim.loadSample("impact_1.mp3");
  }
  void draw() {
    soldado.draw();
    if (soldado.getX() > width-135) {
      soul.trigger();
      soldado = new Player();
      aventura.estado ++;
    }
    for (int i=0; i<cantFlechas; i++) {
      arregloFlechas[i].draw();
      if (estadoX == 1) {
        if ( arregloFlechas[i].colision_soldado(soldado.getX(), soldado.getY(), 
          soldado.getRadio() ) ) {
          //Acciones causadas por la colision:
          impacto_soldado.trigger();
          arregloFlechas[i] = new Flechas();
          escudo_vida = 2;
          soldado = new Player();
        }
        if ( arregloFlechas[i].colision_escudo(soldado.getX(), soldado.getY(), 
          soldado.getRadio() ) ) {
          //Acciones causadas por la colision:
          impacto_escudo.trigger();
          arregloFlechas[i] = new Flechas();
          escudo_vida = escudo_vida-1;
        }
        if (escudo_vida == 0) {
          estadoX = 2;
        }
      } else if (estadoX == 2) {
        if ( arregloFlechas[i].colision_soldado(soldado.getX(), soldado.getY(), 
          soldado.getRadio() ) ) {
          //Acciones causadas por la colision:
          impacto_soldado.trigger();
          arregloFlechas[i] = new Flechas();
          escudo_vida = 2;
          estadoX = 1;
          soldado = new Player();
        }
      }
    }
  }
  void keyPressed() {
    soldado.keyPressed();
  }
  void keyReleased() {
    soldado.keyReleased();
  }
  int getEstadoX() {
    return estadoX;
  }
}
