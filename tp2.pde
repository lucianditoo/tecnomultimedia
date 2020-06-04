PImage img;
PFont font;
import ddf.minim.*;
Minim gestor;
AudioPlayer musica_fondo; 

void setup() {
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("ds3sound.mp3");
  musica_fondo.loop();
  size (1280, 720);
  img = loadImage("Dark Souls III.png");
  font = createFont("ds3font.ttf", 39);
  textFont(font);
  textAlign(CENTER);
}

void draw() {
  image(img, 0, 0, 1280, 720);
  text("Haga click para navegar por los creditos", 620, 450);
}
