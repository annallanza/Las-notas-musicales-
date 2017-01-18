void Pantalla6 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 5;
}

void Pantalla7 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 6;
}

void Pantalla8 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 7;  
}



void botonsnotas1 () {
  //Dibuixa els botons de les notes musicals
  stroke (0);
  strokeWeight (5);                            textSize (50);
  rect (width/2-525, height-37, 150, 70);      text ("DO", width/2-525, height-37);
  rect (width/2-375, height-37, 150, 70);      text ("RE", width/2-375, height-37);
  rect (width/2-225, height-37, 150, 70);      text ("MI", width/2-225, height-37);
  rect (width/2-75, height-37, 150, 70);       text ("FA", width/2-75, height-37);
  rect (width/2+75, height-37, 150, 70);       text ("SOL", width/2+75, height-37);
  rect (width/2+225, height-37, 150, 70);      text ("LA", width/2+225, height-37);
  rect (width/2+375, height-37, 150, 70);      text ("SI", width/2+375, height-37);
  rect (width/2+525, height-37, 150, 70);      text ("DO", width/2+525, height-37);
  
}


void liniespentagrama () {
  //Dibuixa les lines del pentagrama
  stroke (0);
  strokeWeight (5);
  line (150, 315, 1200, 315);
  line (150, 355, 1200, 355);
  line (150, 395, 1200, 395);
  line (150, 435, 1200, 435);
  line (150, 475, 1200, 475);
  
  line (150, 315, 150, 475);
  line (1200, 315, 1200, 475);                                                                                                                                     
  
}    


void comucolocacion () {
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Dibuixa les notes al pentagrama
  strokeWeight (5);
  ellipse (circleX, circleY, 40, 40);

  //Dibuixa els botons de les notes musicals
  botonsnotas1 ();
  
  //Dibuixa les lines del pentagrama
  liniespentagrama ();
  
  //Dibuixa el pentagrama
  imageMode (CENTER);
  image (clausol, 230, 379, 240/2*3, 240/2*3);

  //Dibuixa la flecha atras
  imageMode (CORNER);
  image (atras, 10, 10);
  
}


void puntuacio () {   
//  delay (100);
  
  //Escriu la puntuació del nivell 
  if (puntuacio <=  70 ) {
    textSize (30);
    text ("Puntuación:" + puntuacio, width-120, 30);
  }  
   
  if (puntuacio > 70) {
  puntuacio = 0;
  }  
} 


//Condicions per canviar la posicio i la puntuacio de les notes al llarg del joc en els nivells de colocacio
void canvinotascolocacionN1 () {
  if (notacolocacionN1 == 1) {
    //Si la nota es Do pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio
    if (mouseX < width/2+600 && mouseY > width/2-450) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 350;
        circleY = 515;
        //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);          
      }
    }
        
    //Si fa click al nom de la nota DO dibuixa la nota RE 
    if (mouseX < width/2-450 && mouseX > width/2-600){
      if (mouseY < height && mouseY > height-72 ) {
        circleX = 430;
        circleY = 495;
        ellipse (circleX, circleY, 40, 40);
        notacolocacionN1 = 2;
      } 
    }  
  }
  
  
  if (notacolocacionN1 == 2) {
    //Si la nota es Re pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio 
    if (mouseX < width/2+600 && mouseX > width/2-300 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 430;
        circleY = 495;
        //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
    
    if (mouseX < width/2-450 && mouseX > width/2-600) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 430;
        circleY = 495;
        //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    } 
              
    //Si fa click al nom de la nota RE dibuixa la nota MI 
    if (mouseX < width/2-300 && mouseX > width/2-450){
      if (mouseY < height && mouseY > height-72 ) {
        circleX =510;
        circleY = 475;
        ellipse (circleX, circleY, 40, 40);
        notacolocacionN1 = 3; 
      }
    }
  }
  
  if (notacolocacionN1 == 3) {
    //Si la nota es Mi pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2-150 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 510;
        circleY = 475;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2-300 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 510;
        circleY = 475;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    } 
        
    //Si fa click al nom de la nota MI dibuixa la nota FA 
    if (mouseX < width/2-150 && mouseX > width/2-300){
      if (mouseY < height && mouseY > height-72 ) {
        circleX = 590;
        circleY = 455;
        ellipse (circleX, circleY, 40, 40);
        notacolocacionN1 = 4;
      } 
    }
  }
  
  if (notacolocacionN1 == 4) {
    //Si la nota es Fa pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 590;
        circleY = 455;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2-150 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 590;
        circleY = 455;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota FA dibuixa la nota SOL 
    if (mouseX < width/2 && mouseX > width/2-150){
      if (mouseY < height && mouseY > height-72 ) {
        circleX = 670;
        circleY = 435;
        ellipse (circleX, circleY, 40, 40);
        notacolocacionN1 = 5;
      } 
    }
  }
  
  if (notacolocacionN1 == 5) {
    //Si la nota es Sol pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+150) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 670;
        circleY = 435;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 670;
        circleY = 435;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota SOL dibuixa la nota LA 
    if (mouseX < width/2+150 && mouseX > width/2){
      if (mouseY < height && mouseY > height-72 ) {
        circleX = 750;
        circleY = 415;
        ellipse (circleX, circleY, 40, 40);
        notacolocacionN1 = 6;
      } 
    }
  }   
  
   if (notacolocacionN1 == 6) {
    //Si la nota es La pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+300) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 750;
        circleY = 415;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2+150 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 750;
        circleY = 415;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota LA dibuixa la nota SI 
    if (mouseX < width/2+300 && mouseX > width/2+150){
      if (mouseY < height && mouseY > height-72 ) {
        circleX = 830;
        circleY = 395;
        ellipse (circleX, circleY, 40, 40);
        notacolocacionN1 = 7;
      } 
    }
  } 
  
  if (notacolocacionN1 == 7) {
    //Si la nota es Si pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+450) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 830;
        circleY = 395;
     // stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2+300 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 830;
        circleY = 395;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota SI dibuixa la nota DO
    if (mouseX < width/2+450 && mouseX > width/2+300){
      if (mouseY < height && mouseY > height-72 ) {
        circleX = 910;
        circleY = 375;
        ellipse (circleX, circleY, 40, 40);
        notacolocacionN1 = 8;
      } 
    }
  } 
  
  if (notacolocacionN1 == 8) {
    //Si la nota es Do pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+450 && mouseX > width/2-600) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 910;
        circleY = 375;
     // stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
             
    //Si fa click al nom de la nota DO canvia a como jugar nivel dos 
    if (mouseX < width/2+600 && mouseX > width/2+450){
      if (mouseY < height && mouseY > height-72 ) {
        Pantalla4 ();
      }
    }
  } 
}


