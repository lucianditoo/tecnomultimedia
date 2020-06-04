int pantalla;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PFont font;
import ddf.minim.*;
Minim gestor;
AudioPlayer musica_fondo; 

void setup() {
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("ds3sound.mp3");
  musica_fondo.loop();
  size (1280, 720);
  img1 = loadImage("Dark Souls III.png");
  img2 = loadImage("ashnfire.jpg");
  img3 = loadImage("lords.jpg");
  img4 = loadImage("hide.jpg");
  img5 = loadImage("yuka.jpg");
  img6 = loadImage("died.jpg");
  font = createFont("ds3font.ttf", 39);
  textFont(font);
  textAlign(CENTER);
  pantalla = 0;
}

void draw() {
  if ( pantalla == 0 ) { //Pantalla de título
    image(img1, 0, 0, 1280, 720);
    text("Haga click para navegar por los creditos", 620, 450);
 }  else if(pantalla == 1) { //Personajes principales
    image(img2, 0, 0, 1280, 720);
    text("Ser de la Ceniza (Como, El Jugador)", 320, 50);
    text("Guardiana del Fuego", 900, 150);
    text("(Como, Tu leal companera)", 999, 200);
 }  else if(pantalla == 2) { //Antagonistas
    image(img3, 0, 0, 1280, 720);
    text("Lords de las cenizas", 620, 50);
    text("Aldrich", 140, 150);
    text("Devorador", 140, 550);
    text("de", 140, 575);
    text("Dioses", 140, 600);
    text("Ludleth", 380, 150);
    text("Lorian", 640, 150);
    text("&", 645, 175);
    text("Lothric", 640, 200);
    text("Principes", 640, 550);
    text("Gemelos", 640, 580);
    text("Vigilantes", 880, 150);
    text("del", 880, 175);
    text("Abismo", 880, 200);
    text("Yorm", 1150, 150);
    text("El", 1150, 550);
    text("Gigante", 1150, 580);
 }  else if(pantalla == 3) { //Director
    image(img4, 0, 0, 1280, 720);
    text("Director", 620, 50);
    text("Hidetaka Miyazaki", 620, 550);
 }  else if(pantalla == 4) { //Sonido
    background(0);
    image(img5, 0, 0, 770, 770);
    text("Musica", 840, 50);
    text("Compositor principal", 1040, 100);
    text("Yuka Kitamura", 920, 150);
    text("Equipo de compositores", 1040, 200);
    text("Motoi Sakuraba", 920, 250);
    text("Nobuyoshi Suzuki", 930, 300);
    text("Tsukasa Saitoh", 910, 350);   
 }  else if(pantalla == 5) { //Has muerto, felicitaciones !
    image(img6, 0, 0, 1280, 720);
    text("FIN", 620, 50);
    text("HAS MUERTO!", 620, 550);
 }
}

void mousePressed() {
  pantalla++;
  if( pantalla>=6 ){
   pantalla = 0; 
 } 
}
