import processing.sound.*;
SoundFile Do;
SoundFile Re;
SoundFile Mi;
SoundFile Fa;
SoundFile Sol;
SoundFile La;
SoundFile Si; 
SoundFile Doagut;

PImage fons;
PImage atras; 
PImage clausol;
PImage notasonido;

PFont font;

float circleX ;
float circleY;
float lineX;

int gamestate; 
int notacolocacionN1;
int notacolocacionN2;
int notacolocacionN3;
int notasonidoN1;
int notasonidoN2;
int notasonidoN3;
int notacolocacionconsonidoN1;
int notacolocacionconsonidoN2;
int notacolocacionconsonidoN3;
int puntuacio;
int temps;


void setup () {  
  //Estableix la pantalla en horitzontal 
  orientation (LANDSCAPE);
  
  //Estableix el tamany de la pantalla
  //size (displayWidth, displayHeight);
  fullScreen ();
  //tamany pantalla mobil: 
  //size (1280, 720); 
    
  //Coloca a la posició del centre els rectangles i els texts
  textAlign (CENTER, CENTER);
  rectMode (CENTER);
  noFill (); 
 
  fons = loadImage ("fondo pantalla 6.jpg");
  atras = loadImage ("flecha atras.png");
  clausol = loadImage ("clau de sol.png");
  notasonido = loadImage ("nota musical.png");
  
  font = loadFont ("CooperBlack-48.vlw");
  textFont (font);
  
  Do = new SoundFile (this, "Do.mp3");
  Re = new SoundFile (this, "Re.mp3");
  Mi = new SoundFile (this, "Mi.mp3");
  Fa = new SoundFile (this, "Fa.mp3");
  Sol = new SoundFile (this, "Sol.mp3");
  La = new SoundFile (this, "La.mp3");
  Si = new SoundFile (this, "Si.mp3");
  Doagut = new SoundFile (this, "Do agut.mp3");
  
  
  lineX = 320;
  puntuacio = 0;
  temps = 10;
  
  
  Pantalla1 ();
  
    
}


void draw() {
  
  if (gamestate == 5) {
    //Dibuixa tot lo comu amb els nivells de colocacio
    comucolocacion ();
    
    //Escriu el títol 
    textSize (50);
    text ("Colocación N1", width/2, 65);
  
    //Fa que la nota Do, tingui una linea     
    if (notacolocacionN1 == 1) {
    strokeWeight (5);
    line (320, 515, 380, 515);
    }
    
  }
  
  if (gamestate == 6) {
    //Dibuixa tot lo comu amb els nivells de colocacio
    comucolocacion ();
                    
    //Escriu el títol 
    textSize (50);
    text ("Colocación N2", width/2, 65);
    
    //Escriu la puntuació del joc 
    puntuacio (); 
    
    //Fa que la nota Do, tingui una linea  
    if (notacolocacionN2 == 1) {
    strokeWeight (5);
    line (320, 515, 380, 515);
    }    
  }
  
  if (gamestate == 7) {
    //Dibuixa tot lo comu amb els nivells de colocacio
    comucolocacion ();
     
    //Fa moure la elipse amb una velocitat determinada
    circleX = circleX + 5;
    
    //Escriu el títol 
    textSize (50);
    text ("Colocación N3", width/2, 65);
    
    //Condicions perque quan la nota arribi al final del pentagrama, torni al principi    
    finalpentagrama ();
  
    //Escriu la puntuació del joc 
    puntuacio ();     
  }
  
  if (gamestate == 11) {
    //Dibuixa tot lo comu amb els nivells de sonido
    comusonido ();
  }
  
  if (gamestate == 12) {
    //Dibuixa tot lo comu amb els nivells de sonido
    comusonido ();
    
    //Escriu la puntuació del joc 
    puntuacio (); 
  }  
  
  if (gamestate == 13) {  
    //Dibuixa tot lo comu amb els nivells de sonido
    comusonido ();
    
    //Escriu la puntuació del joc 
    puntuacio (); 
    
    //Escriu la cuenta atras 
    cuentaatras ();
  }  
  
  if (gamestate == 17) {
    //Dibuixa tot lo comu amb els nivells de colocacio
    comucolocacionconsonido ();
    
    //Escriu el títol 
    textSize (50);
    text ("Colocación con sonido N1", width/2, 65);   
  }
  
  if (gamestate == 18) {
    //Dibuixa tot lo comu amb els nivells de colocacio
    comucolocacionconsonido ();
    
    //Escriu el títol 
    textSize (50);
    text ("Colocación con sonido N2", width/2, 65);
    
    //Escriu la puntuació del joc 
    puntuacio (); 
  }  

  if (gamestate == 19) {
    //Dibuixa tot lo comu amb els nivells de colocacio
    comucolocacionconsonido ();
    
    //Escriu el títol 
    textSize (50);
    text ("Colocación con sonido N3", width/2, 65);
    
    //Escriu la puntuació del joc 
    puntuacio (); 
    
    //Escriu la cuenta atras 
    cuentaatras ();
  } 
}
  


