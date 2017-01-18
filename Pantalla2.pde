void Pantalla2 () {
  
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 1;
  
  //Dibuixa tres rectangles a la pantalla
  strokeWeight (5);
  rect (width/4, height/3, 200, 75);
  rect (width/4*3, height/3, 140, 75);
  rect (width/2, height/5*3, 370, 75);  
  
  //Escriu dins dels rectangles 
  textSize (30);
  text ("Colocación", (width/4), height/3);
  text ("Sonido", (width/4*3), height/3);
  text ("Colocación con sonido", (width/2), height/5*3);
  
  //Dibuixa la flecha atras i escriu les condicions per tornar a la pantalla anterior
  imageMode (CORNER);
  image (atras, 10, 10);
  
}