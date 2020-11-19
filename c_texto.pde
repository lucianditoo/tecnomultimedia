class Texto {
  //propiedades
  float y;
  String [] txt;
  String [] lines;
  //constructor
  Texto() {
    txt = new String[4];
    for (int i = 0; i < 4; i = i+1) {
      lines = loadStrings("texto_"+i+".txt");
      txt[i] = join(lines, "\n");
    }
    y = height/2;
  }
  void draw() {
    if ( aventura.getEstado()==0 ) {
      y = height/2;
    } else if ( aventura.getEstado() == 1 ) {
      y--;
      push();
      translate(width/2, height/2);
      textSize(39);
      textAlign(CENTER);
      rotateX(PI/4);
      text(txt[0], -width/2, y, width, height*10);
      pop();
    } else if ( aventura.getEstado() == 2 ) {
      if ( colisionMouseSuperficieCircular( escX(500), escY(100), 120  ) ) {
        push();
        textAlign(CENTER);
        textSize(21);
        text("Deberia partir cuanto antes...", width/2, height-350 );
        pop();
      } else if ( colisionMouseSuperficieCircular( escX(690), escY(520), 120  ) ) {
        push();
        textAlign(CENTER);
        textSize(21);
        text("Mi viejo escudo sigue aqui !", width/2, height-350);
        pop();
      }
    } else if ( aventura.getEstado() == 3 ) {
      if ( aventura.boton.getEscudo() ) {
        push();
        textSize(21);
        textAlign(CENTER); 
        text("Te atacan entre varios enemigos pero gracias a tu escudo logras defenderte", width/2, height/4);
        pop();
      } else if ( aventura.boton.getEscudo() == false ) {
        push();
        textSize(21);
        textAlign(CENTER); 
        text("Te has cruzado con un enemigo y te hirio de muerte... si tan solo tuvieras algo con que defenderte...", width/2, height/4);
        pop();
      }
    } else if ( aventura.getEstado() == 4 ) {
      push();
      textAlign(CENTER);
      text("No dejas ni a uno vivo, eres el mas fuerte !", escX(500), escY(200) );
      pop();
    } else if ( aventura.getEstado() == 5 ) {
    } else if ( aventura.getEstado() == 6 ) {
      if ( aventura.boton.getHoguera() == false ) {
        push();
        textAlign(CENTER);
        textSize(30);
        text("Estabas tan herido que no pudiste con unos simples zombies...", escX(500), escY(200) );
        pop();
      }
    } else if ( aventura.getEstado() == 7 ) {
      y = height/2;
    } else if ( aventura.getEstado() == 8 ) {
      if ( aventura.boton.getEspada() ) {
        y--;
        push();
        translate(width/2, height/2);
        textSize(39);
        textAlign(CENTER);
        rotateX(PI/4);
        text(txt[1], -width/2, y, width, height*10);
        pop();
      } else { 
        y--;
        push();
        translate(width/2, height/2);
        textSize(39);
        textAlign(CENTER);
        rotateX(PI/4);
        text(txt[2], -width/2, y, width, height*10);
        pop();
      }
    } else if ( aventura.getEstado() == 9 ) {
      if ( aventura.boton.getEscudo() == true && aventura.boton.getHoguera() == true && aventura.boton.getEspada() == false ) {
        push();
        textAlign(CENTER);
        fill(120, 0, 0);
        text("Fin del juego", width/2, height-68);
        pop();
      } else if ( aventura.boton.getEscudo() == true && aventura.boton.getHoguera() == true && aventura.boton.getEspada() == true ) {
        push();
        textAlign(CENTER);
        fill(120, 0, 0);
        text("Fin del juego", width/2, height-68);
        pop();
      } else {
        push();
        textAlign(CENTER);
        fill(120, 0, 0);
        text("Has muerto", width/2, height-68);
        pop();
      }
    } else if ( aventura.getEstado() == 10 ) {
      y--;
      push();
      translate(width/2, height/2);
      textSize(39);
      textAlign(CENTER);
      rotateX(PI/4);
      text(txt[3], -width/2, y, width, height*10);
      pop();
    }
  }
}
