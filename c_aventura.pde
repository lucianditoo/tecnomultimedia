Aventura aventura;
class Aventura {
  //propiedades
  Fondo fondo;
  Boton boton;
  Texto texto;
  //Util util
  PFont myFont;
  int estado = 0;

  //constructor
  import ddf.minim.*;
  Minim minim;
  AudioPlayer music;
  Aventura(PApplet miApp) {
    fondo = new Fondo();
    boton = new Boton();
    texto = new Texto();
  // util = new Util();
    minim = new Minim(miApp);
  }
  void setup() {
    myFont = createFont("ds3font.ttf", 39);
    textFont(myFont);
    music = minim.loadFile("ds3sound.mp3");
    music.loop();
    juego.setup();
  }
  void draw() { 
    if ( estado==0 ) {
      texto = new Texto();
      image(fondo.getImg()[0], 0, 0, /*util.*/escX(1024), escY(768) );
    } else if ( estado == 1 ) {
      background(0);
    } else if ( estado == 2 ) {
      image(fondo.getImg()[1], 0, 0, escX(1024), escY(768) );
    } else if ( estado == 3 ) {
      if ( boton.getEscudo() ) {
        image(fondo.getImg()[2], 0, 0, escX(1024), escY(768) );
      } else {
        image(fondo.getImg()[3], 0, 0, escX(1024), escY(768) );
      }
    } else if ( estado == 4 ) {
      image(fondo.getImg()[4], 0, 0, escX(1024), escY(768) );
    } else if ( estado == 5 ) {
      image(fondo.getImg()[5], 0, 0, escX(1024), escY(768) );
    } else if ( estado == 6 ) {
      if ( boton.getHoguera() ) {
        fondo.draw();
        juego.draw();
      } else {
        image(fondo.getImg()[7], 0, 0, escX(1024), escY(768) );
      }
    } else if ( estado == 7 ) {
      image(fondo.getImg()[6], 0, 0, escX(1024), escY(768) );
    } else if ( estado == 8 ) {
      if ( boton.getEspada() ) {
        image(fondo.getImg()[8], 0, 0, escX(1024), escY(768) );
      } else { 
        image(fondo.getImg()[9], 0, 0, escX(1024), escY(768) );
      }
    } else if ( estado == 9 ) {
      image(fondo.getImg()[10], 0, 0, escX(1024), escY(768) );
    } else if ( estado == 10 ) {
      background(0);
    }
    boton.draw();
    texto.draw();
  }
  void mousePressed() {
    boton.mousePressed();
  }
  int getEstado() {
    return estado;
  }
}