void mousePressed () {
  //Condicions per canviar de la pantalla1 a...
  if (gamestate == 0) {
    //Canvia a la pantalla2 si fa click al botó jugar 
    if ((mouseX < (width/2)+100) && (mouseX > (width/2)-100)) {
      if ((mouseY < (height/2)+100) && (mouseY > (height/2)-100)) {
        Pantalla2 ();
       } 
     }  
  }
  
  
  //Condicions per canviar de la pantalla2 a...
  if (gamestate == 1) {
    strokeWeight (5);
      
    //Canvia a la pantalla1 si fa click a la flecha d'atras 
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla1 ();
      }    
    }
    
    //Canvia a la pantalla3 (com jugar colocación N1) si fa click al botó colocación
    if ((mouseX < (width/4)+100) && (mouseX > (width/4)-100)) {
      if ((mouseY < (height/3)+50) && (mouseY > (height/3)-50)) { 
        Pantalla3 (); 
      } 
    }  
   
    //Canvia a la pantalla9 (com jugar sonido) si fa click al botó sonido 
    if ((mouseX < (width/4*3)+70) && (mouseX > (width/4*3)-70)) {
      if ((mouseY < (height/3)+50) && (mouseY > (height/3)-50)) { 
        Pantalla9 ();    
      } 
    }  
    
  //Canvia a la pantalla15 (com jugar colocación con sonido) si fa click al botó colocación con sonido      
  if ((mouseX < (width/2)+187) && (mouseX > (width/2)-187)) {
    if ((mouseY < (height/5*3)+40) && (mouseY > (height/5*3)-40)) { 
      Pantalla15 ();  
    } 
  }  
}
  
  
  //Condicions per canviar de la pantalla3 a...
  if (gamestate == 2) {
    //Canvia a la pantalla6 (colocación N1) si fa click al botó jugar de colocación N1
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla6 (); 
        circleX = 350;
        circleY = 515;
        notacolocacionN1 = 1;
      } 
    }
    
    //Canvia a la pantalla4 (como jugar N2 colocación) si fa click al botó de N2
    N2colocacion ();
    
    //Canvia a la pantalla5 (como jugar N3 colocación) si fa click al botó N3  
    N3colocacion ();
     
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
  }


  //Condicions per canviar de la pantalla4 a...
  if (gamestate == 3) {
    //Canvia a la pantalla7 (colocación N2) si fa click al botó jugar de colocación N2
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla7 (); 
        circleX = 350;
        circleY = 515;
        notacolocacionN2 = 1;
        puntuacio = 0;
      } 
    }
    
    //Canvia a la pantalla3 (como jugar N1 colocación) si fa click al botó N1
    N1colocacion ();
   
    //Canvia a la pantalla5 (como jugar N3 colocación) si fa click al botó N3  
    N3colocacion ();
     
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
  }


  //Condicions per canviar de la pantalla5 a...
  if (gamestate == 4) {
    //Canvia a la pantalla7 (colocación N2) si fa click al botó jugar de colocación N2
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla8 (); 
        circleX = 350;
        circleY = 395;
        lineX = 320;
        puntuacio = 0;
        notacolocacionN3 = 1;
      } 
    }
    
    //Canvia a la pantalla3 (como jugar N1 colocación) si fa click al botó N1
    N1colocacion ();
      
    //Canvia a la pantalla4 (como jugar N2 colocación) si fa click al botó de N2
    N2colocacion ();
    
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
  }

  
  //Condicions per canviar de la pantalla6 a...
  if (gamestate == 5) {
    
    //Canvia a la pantalla3 si fa click al botó de la flecha atràs  
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla3 ();
      }    
    }
    
    //Condicions per canviar la posicio i la puntuacio de les notes al llarg del joc en els nivells de colocacio
    canvinotascolocacionN1 ();
  }
  
  
  //Condicions per canviar de la pantalla7 a...
  if (gamestate == 6) {
        
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla4 ();
      }  
    }  
      
    //Condicions per canviar la posicio i la puntuacio de les notes al llarg del joc en els nivells de colocacio 
    canvinotascolocacionN2 ();
  }   
   
   
  //Condicions per canviar de la pantalla8 a...
  if (gamestate == 7) {
          
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla5 ();
      }    
    }
    
    //Condicions per canviar la posicio i la puntuacio de les notes al llarg del joc en els nivells de colocacio 
    canvinotascolocacionN3 ();
  }
  
  
  //Condicions per canviar de la pantalla9 a...
  if (gamestate == 8) {
    //Canvia a la pantalla12 (sonido N1) si fa click al botó jugar de colocación N1
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla12 (); 
        notasonidoN1 = 1;
        Do.play ();
      } 
    }
    
    //Canvia a la pantalla10 (como jugar N2 sonido) si fa click al botó de N2
    N2sonido ();
    
    //Canvia a la pantalla11 (como jugar N3 sonido) si fa click al botó N3  
    N3sonido ();
     
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
    
  }


