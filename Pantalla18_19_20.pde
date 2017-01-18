void Pantalla18 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 17;
}

void Pantalla19 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 18;
}

void Pantalla20 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 19;  
}



void comucolocacionconsonido () {
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Dibuixa les notes al pentagrama
  strokeWeight (5);
  ellipse (circleX, circleY, 40, 40);
  
  //Dibuixa les lines del pentagrama
  liniespentagrama ();
  
  //Dibuixa les notes al pentegrama
  posicionsnotas ();
  
  //Dibuixa el pentagrama
  imageMode (CENTER);
  image (clausol, 230, 379, 240/2*3, 240/2*3);

  //Dibuixa la flecha atras
  imageMode (CORNER);
  image (atras, 10, 10);
  
}

void posicionsnotas () {
  //Dibuixa les notes al pentegrama
  ellipse (350, 515, 40, 40);      strokeWeight (5);      line (320, 515, 380, 515);
  ellipse (430, 495, 40, 40);
  ellipse (510, 475, 40, 40);
  ellipse (590, 455, 40, 40);
  ellipse (670, 435, 40, 40);
  ellipse (750, 415, 40, 40);
  ellipse (830, 395, 40, 40);
  ellipse (910, 375, 40, 40);
}

void canvinotascolocacionconsonidoN1 () {
  //Condicions per canviar el so, la posició de la nota i la puntuacio de les notes al llarg del joc en els nivells de colocación con sonido N1
  if (notacolocacionconsonidoN1 == 1) {
    //Si fa click a la clau de sol es reprodueix la nota Do       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Do.play ();  
      } 
    }  
    
    //Si fa click a la nota DO, es reprodueix el so de la nota RE 
    if (mouseX < 350+20 && mouseX > 350-20) {
      if (mouseY < 515+20 && mouseY > 515-20) {
        //stroke (#2EE32C);
        circleX = 350;
        circleY = 515;
        ellipse (circleX, circleY, 40, 40); 
        
        Do.stop ();
        Re.play ();   
        notacolocacionconsonidoN1 = 2;
      }
    }
  }
  
  
  if (notacolocacionconsonidoN1 == 2) {
    //Si fa click a la clau de sol es reprodueix la nota RE       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Re.play ();  
      } 
    }  
    
    //Si fa click a la nota RE, es reprodueix el so de la nota MI
    if (mouseX < 430+20 && mouseX > 430-20) {
      if (mouseY < 495+20 && mouseY > 495-20) {
        //stroke (#2EE32C);
        circleX = 430;
        circleY = 495;
        ellipse (circleX, circleY, 40, 40); 
        
        Re.stop ();
        Mi.play ();   
        notacolocacionconsonidoN1 = 3;
      }
    }
  }
  
  if (notacolocacionconsonidoN1 == 3) {
    //Si fa click a la clau de sol es reprodueix la nota Mi       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Mi.play ();  
      } 
    }  
    
    //Si fa click a la nota MI, es reprodueix el so de la nota FA 
    if (mouseX < 510+20 && mouseX > 510-20) {
      if (mouseY < 475+20 && mouseY > 475-20) {
        //stroke (#2EE32C);
        circleX = 510;
        circleY = 475;
        ellipse (circleX, circleY, 40, 40); 
        
        Mi.stop ();
        Fa.play ();   
        notacolocacionconsonidoN1 = 4;
      }
    }  
  } 
  
  if (notacolocacionconsonidoN1 == 4) {
    //Si fa click a la clau de sol es reprodueix la nota Fa       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Fa.play ();  
      } 
    }  
    
    //Si fa click a la nota FA, es reprodueix el so de la nota SOL 
    if (mouseX < 590+20 && mouseX > 590-20) {
      if (mouseY < 455+20 && mouseY > 455-20) {
        //stroke (#2EE32C);
        circleX = 590;
        circleY = 455;
        ellipse (circleX, circleY, 40, 40);
        
        Fa.stop ();
        Sol.play ();   
        notacolocacionconsonidoN1 = 5;
      }
    }
  }
  
  if (notacolocacionconsonidoN1 == 5) {
    //Si fa click a la clau de sol es reprodueix la nota Sol       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Sol.play ();  
      } 
    }  
    
    //Si fa click a la nota SOL, es reprodueix el so de la nota LA 
    if (mouseX < 670+20 && mouseX > 670-20) {
      if (mouseY < 435+20 && mouseY > 435-20) {
        //stroke (#2EE32C);
        circleX = 670;
        circleY = 435;
        ellipse (circleX, circleY, 40, 40);
        
        Sol.stop ();
        La.play ();   
        notacolocacionconsonidoN1 = 6;
      }
    } 
  }
  
   if (notacolocacionconsonidoN1 == 6) {
     //Si fa click a la clau de sol es reprodueix la nota La       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        La.play ();  
      } 
    }  
     
     //Si fa click a la nota LA, es reprodueix el so de la nota SI 
     if (mouseX < 750+20 && mouseX > 750-20) {
       if (mouseY < 415+20 && mouseY > 415-20) {
         //stroke (#2EE32C);
         circleX = 750;
         circleY = 415;
         ellipse (circleX, circleY, 40, 40);
         
         La.stop ();
         Si.play ();   
         notacolocacionconsonidoN1 = 7;
       }
     } 
   }  
  
  if (notacolocacionconsonidoN1 == 7) {
    //Si fa click a la clau de sol es reprodueix la nota Si       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Si.play ();  
      } 
    }  
    
    //Si fa click a la nota SI, es reprodueix el so de la nota DO 
    if (mouseX < 830+20 && mouseX > 830-20) {
      if (mouseY < 395+20 && mouseY > 395-20) {
        //stroke (#2EE32C);
        circleX = 830;
        circleY = 395;
        ellipse (circleX, circleY, 40, 40);
        
        Si.stop ();
        Doagut.play ();   
        notacolocacionconsonidoN1 = 8;
      }
    } 
  } 
  
  if (notacolocacionconsonidoN1 == 8) {
    //Si fa click a la clau de sol es reprodueix la nota DO agut       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Doagut.play ();  
      } 
    }  
    
    //Si fa click a la nota DO agut, canvia a como jugar nivel dos 
    if (mouseX < 910+20 && mouseX > 910-20) {
      if (mouseY < 375+20 && mouseY > 375-20) {
        Doagut.stop ();
        Pantalla16 ();
      }
    }
  } 
}


