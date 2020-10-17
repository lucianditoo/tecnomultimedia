// Salbitano Luciano 68609/5 //<>//
/**/
int estado;
boolean escudo, hoguera, espada;
PFont font;
float y;
import ddf.minim.*;
Minim minim;
AudioPlayer music;
PImage [] img;

void setup() {
  size (1024, 768);
  surface.setResizable(true);
  minim = new Minim(this);
  music = minim.loadFile("ds3sound.mp3");
  music.loop();
  siguiente = new Boton();
  gameOver = new Boton();
  estado = 0;
  font = createFont("ds3font.ttf", 39);
  img = new PImage[11];
  for (int i = 0; i < 11; i = i+1) {
  img[i] = loadImage("img_"+i+".jpeg");
}
  pushStyle();
  textAlign(RIGHT);
  textSize(29);
  textFont(font);
  textAlign(CENTER);
}

void draw() {
  if ( estado==0 ) {
    menu();
  } else if ( estado == 1 ) {
    
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
  
  } else if ( estado==10 ) {
 
  } else if ( estado==11 ) {
  
  } else if ( estado==12 ) {
  
  } else if ( estado==13 ) {
    pj_muerto();
  } else if ( estado==14 ) {
    tutorialCreditos();
  } 
}

void mouseClicked(){
if ( estado==0 ) {
    clickMenu();
  } else if ( estado==1 ) {
   
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
  
  } else if ( estado==10 ) {
  
  } else if ( estado==11 ) {
  
  } else if ( estado==12 ) {
  
  } else if ( estado==13 ) {
    clickPj_muerto();
  } else if ( estado==14 ) {
    clickTutorialCreditos();
  } 
}