//Condicions per canviar de la pantalla10 a...
  if (gamestate == 9) {
    //Canvia a la pantalla13 (sonido N2) si fa click al botó jugar de colocación N2
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla13 (); 
        notasonidoN2 = 1;
        puntuacio = 0;
        Fa.play ();
      } 
    }
    
    //Canvia a la pantalla9 (como jugar N1 sonido) si fa click al botó N1
    N1sonido ();
   
    //Canvia a la pantalla11 (como jugar N3 sonido) si fa click al botó N3  
    N3sonido ();
     
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
  }


  //Condicions per canviar de la pantalla11 a...
  if (gamestate == 10) {
    //Canvia a la pantalla14 (sonido N2) si fa click al botó jugar de colocación N2
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla14 (); 
        notasonidoN3 = 1;
        puntuacio = 0;
        Sol.play ();
        temps = 10;
      } 
    }
    
    //Canvia a la pantalla3 (como jugar N1 sonido) si fa click al botó N1
    N1sonido ();
      
    //Canvia a la pantalla4 (como jugar N2 sonido) si fa click al botó de N2
    N2sonido ();
    
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
  }


  //Condicions per canviar de la panalla12 a...
  if (gamestate == 11) {
    //Canvia a la pantalla9 si fa click al botó de la flecha atràs      
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla9 ();  
      }    
    }  
    
    //Condicions per canviar el so i la puntuacio de les notes al llarg del joc en els nivells de sonido
    canvinotassonidoN1 ();
   
  }
  
  
  //Condicions per canviar de la panalla13 a...
  if (gamestate == 12) {
    //Canvia a la pantalla10 si fa click al botó de la flecha atràs 
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla10 ();
      }    
    }  
    
    //Condicions per canviar el so i la puntuacio de les notes al llarg del joc en els nivells de sonido
    canvinotassonidoN2 ();
    
  }
  
  
  //Condicions per canviar de la panalla13 a...
  if (gamestate == 13) {
    //Canvia a la pantalla9 si fa click al botó de la flecha atràs 
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla11 ();
      }    
    }  
    
    //Condicions per canviar el so i la puntuacio de les notes al llarg del joc en els nivells de sonido
    canvinotassonidoN3 ();
    
  }
  
  
  //Condicions per canviar de la pantalla15 a...
  if (gamestate == 14) {
    //Canvia a la pantalla18 (colocacion con sonido N1) si fa click al botó jugar de colocación con sonido N1
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla18 (); 
        notacolocacionconsonidoN1 = 1;
        circleX = 350;
        circleY = 515;
        Do.play ();
      } 
    }
    
    //Canvia a la pantalla16 (como jugar N2 colocacion con sonido) si fa click al botó de N2
    N2colocacionconsonido ();
    
    //Canvia a la pantalla17 (como jugar N3 colocacion con sonido) si fa click al botó N3  
    N3colocacionconsonido ();
     
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
    
  }


