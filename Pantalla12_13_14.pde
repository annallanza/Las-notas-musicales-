void Pantalla12 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 11;
}


void Pantalla13 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 12;
}


void Pantalla14 () {
  //Escriu el estat del joc, és a dir, la pantalla en la que es troba
  gamestate = 13;
 }



void botonsnotas2 () {
//Dibuixa els noms i els recuadres de les notes musicals 
  stroke (0);
  strokeWeight (5);                                     textSize (50);
  ellipse (width/4, height/4*3, 120, 120);              text ("DO", width/4, height/4*3-5);      
  ellipse (width/4+40, height/4*3-150, 120, 120);       text ("RE", width/4+40, height/4*3-155);
  ellipse (width/4+80, height/4*3-300, 120, 120);       text ("MI", width/4+80, height/4*3-305);
  ellipse (width/2-120, height/4-50, 120, 120);         text ("FA", width/2-120, height/4-55);
 
  ellipse (width/2+120, height/4-50, 120, 120);         text ("SOL", width/2+120, height/4-55);
  ellipse (width/4*3-80, height/4*3-300, 120, 120);     text ("LA", width/4*3-80, height/4*3-305);
  ellipse (width/4*3-40, height/4*3-150, 120, 120);     text ("SI", width/4*3-40, height/4*3-155);
  ellipse (width/4*3, height/4*3, 120, 120);            text ("DO", width/4*3, height/4*3-5);
}


void comusonido () {
  //Estableix el fons de pantalla 
  //background (#FA7C7C);
  //background (#893636);
  image (fons, 0, 0, width, height);
  
  //Dibuixa la imatge de la nota musical del centre 
  imageMode (CENTER);
  image (notasonido, width/2, height/2, 300, 300);
  
  //Dibuixa els noms i els recuadres de les notes musicals 
  botonsnotas2 (); 
  
  //Dibuixa la flecha atras
  imageMode (CORNER);
  image (atras, 10, 10); 
}


void cuentaatras () {
  delay (1000);

  if (temps >= 0) {
    textSize (30);
    text (temps, width-30, height-30);
    temps = temps - 1;
  } 
  
  if (temps < 0) {
    temps = 10; 
  }
  
  if (notasonidoN3 == 1) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);  
      }      
    } 
  }
  
   if (notasonidoN3 == 2) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notasonidoN3 == 3) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notasonidoN3 == 4) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notasonidoN3 == 5) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notasonidoN3 == 6) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notasonidoN3 == 7) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notasonidoN3 == 8) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
  
  if (notacolocacionconsonidoN3 == 1) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);  
      }      
    } 
  }
  
   if (notacolocacionconsonidoN3 == 2) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notacolocacionconsonidoN3 == 3) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notacolocacionconsonidoN3 == 4) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notacolocacionconsonidoN3 == 5) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notacolocacionconsonidoN3 == 6) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notacolocacionconsonidoN3 == 7) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
  
   if (notacolocacionconsonidoN3 == 8) {     
    //Si la cuenta atràs arriba a 0, fa restar 10 a la puntuacio
    if (temps == 0) {
      if (puntuacio <= 70) {
        puntuacio = puntuacio - 10;
        textSize (30);
        text ("Puntuación:" + puntuacio, width-120, 30);    
      }      
    } 
  }
    
}


