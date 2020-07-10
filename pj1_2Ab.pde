int a = 1024, b = 1024, c = 1024, d = 1024, e = 1024, f = 1024, g = 1024;
void pj1_2Ab() { 
  textSize(29);
  text("(Haz click para continuar)",500,200);
}

void clickPj1_2Ab() { 
 if (escudo == false){
   background(0);
   text("Apenas das los primeros pasos eres emboscado y acorralado por enemigos",500,100);
  if (a == 1024) {
  a = 0;
  }
  else if (a == 0){
  b = 0;
  a = 2024;
  }
  else if (b == 0){
  c = 0;
  b = 2024;
  }
} else if (escudo == true){
  if (d == 1024) {
  d = 0;
  }
  else if (d == 0){
  e = 0;
  d = 2024;
  }
  else if (e == 0){
  f = 0;
  e = 2024;
  }
  else if (f == 0){
  g = 0;
  f = 2024;
  }
}
}