//Condicions per canviar de la pantalla10 a...
  if (gamestate == 15) {
    //Canvia a la pantalla19 (colocacion con sonido N2) si fa click al botó jugar de colocación con sonido N2
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla19 (); 
        notacolocacionconsonidoN2 = 1;
        circleX = 350;
        circleY = 515;
        puntuacio = 0;
        La.play ();
      } 
    }
    
    //Canvia a la pantalla15 (como jugar N1 colocacion sonido) si fa click al botó N1
    N1colocacionconsonido ();
   
    //Canvia a la pantalla17 (como jugar N3 colocacion con sonido) si fa click al botó N3  
    N3colocacionconsonido ();
     
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
  }


  //Condicions per canviar de la pantalla11 a...
  if (gamestate == 16) {
    //Canvia a la pantalla20 (colocacion con sonido N2) si fa click al botó jugar de colocación con sonido N2
    if ((mouseX < (width/2)+70) && (mouseX > (width/2)-70)) {
      if ((mouseY < (height-160)+35) && (mouseY > (height-160)-35)) { 
        Pantalla20 (); 
        notacolocacionconsonidoN3 = 1;
        circleX = 350;
        circleY = 515;
        puntuacio = 0;
        Re.play ();
        temps = 10;
      } 
    }
    
    //Canvia a la pantalla3 (como jugar N1 sonido) si fa click al botó N1
    N1colocacionconsonido ();
      
    //Canvia a la pantalla4 (como jugar N2 sonido) si fa click al botó de N2
    N2colocacionconsonido ();
    
    //Canvia a la pantalla2 si fa click al botó de la flecha atràs  
    atrasaPantalla2 ();
  }
  
  //Condicions per canviar de la panalla13 a...
  if (gamestate == 17) {
    //Canvia a la pantalla15 si fa click al botó de la flecha atràs 
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla15 ();
      }    
    }  
    
    //Condicions per canviar el so i la puntuacio de les notes al llarg del joc en els nivells de sonido
    canvinotascolocacionconsonidoN1 ();  
  }
  
  //Condicions per canviar de la panalla13 a...
  if (gamestate == 18) {
    //Canvia a la pantalla16 si fa click al botó de la flecha atràs 
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla16 ();
      }    
    }  
    
    //Condicions per canviar el so i la puntuacio de les notes al llarg del joc en els nivells de sonido
    canvinotascolocacionconsonidoN2 ();
  }
  
  //Condicions per canviar de la panalla13 a...
  if (gamestate == 19) {
    //Canvia a la pantalla17 si fa click al botó de la flecha atràs 
    if (mouseX > 10 && mouseX < 65) {
      if (mouseY > 10 && mouseY < 65) {
        Pantalla17 ();
      }    
    }  
    
    //Condicions per canviar el so i la puntuacio de les notes al llarg del joc en els nivells de sonido
    canvinotascolocacionconsonidoN3 ();
  }

}  
  