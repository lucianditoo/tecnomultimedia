// Salbitano Luciano 68609/5
/*en la pestaña del tp4 "pj1_4" si se elige la opción "Descansare..."
esta misma lleva al mini juego donde el caballero tendra que caminar desde
la hoguera hasta el alma que se encuentra al otro extremo de la pantalla para
poder progresar en su aventura. Si las flechas que van cayendo lo matan el revivira
junto a la hoguera hasta que logre su objetivo de llegar al alma (en esta app
se reinicia el juego al llegar al alma ya que no programe pantallas adicionales)*/
Juego juego;

void setup() {
  size(1024, 768);
  frameRate(60);
  juego = new Juego();
 // surface.setResizable(true);
}

void draw() {
  juego.draw();
}

void keyPressed() {
  juego.keyPressed();

}
