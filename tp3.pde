int estado; //<>//
boolean escudo, hoguera, espada;
PFont font;
float y;
import ddf.minim.*;
Minim minim;
AudioPlayer music;
PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17, img18, img19, img20, img21, img22, img23, img24, img25, img26, img27;

void setup() {
  minim = new Minim(this);
  music = minim.loadFile("ds3sound.mp3");
  music.loop();
  size (1024, 768);
  font = createFont("ds3font.ttf", 39);
  textFont(font);
  textAlign(CENTER);
  estado = 0;
  y = 720;
  img1 = loadImage("Dark Souls III.png");
  img2 = loadImage("ashnfire.jpg");
  img3 = loadImage("firenash.jpg");
  img4 = loadImage("create character.png");
  img5 = loadImage("died.jpg");
  img6 = loadImage("credits.jpg");
  img7 = loadImage("bf1.png");
  img8 = loadImage("bf2.png");
  img9 = loadImage("bf3.png");
  img10= loadImage("gundyr1.png");
  img11= loadImage("gundyr2.png");
  img12= loadImage("gundyr3.png");
  img13= loadImage("gundyr4.png");
  img14= loadImage("gundyr5.png");
  img15= loadImage("gundyr6.png");
  img16= loadImage("gundyrA1.png");
  img17= loadImage("gundyrA2.png");
  img18= loadImage("gundyrA3.png");
  img19= loadImage("gundyrA4.png");
  img20= loadImage("muerte0.png");
  img21= loadImage("muerte1.png");
  img22= loadImage("muerte2.png");
  img23= loadImage("victoria0.png");
  img24= loadImage("victoria1.png");
  img25= loadImage("victoria2.png");
  img26= loadImage("victoria3.png");
  img27= loadImage("renacer.png");
}

void draw() {
  if ( estado==0 ) {
    menu();
  } else if ( estado == 1 ) {
    personajeElegir();  
  } else if ( estado == 2 ) {
    pj1(); 
  } else if ( estado==3 ) {
    pj1_1();
  } else if ( estado==4 ) {
    pj1_2Ab();   
  } else if ( estado==5 ) {
    pj1_3();
  } else if ( estado==6 ) {
    pj1_4();
  } else if ( estado==7 ) {
    pj1_5Ab();
  } else if ( estado==8 ) {
    pj1_final();
  } else if ( estado==9 ) {
    pj2_0();
  } else if ( estado==10 ) {
    pj2_1();
  } else if ( estado==11 ) {
    pj2_2Ab();
  } else if ( estado==12 ) {
    pj2_final();
  } else if ( estado==13 ) {
    pj_muerto();
  } else if ( estado==14 ) {
    tutorialCreditos();
  } 
  image(img20, a, 0, 1024, 768);
  image(img21, b, 0, 1024, 768);
  image(img22, c, 0, 1024, 768); 
  image(img23, d, 0, 1024, 768);
  image(img24, e, 0, 1024, 768);
  image(img25, f, 0, 1024, 768);
  image(img26, g, 0, 1024, 768);
}
/*
void mousePressed() {
  if ( estado==0 ) {
    clickMenu();
  } else if ( estado==1 ) {
    clickPersonaje();
  } else if ( estado==2 ) {
    clickPj1();
  } else if ( estado==3 ) {
    clickPj1_1();
  } else if ( estado==4 ) {
    clickPj1_2Ab();
  } else if ( estado==5 ) {
    clickPj1_3();
  } else if ( estado==6 ) {
    clickPj1_4();
  } else if ( estado==7 ) {
    clickPj1_5Ab();
  } else if ( estado==8 ) {
    clickPj1_final();
  } else if ( estado==9 ) {
    clickPj2_0();
  } else if ( estado==10 ) {
    clickPj2_1();
  } else if ( estado==11 ) {
    clickPj2_2Ab();
  } else if ( estado==12 ) {
    clickPj2_final();
  } else if ( estado==13 ) {
    clickPj_muerto();
  } else if ( estado==14 ) {
    clickTutorialCreditos();
  } 
}
*/
void mouseClicked(){
if ( estado==0 ) {
    clickMenu();
  } else if ( estado==1 ) {
    clickPersonaje();
  } else if ( estado==2 ) {
    clickPj1();
  } else if ( estado==3 ) {
    clickPj1_1();
  } else if ( estado==4 ) {
    clickPj1_2Ab();
  } else if ( estado==5 ) {
    clickPj1_3();
  } else if ( estado==6 ) {
    clickPj1_4();
  } else if ( estado==7 ) {
    clickPj1_5Ab();
  } else if ( estado==8 ) {
    clickPj1_final();
  } else if ( estado==9 ) {
    clickPj2_0();
  } else if ( estado==10 ) {
    clickPj2_1();
  } else if ( estado==11 ) {
    clickPj2_2Ab();
  } else if ( estado==12 ) {
    clickPj2_final();
  } else if ( estado==13 ) {
    clickPj_muerto();
  } else if ( estado==14 ) {
    clickTutorialCreditos();
  } 
}
