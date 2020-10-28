// Salbitano Luciano 68609/5
boolean DEBUG = false;
int estado = 1;
Juego juego;

void setup() {
  size(1024, 768);
  frameRate(30);
  juego = new Juego();
  surface.setResizable(true);
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
