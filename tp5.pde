// Salbitano Luciano 68609/5
import ddf.minim.*;
  Minim minim;
  AudioPlayer impacto_soldado;
  AudioPlayer impacto_escudo;
  AudioPlayer soul;
  AudioPlayer music;
boolean DEBUG = false;
int estado = 1;
Juego juego;

void setup() {
  size(1024, 768);
  frameRate(30);
  minim = new Minim(this);
  music = minim.loadFile("caballero.mp3");
  music.loop();
  soul = minim.loadFile("soul.mp3");
  impacto_soldado = minim.loadFile("impact_0.mp3");
  impacto_escudo = minim.loadFile("impact_1.mp3");
  juego = new Juego();
  //surface.setResizable(true);
}

void draw() {
  juego.draw();
}

void keyPressed() {
  juego.keyPressed();

}
void keyReleased(){
  juego.keyReleased();
}
