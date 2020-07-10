void pj1_1() { 
    image(img27, 0, 0, 1024, 768);
   if ( mouseX>690-60 && mouseX<690+60 && mouseY>520-60 && mouseY<520+60 ) {
    textAlign(CENTER);
    textSize(21);
    text("Recojer escudo", mouseX,mouseY);
    ellipse(690,520,120,120);
 } if ( mouseX>500-60 && mouseX<500+60 && mouseY>100-60 && mouseY<100+60 ) {
    textAlign(CENTER);
    textSize(21);
    text("Emprender viaje", mouseX,mouseY);  
    ellipse(500, 100, 120, 120);
 }
}

void clickPj1_1() { 
   if ( mouseX>500-60 && mouseX<500+60 && mouseY>100-60 && mouseY<100+60 ) {
    estado = 4;
}
   if ( mouseX>690-60 && mouseX<690+60 && mouseY>520-60 && mouseY<520+60 ) {
     escudo = true;
     estado = 4;
   }
}