//Condicions per canviar la posicio de les notes al llarg del joc en els nivells de colocacio
void canvinotascolocacionN2 () {
  if (notacolocacionN2 == 1) {
    //Si la nota es Do pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio
    if (mouseX < width/2+600 && mouseY > width/2-450) {
      if (mouseY < height && mouseY > height-72) {         
          circleX = 350;
          circleY = 515;
          //stroke (255,0,0);
          ellipse (circleX, circleY, 40, 40); 
      }
    }
        
    //Si fa click al nom de la nota DO dibuixa la nota La 
    if (mouseX < width/2-450 && mouseX > width/2-600){
      if (mouseY < height && mouseY > height-72 ) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleX = 350;
          circleY = 515;
          //stroke (#2EE32C); 
          ellipse (circleX, circleY, 40, 40); 
          
          if (circleX == 350 && circleY == 515) {
            stroke (0);
            circleX = 750;
            circleY = 415;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN2 = 2;
          }
        } 
      } 
    }   
  }
  
  
  if (notacolocacionN2 == 2) {
    //Si la nota es La pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+300) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 750;
        circleY = 415;
        //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2+150 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 750;
        circleY = 415;
        //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota LA dibuixa la nota Sol 
    if (mouseX < width/2+300 && mouseX > width/2+150){
      if (mouseY < height && mouseY > height-72 ) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleX = 750;
          circleY = 415;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          if (circleX == 750 && circleY == 415) {
            stroke (0);
            circleX = 670;
            circleY = 435;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN2 = 3; 
          }
        }  
      } 
    }
  } 
  
  if (notacolocacionN2 == 3) {
    //Si la nota es Sol pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+150) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 670;
        circleY = 435;
        //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 670;
        circleY = 435;
        //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota SOL dibuixa la nota Mi 
    if (mouseX < width/2+150 && mouseX > width/2){
      if (mouseY < height && mouseY > height-72 ) {        
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleX = 670;
          circleY = 435;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          if (circleX == 670 && circleY == 435) {
            stroke (0);
            circleX = 510;
            circleY = 475;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN2 = 4;
          }
        } 
      } 
    }
  }    
  
  if (notacolocacionN2 == 4) {
    //Si la nota es Mi pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2-150 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 510;
        circleY = 475;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2-300 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 510;
        circleY = 475;
        //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    } 
        
    //Si fa click al nom de la nota MI dibuixa la nota Si 
    if (mouseX < width/2-150 && mouseX > width/2-300){
      if (mouseY < height && mouseY > height-72 ) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleX = 510;
          circleY = 475;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          if (circleX == 510 && circleY == 475) {
            stroke (0);
            circleX = 830;
            circleY = 395;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN2 = 5; 
          }
        } 
      }
    } 
  }
  
  if (notacolocacionN2 == 5) {
    //Si la nota es Si pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+450) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 830;
        circleY = 395;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2+300 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 830;
        circleY = 395;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota SI dibuixa la nota Re
    if (mouseX < width/2+450 && mouseX > width/2+300){
      if (mouseY < height && mouseY > height-72 ) {    
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleX = 830;
          circleY = 395;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          if (circleX == 830 && circleY == 395) {
            stroke (0);
            circleX = 430;
            circleY = 495;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN2 = 6;
          }
        } 
      } 
    }
  } 
  
  if (notacolocacionN2 == 6) {
    //Si la nota es Re pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio 
    if (mouseX < width/2+600 && mouseX > width/2-300 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 430;
        circleY = 495;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
    
    if (mouseX < width/2-450 && mouseX > width/2-600) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 430;
        circleY = 495;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    } 
              
    //Si fa click al nom de la nota RE dibuixa la nota Do agut  
    if (mouseX < width/2-300 && mouseX > width/2-450){
      if (mouseY < height && mouseY > height-72 ) {     
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleX = 430;
          circleY = 495;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          if (circleX == 430 && circleY == 495) {
            stroke (0);
            circleX = 910;
            circleY = 375;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN2 = 7; 
          }
        } 
      }
    }
  }
  
  if (notacolocacionN2 == 7) {
    //Si la nota es Do agut pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+450 && mouseX > width/2-600) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 910;
        circleY = 375;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
             
    //Si fa click al nom de la nota DO agut dibuixa la nota Fa   
    if (mouseX < width/2+600 && mouseX > width/2+450){
      if (mouseY < height && mouseY > height-72 ) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleX = 910;
          circleY = 375;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          if (circleX == 910 && circleY == 375) {
            stroke (0);
            circleX = 590;
            circleY = 455;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN2 = 8;  
          }
        } 
      }
    }
  }
  
  if (notacolocacionN2 == 8) {
    //Si la nota es Fa pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 590;
        circleY = 455;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2-150 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleX = 590;
        circleY = 455;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota FA i la puntuacio es més baixa de 80, dibuixa la nota Do pero si la puntuacio es de 80, canvia al nivell 3
    if (mouseX < width/2 && mouseX > width/2-150){
      if (mouseY < height && mouseY > height-72 ) {
        Pantalla5 (); 
        /*
        if (puntuacio <=  70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleX = 590;
          circleY = 455;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleX == 590 && circleY == 455) {
            stroke (0);
            circleX = 350;
            circleY = 515;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN2 = 1; 
          } 
        }   */        
      } 
    }
  } 
}
  
  
//Condicions per canviar la posicio i la puntuacio de les notes al llarg del joc en els nivells de colocacio 
void canvinotascolocacionN3 () {
  if (notacolocacionN3 == 1) {  
    //Si la nota es Si pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+450) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 395;  
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2+300 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 395;  
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);  
      } 
    }
        
    //Si fa click al nom de la nota SI dibuixa la nota Fa
    if (mouseX < width/2+450 && mouseX > width/2+300){
      if (mouseY < height && mouseY > height-72 ) {        
        if (puntuacio <=  70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleY = 395;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleY == 395) {
            stroke (0);
            circleX = 350;
            circleY = 455;  
            ellipse (circleX, circleY, 40, 40); 
            notacolocacionN3 = 2;
          } 
        }
      } 
    }
} 
    
  if (notacolocacionN3 == 2) {
    //Si la nota es Fa pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 455;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2-150 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 455;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota FA dibuixa la nota Do 
    if (mouseX < width/2 && mouseX > width/2-150){
      if (mouseY < height && mouseY > height-72 ) {        
        if (puntuacio <=  70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleY = 455;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleY == 455) {
            stroke (0);
            circleX = 350;
            circleY = 515;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN3 = 3;
          } 
        }
      } 
    }
  }  
  
  if (notacolocacionN3 == 3) {
    //Si la nota es Do pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio
    if (mouseX < width/2+600 && mouseY > width/2-450) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 515;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);          
      }
    }
        
    //Si fa click al nom de la nota DO dibuixa la nota La 
    if (mouseX < width/2-450 && mouseX > width/2-600){
      if (mouseY < height && mouseY > height-72 ) {        
        if (puntuacio <=  70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleY = 515;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleY == 515) {
            stroke (0);
            circleX = 350;
            circleY = 415;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN3 = 4;
          } 
        }
      } 
    }   
  }
  
  if (notacolocacionN3 == 4) {
    //Si la nota es La pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+300) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 415;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2+150 && mouseX > width/2-600) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 415;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota LA dibuixa la nota Re 
    if (mouseX < width/2+300 && mouseX > width/2+150){
      if (mouseY < height && mouseY > height-72 ) {        
        if (puntuacio <=  70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleY = 415;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleY == 415) {
            stroke (0);
            circleX = 350;
            circleY = 495;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN3 = 5;
          } 
        }
      } 
    }
  }      
  
  if (notacolocacionN3 == 5) {
    //Si la nota es Re pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio 
    if (mouseX < width/2+600 && mouseX > width/2-300 ) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 495;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
    
    if (mouseX < width/2-450 && mouseX > width/2-600) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 495;
     // stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    } 
              
    //Si fa click al nom de la nota RE dibuixa la nota Sol  
    if (mouseX < width/2-300 && mouseX > width/2-450){
      if (mouseY < height && mouseY > height-72 ) {       
        if (puntuacio <=  70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleY = 495;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleY == 495) {
            stroke (0);
            circleX = 350;
            circleY = 435;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN3 = 6; 
          } 
        }
      }
    }
  }
  
  if (notacolocacionN3 == 6) {
    //Si la nota es Sol pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2+150) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 435;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 435;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    }
        
    //Si fa click al nom de la nota SOL dibuixa la nota Do agut
    if (mouseX < width/2+150 && mouseX > width/2){
      if (mouseY < height && mouseY > height-72 ) {        
        if (puntuacio <=  70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleY = 435;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleY == 435) {
            stroke (0);
            circleX = 350;
            circleY = 375;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN3 = 7;
          } 
        }
      } 
    }
  }    
  
  if (notacolocacionN3 == 7) {
    //Si la nota es Do agut pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+450 && mouseX > width/2-600) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 375;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
             
    //Si fa click al nom de la nota DO agut dibuixa la nota Mi   
    if (mouseX < width/2+600 && mouseX > width/2+450){
      if (mouseY < height && mouseY > height-72 ) {
        if (puntuacio <=  70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleY = 375;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleY == 375) {
            stroke (0);
            circleX = 350;
            circleY = 475;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN3 = 8;  
          } 
        }
      }
    }
  }
  
  if (notacolocacionN3 == 8) {
    //Si la nota es Mi pero es pica a un altre nom que no li correspon, fa que es mantingui a la mateixa posisicio    
    if (mouseX < width/2+600 && mouseX > width/2-150 ) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 475;
     // stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (mouseX < width/2-300 && mouseX > width/2-600 ) {
      if (mouseY < height && mouseY > height-72) {
        circleY = 475;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      } 
    } 
        
    //Si fa click al nom de la nota Mi i la puntuacio es més baixa de 80, dibuixa la nota Si pero si la puntuacio es de 80, canvia a la pantalla 2
    if (mouseX < width/2-150 && mouseX > width/2-300){
      if (mouseY < height && mouseY > height-72 ) {          
        if (puntuacio < 70) {    
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          circleY = 475;
          //stroke (#2EE32C);
          ellipse (circleX, circleY, 40, 40);
          
          
          if (circleY == 475) {
            stroke (0);
            circleX = 350;
            circleY = 395;
            ellipse (circleX, circleY, 40, 40);
            notacolocacionN3 = 1; 
          } 
        }
        
        Pantalla2 ();        
        
      } 
    }
  }
    
}