//Condicions per canviar el so i la puntuacio de les notes al llarg del joc en els nivells de sonido
void canvinotassonidoN1 () {
  if (notasonidoN1 == 1) {
    //Si fa click a la imatge del centre es reprodueix la nota Do       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Do.play ();  
      } 
    }  
    
    //Si fa click al nom de la nota DO es reprodueix la nota RE      
    if (mouseX < width/4+65 && mouseX > width/4-65){
      if (mouseY < height/4*3+65 && mouseY > height/4*3-65) {
        Do.stop ();
        Re.play (); 
        notasonidoN1 = 2;
      } 
    }   
  }    
  
  if (notasonidoN1 == 2) {  
    //Si fa click a la imatge del centre es reprodueix la nota Re       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Re.play ();  
      } 
    }  
    
    //Si fa click al nom de la nota RE es reprodueix la nota MI           
    if (mouseX < width/4+105 && mouseX > width/4-25){
      if (mouseY < height/4*3-85 && mouseY > height/4*3-215) {
        Re.stop ();
        Mi.play ();  
        notasonidoN1 = 3;
      }  
    } 
  }    
 
  if (notasonidoN1 == 3) { 
    //Si fa click a la imatge del centre es reprodueix la nota Mi       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Mi.play ();  
      } 
    } 
    
    //Si fa click al nom de la nota MI es reprodueix la nota FA         
    if (mouseX < width/4+145 && mouseX > width/4+15){
      if (mouseY < height/4*3-235 && mouseY > height/4*3-365) {
        Mi.stop ();
        Fa.play ();  
        notasonidoN1 = 4;
      } 
    }
  }
  
  if (notasonidoN1 == 4) { 
    //Si fa click a la imatge del centre es reprodueix la nota Fa       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Fa.play ();  
      } 
    } 
     
    //Si fa click al nom de la nota FA es reprodueix la nota SOL         
    if (mouseX < width/2-54 && mouseX > width/2-185){
      if (mouseY < height/4+15 && mouseY > height/4-115) {
        Fa.stop ();
        Sol.play ();  
        notasonidoN1 = 5;
      } 
    }  
  }
  
  if (notasonidoN1 == 5) { 
    //Si fa click a la imatge del centre es reprodueix la nota Sol       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Sol.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota SOL es reprodueix la nota LA     
    if (mouseX < width/2+185 && mouseX > width/2+55){
      if (mouseY < height/4+15 && mouseY > height/4-115) {
        Sol.stop ();
        La.play (); 
        notasonidoN1 = 6;
      } 
    } 
  }
  
  if (notasonidoN1 == 6) { 
    //Si fa click a la imatge del centre es reprodueix la nota La       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        La.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota LA es reprodueix la nota SI        
    if (mouseX < width/4*3-15 && mouseX > width/4*3-145){
      if (mouseY < height/4*3-235 && mouseY > height/4*3-365) {
        La.stop ();
        Si.play ();  
        notasonidoN1 = 7;
      } 
    } 
  }
  
  if (notasonidoN1 == 7) { 
    //Si fa click a la imatge del centre es reprodueix la nota La       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Si.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota SI es reprodueix la nota DO      
    if (mouseX < width/4*3+25 && mouseX > width/4*3-105){
      if (mouseY < height/4*3-85 && mouseY > height/4*3-215) {
        Si.stop ();
        Doagut.play ();  
        notasonidoN1 = 8;
      } 
    } 
  }
  
  if (notasonidoN1 == 8) { 
    //Si fa click a la imatge del centre es reprodueix la nota La       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Doagut.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota DO canvia a como jugar nivel dos     ellipse (width/4*3, height/4*3, 120, 120);
    if (mouseX < width/4*3+65 && mouseX > width/4*3-65){
      if (mouseY < height/4*3+65 && mouseY > height/4*3-65) {
        Doagut.stop ();
        Pantalla10 ();
      }
    } 
  } 
  
}


