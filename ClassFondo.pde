class Fondo {
  //propiedades
  PImage [] img;
  //constructor
  Fondo() {
    img = new PImage[3];
  for (int i = 0; i < 3; i = i+1) {
  img[i] = loadImage("img_"+i+".png");}
}
     void draw() {
       image(img[0], 0, 0, escX(1024), escY(768) );
       image(img[1], -120, height-115, escX(300), escY(150) );
       image(img[2], width-90, height-130, escX(150), escY(150) );
     }
   }
