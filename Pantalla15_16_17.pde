void Pantalla15 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 14;
  
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Escriu el títol 
  textSize (50);
  text ("Como jugar N1", width/2, 65);
  
  //Escriu com es juga el N1              
  textSize (30);
  String N1colosonido = "El objetivo, es adivinar la posición de las notas en el pentagrama según el sonido. En este nivel, el sonido de las notas está en orden y puedes volver a escucharlo, haciendo click en la llave de sol.";
  textLeading (40);
  text (N1colosonido, width/2, height/2-60, 655, 300);
  
  // Dibuixa els diferents nivells 
  nivells ();
  
  //Dibuixa el boto per jugar
  botojugar(); 
  
  //Dibuixa la flecha atras i escriu les condicions per tornar a la pantalla anterior
  imageMode (CORNER);
  image (atras, 10, 10);

}


void Pantalla16 () {
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 15;

  //Escriu el títol 
  textSize (50);
  text ("Como jugar N2", width/2, 65);
  
  //Escriu com es juga el N2             
  textSize (30);
  String N2colosonido = "El objetivo, es adivinar la posición de las notas en el pentagrama según el sonido. En este nivel, el sonido aparece aleatoriamente y las respuestas correctas suman 10 puntos. El nivel se acaba cuando llegas a 80 puntos, puedes volver a escuchar el sonido de la nota haciendo click en la llave de sol.";
  textLeading (40);
  text (N2colosonido, width/2, height/2-60, 690, 300);
  
  // Dibuixa els diferents nivells 
  nivells ();
  
  //Dibuixa el boto per jugar
  botojugar(); 
  
  //Dibuixa la flecha atras i escriu les condicions per tornar a la pantalla anterior
  imageMode (CORNER);
  image (atras, 10, 10);


}


void Pantalla17 () {
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 16;

  //Escriu el títol 
  textSize (50);
  text ("Como jugar N3", width/2, 65);
  
  //Escriu com es juga el N3              
  textSize (30);
  String N3sonido = "El objetivo, es adivinar la posición de las notas en el pentagrama según el sonido. En este nivel, el sonido aparece aleatoriamente y las respuestas correctas suman 10 puntos. Además, contiene una cuenta atrás, que si llega a 0, resta 10 puntos. El nivel se acaba cuando llegas a 80 puntos, puedes volver a escuchar el sonido de la nota haciendo click en la llave de sol.";
  textLeading (40);
  text (N3sonido, width/2, height/2-60, 720, 350);
  
  // Dibuixa els diferents nivells 
  nivells ();
  
  //Dibuixa el boto per jugar
  botojugar(); 
  
  //Dibuixa la flecha atras i escriu les condicions per tornar a la pantalla anterior
  imageMode (CORNER);
  image (atras, 10, 10);


}



void N1colocacionconsonido () {
  //Condicions per canviar al nivell 1 
  if (mouseX > 0 && mouseX < 150) {
    if (mouseY > (height)-302 && mouseY < (height)-200) {
      Pantalla15 ();
    }  
  }  
}

void N2colocacionconsonido () {
  //Condicions per canviar al nivell 2 
  if (mouseX > 0 && mouseX < 150) {
    if (mouseY > (height)-202 && mouseY < (height)-100) {
      Pantalla16 ();
    }  
  }  
}

void N3colocacionconsonido () {
  //Condicions per canviar al nivell 3 
  if (mouseX > 0 && mouseX < 150) {
    if (mouseY > (height)-102 && mouseY < height) {
      Pantalla17 ();
    }  
  }  
}