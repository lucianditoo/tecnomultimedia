// Salbitano Luciano 68609/5
/*TM1 TP FINAL*//*Estuve trabajando en la clase "utilidad" como habiamos hablado pero no llegue con el tiempo para implementarla asi que colisiones y resize quedan como funciones globales...*/
void setup() {
  size (1024, 768, P3D);
  aventura = new Aventura(this);
  juego = new Juego(this);
  aventura.setup();
}
void draw() {
  aventura.draw();
}
void mousePressed() {
  aventura.mousePressed();
}
void keyPressed() {
  juego.keyPressed();
}

void keyReleased() {
  juego.keyReleased();
}