void canvinotascolocacionconsonidoN2 () {
  //Condicions per canviar el so, la posició de la nota i la puntuacio de les notes al llarg del joc en els nivells de colocación con sonido N2
  if (notacolocacionconsonidoN2 == 1) {
    //Si fa click a la clau de sol es reprodueix la nota La       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        La.play ();  
      } 
    }  
    
    //Si fa click a la nota LA, es reprodueix el so de la nota RE 
    if (mouseX < 750+20 && mouseX > 750-20) {
      if (mouseY < 415+20 && mouseY > 415-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          //stroke (#2EE32C);
          circleX = 750;
          circleY = 415;
          ellipse (circleX, circleY, 40, 40);
          
          La.stop ();
          Re.play ();   
          notacolocacionconsonidoN2 = 2; 
        }
      }
    }
  }
  
  if (notacolocacionconsonidoN2 == 2) {
    //Si fa click a la clau de sol es reprodueix la nota RE       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Re.play ();  
      } 
    }  
    
    //Si fa click a la nota RE, es reprodueix el so de la nota FA
    if (mouseX < 430+20 && mouseX > 430-20) {
      if (mouseY < 495+20 && mouseY > 495-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          //stroke (#2EE32C);
          circleX = 430;
          circleY = 495;
          ellipse (circleX, circleY, 40, 40);
          
          Re.stop ();
          Fa.play ();
          notacolocacionconsonidoN2 = 3; 
        }
      }
    }
  } 
  
  if (notacolocacionconsonidoN2 == 3) {
    //Si fa click a la clau de sol es reprodueix la nota FA       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Fa.play ();  
      } 
    }  
    
    //Si fa click a la nota FA, es reprodueix el so de la nota SI 
    if (mouseX < 590+20 && mouseX > 590-20) {
      if (mouseY < 455+20 && mouseY > 455-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
        
          //stroke (#2EE32C);
          circleX = 590;
          circleY = 455;
          ellipse (circleX, circleY, 40, 40); 
          
          Fa.stop ();
          Si.play ();   
          notacolocacionconsonidoN2 = 4; 
        }
      }
    }  
  } 
  
  if (notacolocacionconsonidoN2 == 4) {
    //Si fa click a la clau de sol es reprodueix la nota SI       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Si.play ();  
      } 
    }  
    
     //Si fa click a la nota SI, es reprodueix el so de la nota DO 
     if (mouseX < 830+20 && mouseX > 830-20) {
       if (mouseY < 395+20 && mouseY > 395-20) {
         if (puntuacio <=  70 ) {
           puntuacio = puntuacio + 10;
           textSize (30);
           text ("Puntuación:" + puntuacio, width-120, 30);
         
           //stroke (#2EE32C);
           circleX = 830;
           circleY = 395;
           ellipse (circleX, circleY, 40, 40);
           
           Si.stop ();
           Do.play ();   
           notacolocacionconsonidoN2 = 5; 
         }
       }
     } 
   }  
   
   if (notacolocacionconsonidoN2 == 5) {
     //Si fa click a la clau de sol es reprodueix la nota DO       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Do.play ();  
      } 
    }  
     
    //Si fa click a la nota DO, es reprodueix el so de la nota SOL 
    if (mouseX < 350+20 && mouseX > 350-20) {
      if (mouseY < 515+20 && mouseY > 515-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
        
          //stroke (#2EE32C);
          circleX = 350;
          circleY = 515;
          ellipse (circleX, circleY, 40, 40); 
          
          Do.stop ();
          Sol.play ();   
          notacolocacionconsonidoN2 = 6; 
        }
      }
    }
  }
  
  if (notacolocacionconsonidoN2 == 6) {
    //Si fa click a la clau de sol es reprodueix la nota SOL       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Sol.play ();  
      } 
    }  
    
    //Si fa click a la nota SOL, es reprodueix el so de la nota DO agut 
    if (mouseX < 670+20 && mouseX > 670-20) {
      if (mouseY < 435+20 && mouseY > 435-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
        
          //stroke (#2EE32C);
          circleX = 670;
          circleY = 435;
          ellipse (circleX, circleY, 40, 40);
          
          Sol.stop ();
          Doagut.play ();   
          notacolocacionconsonidoN2 = 7; 
        }
      }
    } 
  }
  
   if (notacolocacionconsonidoN2 == 7) {
     //Si fa click a la clau de sol es reprodueix la nota DO agut        
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Doagut.play ();  
      } 
    }  
     
    //Si fa click a la nota DO agut, es reprodueix el so de la nota MI 
    if (mouseX < 910+20 && mouseX > 910-20) {
      if (mouseY < 375+20 && mouseY > 375-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
        
          //stroke (#2EE32C);
          circleX = 910;
          circleY = 375;
          ellipse (circleX, circleY, 40, 40);
          
          Doagut.stop ();
          Mi.play ();   
          notacolocacionconsonidoN2 = 8; 
        }
      }
    } 
  } 
  
  if (notacolocacionconsonidoN2 == 8) {
    //Si fa click a la clau de sol es reprodueix la nota MI       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Mi.play ();  
      } 
    }  
    
    //Si fa click a la nota MI, canvia a la pantalla17 (como jugar colocacion con sonido N3)
    if (mouseX < 510+20 && mouseX > 510-20) {
      if (mouseY < 475+20 && mouseY > 475-20) {
        Mi.stop ();
        Pantalla17 ();
      }
    }
  }

}