//Condicions per canviar el so i la puntuacio de les notes al llarg del joc en els nivells de sonido
void canvinotassonidoN2 () {
  if (notasonidoN2 == 1) { 
    //Si fa click a la imatge del centre es reprodueix la nota Fa       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Fa.play ();  
      } 
    } 
     
    //Si fa click al nom de la nota FA es reprodueix la nota Do agut         
    if (mouseX < width/2-54 && mouseX > width/2-185){
      if (mouseY < height/4+15 && mouseY > height/4-115) {        
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Fa.stop (); 
          Doagut.play ();  
          notasonidoN2 = 2;
          
        } 
      } 
    }  
  }
  
  if (notasonidoN2 == 2) { 
    //Si fa click a la imatge del centre es reprodueix la nota Do agut      
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Doagut.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota DO es reprodueix la nota Mi
    if (mouseX < width/4*3+65 && mouseX > width/4*3-65){
      if (mouseY < height/4*3+65 && mouseY > height/4*3-65) {        
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Doagut.stop ();
          Mi.play ();  
          notasonidoN2 = 3;
          
        } 
      }
    } 
  } 
  
   if (notasonidoN2 == 3) { 
    //Si fa click a la imatge del centre es reprodueix la nota Mi       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Mi.play ();  
      } 
    } 
    
    //Si fa click al nom de la nota MI es reprodueix la nota La         
    if (mouseX < width/4+145 && mouseX > width/4+15){
      if (mouseY < height/4*3-235 && mouseY > height/4*3-365) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Mi.stop ();
          La.play ();  
          notasonidoN2 = 4;
          
        } 
      } 
    }
  }
  
  
  if (notasonidoN2 == 4) { 
    //Si fa click a la imatge del centre es reprodueix la nota La       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        La.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota LA es reprodueix la nota SI        
    if (mouseX < width/4*3-15 && mouseX > width/4*3-145){
      if (mouseY < height/4*3-235 && mouseY > height/4*3-365) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          La.stop ();
          Do.play ();  
          notasonidoN2 = 5;
          
        } 
      } 
    } 
  }
  
  if (notasonidoN2 == 5) {
    //Si fa click a la imatge del centre es reprodueix la nota Do       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Do.play ();  
      } 
    }  
    
    //Si fa click al nom de la nota DO es reprodueix la nota Sol      
    if (mouseX < width/4+65 && mouseX > width/4-65){
      if (mouseY < height/4*3+65 && mouseY > height/4*3-65) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Do.stop ();
          Sol.play (); 
          notasonidoN2 = 6;
          
        } 
      } 
    }   
  }    
  
  if (notasonidoN2 == 6) { 
    //Si fa click a la imatge del centre es reprodueix la nota Sol       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Sol.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota SOL es reprodueix la nota Si     
    if (mouseX < width/2+185 && mouseX > width/2+55){
      if (mouseY < height/4+15 && mouseY > height/4-115) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Sol.stop ();
          Si.play (); 
          notasonidoN2 = 7;
          
        }
      } 
    } 
  }
  
  if (notasonidoN2 == 7) { 
    //Si fa click a la imatge del centre es reprodueix la nota Si       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Si.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota SI es reprodueix la nota Re      
    if (mouseX < width/4*3+25 && mouseX > width/4*3-105){
      if (mouseY < height/4*3-85 && mouseY > height/4*3-215) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Si.stop ();
          Re.play ();  
          notasonidoN2 = 8;
          
        }
      } 
    } 
  }
  
  if (notasonidoN2 == 8) {  
    //Si fa click a la imatge del centre es reprodueix la nota Re       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Re.play ();  
      } 
    }  
    
    //Si fa click al nom de la nota RE i la puntuacio es mes baixa que 80, es reprodueix la nota Fa , pero si la puntuacio es de 80, es canvia al N2           
    if (mouseX < width/4+105 && mouseX > width/4-25){
      if (mouseY < height/4*3-85 && mouseY > height/4*3-215) {
        /*
        if (puntuacio < 80) {    
          Re.stop ();
          Fa.play ();
          notasonidoN2 = 1;
        } */
        Re.stop ();
        Pantalla11 ();
      }  
    } 
  }    
  
}