void finalpentagrama () {
 //Condicions perque quan la nota arribi al final del pentagrama, torni al principi    
    if (notacolocacionN3 == 1) {
      if (circleX >= 1200) {
        circleX = 350;
        circleY = 395;
        circleX = circleX + 5;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (notacolocacionN3 == 2) {
      if (circleX >= 1200) {
        circleX = 350;
        circleY = 455;
        circleX = circleX + 5;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (notacolocacionN3 == 3) {
      strokeWeight (5);
      lineX = lineX + 5;
      line (lineX, 515, lineX + 55, 515);
      
      if (circleX >= 1200 && lineX >= 1200) {
        circleX = 350;
        circleY = 515;
        circleX = circleX + 5;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
        
        strokeWeight (5);
        lineX = 320;
        lineX = lineX + 5;
        line (lineX, 515, lineX + 55, 515);
      }
    }
    
    if (notacolocacionN3 == 4) {
      if (circleX >= 1200) {
        circleX = 350;
        circleY = 415;
        circleX = circleX + 5;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (notacolocacionN3 == 5) {
      if (circleX >= 1200) {
        circleX = 350;
        circleY = 495;
        circleX = circleX + 5;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (notacolocacionN3 == 6) {
      if (circleX >= 1200) {
        circleX = 350;
        circleY = 435;
        circleX = circleX + 5;
     // stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (notacolocacionN3 == 7) {
      if (circleX >= 1200) {
        circleX = 350;
        circleY = 375;
        circleX = circleX + 5;
     // stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
    
    if (notacolocacionN3 == 8) {
      if (circleX >= 1200 && puntuacio < 80) {
        circleX = 350;
        circleY = 475;
        circleX = circleX + 5;
      //stroke (255,0,0);
        ellipse (circleX, circleY, 40, 40);
      }
    }
  
}