void canvinotascolocacionconsonidoN3 () {
  //Condicions per canviar el so, la posició de la nota i la puntuacio de les notes al llarg del joc en els nivells de colocación con sonido N3
  if (notacolocacionconsonidoN3 == 1) {
    //Si fa click a la clau de sol es reprodueix la nota RE       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Re.play ();  
      } 
    }  
    
    //Si fa click a la nota RE, es reprodueix el so de la nota SOL
    if (mouseX < 430+20 && mouseX > 430-20) {
      if (mouseY < 495+20 && mouseY > 495-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          //stroke (#2EE32C);
          circleX = 430;
          circleY = 495;
          ellipse (circleX, circleY, 40, 40);
          
          Re.stop ();
          Sol.play ();
          notacolocacionconsonidoN3 = 2; 
          temps = 10;
        }
        
        if (puntuacio == 80) {
          Sol.stop ();
          Pantalla2 (); 
        }
      }
    }
  }
  
  if (notacolocacionconsonidoN3 == 2) {
    //Si fa click a la clau de sol es reprodueix la nota SOL       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Sol.play ();  
      } 
    }  
    
    //Si fa click a la nota SOL, es reprodueix el so de la nota DO agut 
    if (mouseX < 670+20 && mouseX > 670-20) {
      if (mouseY < 435+20 && mouseY > 435-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
        
          //stroke (#2EE32C);
          circleX = 670;
          circleY = 435;
          ellipse (circleX, circleY, 40, 40);
          
          Sol.stop ();
          Doagut.play ();   
          notacolocacionconsonidoN3 = 3; 
          temps = 10;
        }
        
        if (puntuacio == 80) {
          Doagut.stop ();
          Pantalla2 (); 
        }
      }
    } 
  }
  
  if (notacolocacionconsonidoN3 == 3) {
    //Si fa click a la clau de sol es reprodueix la nota DO agut       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Doagut.play ();  
      } 
    }  
    
    //Si fa click a la nota DO agut, es reprodueix el so de la nota DO 
    if (mouseX < 910+20 && mouseX > 910-20) {
      if (mouseY < 375+20 && mouseY > 375-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
        
          //stroke (#2EE32C);
          circleX = 910;
          circleY = 375;
          ellipse (circleX, circleY, 40, 40);
          
          Doagut.stop ();
          Do.play ();   
          notacolocacionconsonidoN3 = 4; 
          temps = 10;
        }
        
        if (puntuacio == 80) {
          Do.stop ();
          Pantalla2 (); 
        }
      }
    } 
  } 
  
  if (notacolocacionconsonidoN3 == 4) {
    //Si fa click a la clau de sol es reprodueix la nota DO       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Do.play ();  
      } 
    }  
    
    //Si fa click a la nota DO, es reprodueix el so de la nota La 
    if (mouseX < 350+20 && mouseX > 350-20) {
      if (mouseY < 515+20 && mouseY > 515-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
        
          //stroke (#2EE32C);
          circleX = 350;
          circleY = 515;
          ellipse (circleX, circleY, 40, 40); 
          
          Do.stop ();
          La.play ();   
          notacolocacionconsonidoN3 = 5; 
          temps = 10;
        }
        
        if (puntuacio == 80) {
          La.stop ();
          Pantalla2 (); 
        }
      }
    }
  }
  
  if (notacolocacionconsonidoN3 == 5) {
    //Si fa click a la clau de sol es reprodueix la nota LA       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        La.play ();  
      } 
    }  
    
    //Si fa click a la nota LA, es reprodueix el so de la nota MI
    if (mouseX < 750+20 && mouseX > 750-20) {
      if (mouseY < 415+20 && mouseY > 415-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          //stroke (#2EE32C);
          circleX = 750;
          circleY = 415;
          ellipse (circleX, circleY, 40, 40);
          
          La.stop ();
          Mi.play ();   
          notacolocacionconsonidoN3 = 6; 
          temps = 10;
        }
        
        if (puntuacio == 80) {
          Mi.stop ();
          Pantalla2 (); 
        }
      }
    }
  }
  
  if (notacolocacionconsonidoN3 == 6) {
    //Si fa click a la clau de sol es reprodueix la nota MI       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Mi.play ();  
      } 
    }  
    
    //Si fa click a la nota MI, es reprodueix el so de la nota SI
    if (mouseX < 510+20 && mouseX > 510-20) {
      if (mouseY < 475+20 && mouseY > 475-20) {  
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          //stroke (#2EE32C);
          circleX = 510;
          circleY = 475;
          ellipse (circleX, circleY, 40, 40);
          
          Mi.stop ();
          Si.play ();   
          notacolocacionconsonidoN3 = 7; 
          temps = 10;
        }
        
        if (puntuacio == 80) {
          Si.stop ();
          Pantalla2 (); 
        }
      }
    }
  }
  
  if (notacolocacionconsonidoN3 == 7) {
    //Si fa click a la clau de sol es reprodueix la nota SI       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Si.play ();  
      } 
    }  
    
     //Si fa click a la nota SI, es reprodueix el so de la nota FA 
     if (mouseX < 830+20 && mouseX > 830-20) {
       if (mouseY < 395+20 && mouseY > 395-20) {
         if (puntuacio <=  70 ) {
           puntuacio = puntuacio + 10;
           textSize (30);
           text ("Puntuación:" + puntuacio, width-120, 30);
         
           //stroke (#2EE32C);
           circleX = 830;
           circleY = 395;
           ellipse (circleX, circleY, 40, 40);
           
           Si.stop ();
           Fa.play ();   
           notacolocacionconsonidoN3 = 8; 
           temps = 10;
         }
         
         if (puntuacio == 80) {
          Fa.stop ();
          Pantalla2 (); 
        }
       }
     } 
   }    
   
   if (notacolocacionconsonidoN3 == 8) {
     //Si fa click a la clau de sol es reprodueix la nota FA       
    if (mouseX < 270 && mouseX > 160){
      if (mouseY < 530 && mouseY > 240) {
        Fa.play ();  
      } 
    }  
     
    //Si fa click a la nota FA, es reprodueix el so de la nota SI 
    if (mouseX < 590+20 && mouseX > 590-20) {
      if (mouseY < 455+20 && mouseY > 455-20) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
        
          //stroke (#2EE32C);
          circleX = 590;
          circleY = 455;
          ellipse (circleX, circleY, 40, 40); 
          
          Fa.stop ();
          Re.play ();   
          notacolocacionconsonidoN3 = 1; 
          temps = 10;
        }
        
        if (puntuacio == 80) {
          Re.stop ();
          Pantalla2 (); 
        }
      }
    }  
  } 
}