void canvinotassonidoN3 () {
  if (notasonidoN3 == 1) {     
    //Si fa click a la imatge del centre es reprodueix la nota Sol       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Sol.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota SOL es reprodueix la nota Re    
    if (mouseX < width/2+185 && mouseX > width/2+55){
      if (mouseY < height/4+15 && mouseY > height/4-115) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Sol.stop ();
          Re.play (); 
          notasonidoN3 = 2;
          
        }
        
        if (puntuacio == 80) {
          Re.stop ();
          Pantalla2 (); 
        }
        
        temps = 10;
      } 
    } 
  }
  
  if (notasonidoN3 == 2) {      
    //Si fa click a la imatge del centre es reprodueix la nota Re       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Re.play ();  
      } 
    }  
    
    //Si fa click al nom de la nota RE es reprodueix la nota Si           
    if (mouseX < width/4+105 && mouseX > width/4-25){
      if (mouseY < height/4*3-85 && mouseY > height/4*3-215) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Re.stop ();
          Si.play ();  
          notasonidoN3 = 3;
          
        }
        
        if (puntuacio == 80) {
          Si.stop ();
          Pantalla2 (); 
        }
        
        temps = 10;
      }  
    } 
  }    
  
  if (notasonidoN3 == 3) { 
    //Si fa click a la imatge del centre es reprodueix la nota Si       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Si.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota SI es reprodueix la nota Fa      
    if (mouseX < width/4*3+25 && mouseX > width/4*3-105){
      if (mouseY < height/4*3-85 && mouseY > height/4*3-215) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Si.stop ();
          Fa.play ();  
          notasonidoN3 = 4;
          
        }
        
        if (puntuacio == 80) {
          Fa.stop ();
          Pantalla2 (); 
        }
        
        temps = 10;
      } 
    } 
  }
  
  if (notasonidoN3 == 4) { 
    //Si fa click a la imatge del centre es reprodueix la nota Fa       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Fa.play ();  
      } 
    } 
     
    //Si fa click al nom de la nota FA es reprodueix la nota Do         
    if (mouseX < width/2-54 && mouseX > width/2-185){
      if (mouseY < height/4+15 && mouseY > height/4-115) {
        if (puntuacio <= 70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Fa.stop ();
          Do.play ();  
          notasonidoN3 = 5;
          
        }
        
        if (puntuacio == 80) {
          Do.stop ();
          Pantalla2 (); 
        }
        
        temps = 10;
      } 
    }  
  }
  
  if (notasonidoN3 == 5) {
    //Si fa click a la imatge del centre es reprodueix la nota Do       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Do.play ();  
      } 
    }  
    
    //Si fa click al nom de la nota DO es reprodueix la nota La      
    if (mouseX < width/4+65 && mouseX > width/4-65){
      if (mouseY < height/4*3+65 && mouseY > height/4*3-65) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Do.stop ();
          La.play (); 
          notasonidoN3 = 6;
          
        }
        
        if (puntuacio == 80) {
          La.stop ();
          Pantalla2 (); 
        }
        
        temps = 10;
      } 
    }   
  }    
  
   if (notasonidoN3 == 6) { 
    //Si fa click a la imatge del centre es reprodueix la nota La       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        La.play ();  
      } 
    } 
      
    //Si fa click al nom de la nota LA es reprodueix la nota Mi        
    if (mouseX < width/4*3-15 && mouseX > width/4*3-145){
      if (mouseY < height/4*3-235 && mouseY > height/4*3-365) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          La.stop ();
          Mi.play ();  
          notasonidoN3 = 7;
          
        }
        
        if (puntuacio == 80) {
          Mi.stop ();
          Pantalla2 (); 
        }
        
        temps = 10;
      } 
    } 
  }
  
  if (notasonidoN3 == 7) { 
    //Si fa click a la imatge del centre es reprodueix la nota Mi       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Mi.play ();  
      } 
    } 
    
    //Si fa click al nom de la nota MI es reprodueix la nota Do agut         
    if (mouseX < width/4+145 && mouseX > width/4+15){
      if (mouseY < height/4*3-235 && mouseY > height/4*3-365) {
        if (puntuacio <=  70 ) {
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Mi.stop ();
          Doagut.play ();  
          notasonidoN3 = 8;
          
        }
        
        if (puntuacio == 80) {
          Doagut.stop ();
          Pantalla2 (); 
        }
        
        temps = 10;
      } 
    }
  }
  
  if (notasonidoN3 == 8) { 
    //Si fa click a la imatge del centre es reprodueix la nota Do agut       
    if (mouseX < width/2+145 && mouseX > width/2-145){
      if (mouseY < height/2+145 && mouseY > height/2-145) {
        Doagut.play ();  
      } 
    } 
      
     //Si fa click al nom de la nota Do agut i la puntuacio es mes baixa que 80, es reprodueix la nota Sol, pero si la puntuacio es de 80, es canvia a la pantalla2
    if (mouseX < width/4*3+65 && mouseX > width/4*3-65){
      if (mouseY < height/4*3+65 && mouseY > height/4*3-65) {
        if (puntuacio <= 70) {  
          puntuacio = puntuacio + 10;
          textSize (30);
          text ("Puntuación:" + puntuacio, width-120, 30);
          
          Doagut.stop ();
          Sol.play ();
          notasonidoN3 = 1;
          temps = 10;
        }
        
        if (puntuacio == 80) {
          Sol.stop ();
          Pantalla2 (); 
        }
      }
    } 
  } 

}