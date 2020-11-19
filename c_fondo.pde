class Fondo {
  //propiedades
  PImage [] img;
  PImage [] png;
  //constructor
  Fondo() {
    png = new PImage[3];
    for (int i = 0; i < 3; i = i+1) {
      png[i] = loadImage("img_"+i+".png");
    } 
    img = new PImage[11];
    for (int j = 0; j < 11; j = j+1) {
      img[j] = loadImage("img_"+j+".jpeg");
    }
  }
  void draw() {
    image(png[0], 0, 0, escX(1024), escY(768) );
    image(png[1], -125, height-140, escX(300), escY(150) );
    push();
    imageMode(CENTER);
    image(png[2], width-20, height-70, escX(150), escY(150) );
    pop();
  }
  PImage[] getImg() {
    return img;
  }
  PImage[] getPng() {
    return png;
  }
}
