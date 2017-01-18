void Pantalla3 () {

  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 2;
  
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Escriu el títol 
  textSize (50);
  text ("Como jugar N1", width/2, 65);
  
  //Escriu com es juga el N1              
  textSize (30);
  String N1 = "El objetivo, es adivinar el nombre de las notas según su posición en el pentagrama. En este nivel, las notas están en orden.";
  textLeading (40);
  text (N1, width/2, height/2-60, 655, 300);
  
  // Dibuixa els diferents nivells 
  nivells ();
  
  //Dibuixa el boto per jugar
  botojugar(); 
  
  //Dibuixa la flecha atras i escriu les condicions per tornar a la pantalla anterior
  imageMode (CORNER);
  image (atras, 10, 10);

  
}


void Pantalla4 () {
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 3;
 
  //Escriu el títol 
  textSize (50);
  text ("Como jugar N2", width/2, 65);
  
  //Escriu com es juga el N2              
  textSize (30);
  String N2 = "El objetivo, es adivinar el nombre de las notas según su posición en el pentagrama. En este nivel, las notas aparecen aleatoriamente y las respuestas correctas suman 10 puntos. El nivel se acaba cuando llegas a 80 puntos.";
  textLeading (40);
  text (N2, width/2, height/2-60, 900, 300);
  
  // Dibuixa els diferents nivells 
  nivells ();
  
  //Dibuixar el boto per jugar
  botojugar(); 
  
  //Dibuixa la flecha atras i escriu les condicions per tornar a la pantalla anterior
  imageMode (CORNER);
  image (atras, 10, 10);

  
}


void Pantalla5 () {
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 4;
 
  //Escriu el títol 
  textSize (50);
  text ("Como jugar N3", width/2, 65);
  
  //Escriu com es juga el N3              
  textSize (30);
  String N3 = "El objetivo, es adivinar el nombre de las notas según su posición en el pentagrama. En este nivel, las notas aparecen aleatoriamente, se mueven hasta que llegan al final del pentagrama, que vuelve a empezar. Las respuestas correctas suman 10 puntos y se acaba cuando llegas a 80 puntos.";
  textLeading (40);
  text (N3, width/2, height/2-60, 800, 400);
  
  //Dibuixa els diferents nivells 
  nivells (); 
  
  //Dibuixar el boto per jugar
  botojugar(); 
  
  //Dibuixa la flecha atras i escriu les condicions per tornar a la pantalla anterior
  imageMode (CORNER);
  image (atras, 10, 10);

  
}



void nivells () {
  //Dibuixa els diferents nivells 
  textSize (50);
  stroke (0);
  strokeWeight (5);
  rect (76, height-52, 150, 100);
  rect (76, height-152, 150, 100);
  rect (76, height-252, 150, 100);
  
  //Escriu dins dels rectangles 
  text ("N1", 75, height-252);
  text ("N2", 75, height-152);
  text ("N3", 75, height-52);
}


void botojugar () {
  //Dibuixa el botó de jugar
  stroke (0);
  strokeWeight (5);
  rect (width/2, height-160, 130, 65);
 
  textSize (30);
  text ("JUGAR", (width/2), (height)-162);
}


void N1colocacion () {
  //Condicions per canviar al nivell 1 
  if (mouseX > 0 && mouseX < 150) {
    if (mouseY > (height)-302 && mouseY < (height)-200) {
      Pantalla3 ();
    }  
  }  
}

void N2colocacion () {
  //Condicions per canviar al nivell 2 
  if (mouseX > 0 && mouseX < 150) {
    if (mouseY > (height)-202 && mouseY < (height)-100) {
      Pantalla4 ();
    }  
  }  
}

void N3colocacion () {
  //Condicions per canviar al nivell 3 
  if (mouseX > 0 && mouseX < 150) {
    if (mouseY > (height)-102 && mouseY < height) {
      Pantalla5 ();
    }  
  }  
}
 
void atrasaPantalla2 () {
  //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
  if (mouseX > 10 && mouseX < 65) {
    if (mouseY > 10 && mouseY < 65) {
      Pantalla2 ();
    }    
  }
}