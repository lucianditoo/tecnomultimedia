class Boton {
  //propiedades
  float x, y, ancho, alto;
  boolean escudo, hoguera, espada;
  // Util util = new Util();
  //constructor
  Boton() {
    x = width-80;
    y = height-15;
    ancho = 150;
    alto = 25;
  }
  void draw () {
    if ( aventura.getEstado()==0 ) {
      menu_principal();
    } else if ( aventura.getEstado() == 1 ) {
      siguiente();
    } else if ( aventura.getEstado() == 2 ) {
      recojer_escudo();
      emprender_viaje();
    } else if ( aventura.getEstado() == 3 ) {
      if (escudo) {
        siguiente();
      } else if (escudo == false) {
        descansar();
      }
    } else if ( aventura.getEstado() == 4 ) {
      siguiente();
    } else if ( aventura.getEstado() == 5 ) {
      continuar_herido();
      recuperarse();
    } else if ( aventura.getEstado() == 6 ) {
      if (hoguera) {
      } else if (hoguera == false) {
        descansar();
      }
    } else if ( aventura.getEstado() == 7 ) {
      retirar_espada();
      kill_gundyr();
    } else if ( aventura.getEstado() == 8 ) {
      descansar();
    } else if ( aventura.getEstado() == 9 ) {
      menu();
    } else if ( aventura.getEstado() == 10 ) {
      menu();
    }
  }
  void menu_principal() {
    if ( colisionBotonRectangularCenterMode( width/2, height-178, 150, 50) ) {
      push();
      textAlign(CENTER);
      rectMode(CENTER);
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      rect(width/2, height-178, 150, 50);
      fill( random(0), random(255), random(255) );
      text("jugar", width/2, height-168);
      pop();
    } else {
      push();
      textAlign(CENTER);
      rectMode(CENTER);
      stroke(255);
      noFill();
      rect(width/2, height-178, 150, 50);
      text("jugar", width/2, height-168);
      pop();
    }
    if ( colisionBotonRectangularCenterMode( width/2, height-103, 300, 50) ) {
      push();
      textAlign(CENTER);
      rectMode(CENTER);
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      rect(width/2, height-103, 300, 50);
      fill( random(0), random(255), random(255) );
      text("tutorial/credits", width/2, height-88);
      pop();
    } else {
      push();
      textAlign(CENTER);
      rectMode(CENTER);
      stroke(255);
      noFill();
      rect(width/2, height-103, 300, 50);
      text("tutorial/credits", width/2, height-88);
      pop();
    }
  }
  void recojer_escudo() {
    if ( colisionMouseSuperficieCircular( escX(690), escY(520), 120  ) ) {
      push();
      textAlign(CENTER);
      textSize(21);    
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      ellipse(escX(690), escY(520), 120, 120);
      fill( random(0), random(255), random(255) );
      text("Recojer escudo", mouseX, mouseY);
      pop();
    } else { 
      push();
      noFill();
      stroke (255);
      ellipse(escX(690), escY(520), 120, 120 );
      pop();
    }
  }
  void emprender_viaje() {
    if ( colisionMouseSuperficieCircular( escX(500), escY(100), 120  ) ) {
      pushStyle();
      textAlign(CENTER);
      textSize(21);    
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      ellipse(escX(500), escY(100), 120, 120);
      fill( random(0), random(255), random(255) );
      text("Emprender viaje", mouseX, mouseY);
      popStyle();
    } else { 
      push();
      stroke (255);
      noFill();
      ellipse(escX(500), escY(100), 120, 120 );
      pop();
    }
  }
  void recuperarse() {
    if ( colisionMouseSuperficieCircular( escX(820), escY(550), 120  ) ) {
      push();
      textAlign(CENTER);
      textSize(21);    
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      ellipse(escX(820), escY(550), 120, 120  );
      fill( random(0), random(255), random(255) );
      text("Descansare...", mouseX, mouseY);
      pop();
    } else { 
      push();
      noFill();
      stroke (255);
      ellipse(escX(820), escY(550), 120, 120  );
      pop();
    }
  }
  void continuar_herido() {
    if ( colisionMouseSuperficieCircular( escX(600), escY(465), 120  ) ) {
      push();
      textAlign(CENTER);
      textSize(21);    
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      ellipse(escX(600), escY(465), 120, 120  );
      fill( random(0), random(255), random(255) );
      text("Estas heridas no son nada !", mouseX, mouseY);
      pop();
    } else { 
      push();
      noFill();
      stroke (255);
      ellipse(escX(600), escY(465), 120, 120  );
      pop();
    }
  }
  void retirar_espada() {
    if ( colisionMouseSuperficieCircular( escX(550), escY(250), 120  ) ) {
      push();
      textAlign(CENTER);
      textSize(21);    
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      ellipse(escX(550), escY(250), 120, 120 );
      fill( random(0), random(255), random(255) );
      text("Tomar espada del santuario", mouseX, mouseY);
      pop();
    } else { 
      push();
      noFill();
      stroke (255);
      ellipse(escX(550), escY(250), 120, 120 );
      pop();
    }
  }
  void kill_gundyr() {
    if ( colisionMouseSuperficieCircular( escX(600), escY(465), 120  ) ) {
      push();
      textAlign(CENTER);
      textSize(21);    
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      ellipse(escX(600), escY(465), 120, 120 );
      fill( random(0), random(255), random(255) );
      text("Acabar con Gundyr...", mouseX, mouseY);
      pop();
    } else { 
      push();
      noFill();
      stroke (255);
      ellipse(escX(600), escY(465), 120, 120 );
      pop();
    }
  }
  void siguiente() {
    if ( colisionBotonRectangularCenterMode( width-80, height-15, ancho, alto) ) {
      push();
      textAlign(RIGHT);
      rectMode(CENTER);
      textSize(30);
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      rect( width-80, height-15, ancho, alto );
      fill( random(0), random(255), random(255) );
      text("Siguiente", width/1-15, height/1-5);
      pop();
    } else {
      push();
      noFill();
      rectMode(CENTER);
      textAlign(RIGHT);
      textSize(30);
      stroke(255);
      rect( width-80, height-15, ancho, alto );
      text("Siguiente", width/1-15, height/1-5);
      pop();
    }
  }
  void descansar() {
    if ( colisionBotonRectangularCenterMode( width-80, height-15, ancho, alto) ) {
      push();
      textAlign(RIGHT);
      rectMode(CENTER);
      textSize(21);
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      rect( width-80, height-15, ancho, alto );
      fill( random(0), random(255), random(255) );
      text("Cerrar los ojos", width/1-7, height/1-7);
      pop();
    } else {
      push();
      noFill();
      rectMode(CENTER);
      textAlign(RIGHT);
      textSize(21);
      stroke(255);
      rect( width-80, height-15, ancho, alto );
      text("Cerrar los ojos", width/1-7, height/1-7);
      pop();
    }
  }
  void menu() {
    if ( colisionBotonRectangularCenterMode( width/2, height-178, 150, 50) ) {
      push();
      textAlign(CENTER);
      rectMode(CENTER);
      strokeWeight(3);
      stroke( random(155), 0, random(155) );
      noFill();
      rect(width/2, height-178, 150, 50);
      fill( random(0), random(255), random(255) );
      text("Menu", width/2, height-165);
      pop();
    } else {
      push();
      textAlign(CENTER);
      rectMode(CENTER);
      stroke(255);
      noFill();
      rect(width/2, height-178, 150, 50);
      text("Menu", width/2, height-165);
      pop();
    }
  }
  void mousePressed() {
    if ( aventura.getEstado() == 0 ) {
      //-------------- Click: jugar ----------------------------->
      if ( colisionBotonRectangularCenterMode( width/2, height-178, 150, 50 ) ) {
        aventura.estado ++;
        aventura.music.close();
        aventura.music = aventura.minim.loadFile("caballero.mp3");
        aventura.music.loop();
      }
      //-------------- Click: jugar ----------------------------->
      //-------------- Click: tutorial/creditos ----------------->
      if ( colisionBotonRectangularCenterMode( width/2, height-103, 300, 50 ) ) {
        aventura.estado = 10;
        println("pantalla creditos");
      }
      //-------------- Click: tutorial/creditos ----------------->
    } else if ( aventura.getEstado() == 1 ) {
      //-------------- Click: siguiente ------------------------->
      if ( colisionBotonRectangularCenterMode( escX(x), escY(y), escX(ancho), escY(alto) ) ) {
        aventura.estado ++;
        println("Continuar");
      }
      //-------------- Click: siguiente ------------------------->
    } else if ( aventura.getEstado() == 2 ) {
      //-------------- Emprender viaje -------------------------->
      if ( colisionMouseSuperficieCircular( escX(500), escY(100), 120  ) ) {
        aventura.estado ++;
        println("Te has cruzado con un enemigo y te hirio de muerte... si tan solo tuvieras algo con que defenderte...");
      } else {
        println("Vaya, mi escudo sigue al lado de mi tumba despues de todo...");
      }
      //-------------- Emprender viaje -------------------------->
      //-------------- Recojer escudo --------------------------->
      if ( colisionMouseSuperficieCircular( escX(690), escY(520), 120  ) ) {
        escudo = true;
        println("Has conseguido: Escudo del Guerrero");
        aventura.estado ++;
      }
      //-------------- Recojer escudo --------------------------->
    } else if ( aventura.getEstado() == 3 ) {
      if (escudo == true) {
        //-------------- Click: siguiente ------------------------->
        if ( colisionBotonRectangularCenterMode( escX(x), escY(y), escX(ancho), escY(alto) ) ) {
          aventura.estado ++;
          println("Continuar");
        }
        //-------------- Click: siguiente ------------------------->
      } else if (escudo == false) {
        //-------------- Click: moriste --------------------------->
        if ( /*util.*/colisionBotonRectangularCenterMode( escX(x), escY(y), escX(ancho), escY(alto) ) ) {
          aventura.estado = 9;
          println("Moriste");
        }
      }
      //-------------- Click: moriste --------------------------->
    } else if ( aventura.getEstado() == 4 ) {
      //-------------- Click: siguiente ------------------------->
      if ( colisionBotonRectangularCenterMode( escX(x), escY(y), escX(ancho), escY(alto) ) ) {
        aventura.estado ++;
        println("Continuar");
      }
      //-------------- Click: siguiente ------------------------->
    } else if ( aventura.getEstado() == 5 ) {
      //-------------- Click: descansar ------------------------->
      if ( colisionMouseSuperficieCircular( escX(820), escY(550), 120  ) ) {
        hoguera = true;
        aventura.estado ++;
      } 
      //-------------- Click: descansar ------------------------->
      //-------------- Click: seguir... ------------------------->
      if ( colisionMouseSuperficieCircular( escX(600), escY(465), 120  ) ) {
        aventura.estado ++;
      }
      //-------------- Click: seguir... ------------------------->
    } else if ( aventura.getEstado() == 6 ) {
      if (hoguera) {
      } else if (hoguera == false) {
        //-------------- Click: moriste --------------------------->
        if ( colisionBotonRectangularCenterMode( escX(x), escY(y), escX(ancho), escY(alto) ) ) {
          aventura.estado = 9;
          println("Moriste"); 
          //-------------- Click: moriste --------------------------->
        }
      }
    } else if ( aventura.getEstado() == 7 ) {
      if ( colisionMouseSuperficieCircular( escX(550), escY(250), 120  ) ) {
        aventura.estado ++;
        espada = true;
        println("Recuperas la espada del enlace defuego...");
      } else {
        println("Gundyr...");
      }
      if ( colisionMouseSuperficieCircular( escX(600), escY(465), 120  ) ) {
        aventura.estado ++;
        println("acabas con gundyr...");
      } else {
        println("viejo amigo...");
      }
    } else if ( aventura.getEstado() == 8 ) {
      if ( colisionBotonRectangularCenterMode( escX(x), escY(y), escX(ancho), escY(alto) ) ) {
        aventura.estado = 9;
        println("Fin...");
      }
    } else if ( aventura.getEstado() == 9 ) {
      if ( colisionBotonRectangularCenterMode(width/2, height-178, 150, 50) ) {
        escudo = false;
        hoguera = false;
        espada = false;
        aventura.estado = 0;
        aventura.music.close();
        aventura.music = aventura.minim.loadFile("ds3sound.mp3");
        aventura.music.loop();
        if (escudo == true && hoguera == true && espada == false) {
          println("Has puesto a Gundyr a descansar...");
          println("Felicidades ! has desbloqueado el final ''El descanso de Gundyr''");
        }
        if (escudo == true && hoguera == true && espada == true) {
          println("Has despertado el poder de las almas en tu interior...");
          println("Felicidades ! has desbloqueado el final ''El Santuario del Enlace de Fuego''");
        }
      }
    } else if ( aventura.getEstado() == 10 ) {
      if ( colisionBotonRectangularCenterMode(width/2, height-178, 150, 50) ) {
        aventura.estado = 0;
      }
    }
  }
  boolean getEscudo() {
    return escudo;
  }
  boolean getHoguera() {
    return hoguera;
  }
  boolean getEspada() {
    return espada;
  }
}
