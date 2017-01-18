void Pantalla1 () {
  //Estableix el color de la pantalla
  //background (255);
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
   
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 0;
  
  //Escriu el títol
  textSize (50);
  text ("Las notas musicales", (width/2), (height/2)-200);
  
  //Dibuixa un rectangle al centre de la pantalla 
  stroke (0);
  strokeWeight (5);
  rect (width/2, height/2, 130, 65);
  
  //Escriu dins del rectangle 
  textSize (30);
  text ("JUGAR", (width/2), (height/2));
  
}

/*
void changeAppIcon(PImage img) {
  final PGraphics pg = createGraphics(16, 16, JAVA2D);

  pg.beginDraw();
  pg.image(img, 0, 0, 16, 16);
  pg.endDraw();

  frame.setIconImage(pg.image);
}

*/