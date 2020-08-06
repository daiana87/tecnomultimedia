int reset, seg;
PFont inicio;


int estado;


float dboton1;
float dboton2;
float dboton3;
float dboton4;
float dboton5;
float dboton6;
float dboton7;
float dboton8;
float dboton9;
float dboton10;

//------------------Pantalla 0

PImage pantinicio, pj0;
String titulo;
float px,py,pypj;


//------------------Pantalla 1

PImage pant1;
PImage globpan1;
String tex1;
String tex2;
String tex3;


//------------------Pantalla 2

String texp2;
PImage pant2;
PImage mano1;
PImage mano2;

//------------------Pantalla 3

PImage pant3;
PImage globpan3;
String texp3;
String texcuer;
String texard;

//------------------Pantalla 4

PImage pant4;
PImage lobo1;
PImage lobo2;
String cartel4, cart4;
float posx;
float posy;

//------------------Pantalla 5

PImage pant5;
PImage pj5;
String hojas, baston, lata, nido, txt, txt1;



//------------------Pantalla 6

PImage pant6;
String tex6, textc, textp, textm;



//------------------Pantalla 7

PImage pant7;
String text7;


//------------------Pantalla 8

PImage pant8;
PImage ch1, ch2;
String intui;

//------------------Pantalla 9

PImage pant9;
String txt9;

//------------------Pantalla 10

PImage pant10;
String txtcred;
int posycred;

//----------------------------------------------------------------------------------------------------------------------

void setup() {

  size(800, 600);
  rectMode(CENTER);
  textAlign(CENTER);
  estado= 0;
  reset=0;
  inicio= loadFont ("JungleFeverNF-48.vlw");
  
  
  //------------------Pantalla 0  
 
  pantinicio= loadImage("pant0.jpg" );
  pj0= loadImage("P5.png" );
  titulo= "JONAS EN EL BOSQUE";
  px= width/2;
  py= height/2+30;
  pypj= height/1.6;
  
  //------------------ Pantalla 1
  
  pant1= loadImage("Pantalla1.jpg" );
  globpan1= loadImage ("dialogo1.png");
  tex1= "Estaba de campamento con mi amigos y me he perdido en el bosque";
  tex2= "Para llegar al campamento debo atravesar el bosque y tengo que hacerlo antes que anochezca";
  tex3= "Presione SPACE para entrar al bosque";



  //------------------Pantalla 2

  pant2= loadImage ("pantalla2.jpg");
  texp2= "Tengo que elegir que camino tomare";
  mano1= loadImage ("mano1.png");
  mano2= loadImage ("mano2.png");

  //------------------Pantalla 3

  pant3= loadImage ("pantalla3.jpg");
  globpan3= loadImage ("globo diag2.png"); 
  ;
  texp3= "Le pediré consejos a estos animalitos";
  texcuer= "La ardilla miente, sigue mi camino";
  texard= "Por este camino hay unos amigos que te ayudaran";


  //------------------Pantalla 4

  pant4= loadImage ("pantalla4.jpg");
  lobo1= loadImage ("lobo1.png");
  cartel4= "Oprime SPACE para volver";
  cart4= "Oprime la tecla 'H' para correr";
  lobo2= loadImage ("lobo2.png"); 
  posx= 400;
  posy= 410;

  //------------------Pantalla 5 
  
  pant5= loadImage ("pantalla5.jpg");
  pj5= loadImage ("PJ5.png");
  hojas= "No hay nada por aqui";
  baston= "Encontre mi banderin, debo estar cerca";
  lata= "Alguien estuvo por aqui, quizas este sea el camino";
  nido= "Solo es un nido";
  txt= "Tengo que buscar pistas que me ayuden a encontrar el camino correcto";
  txt1="Por aqui no es";

  //------------------Pantalla 6
  
  pant6= loadImage ("pantalla6.jpg"); 
  tex6= "Quizas deba volver a pedir consejos"; 
  textm="Este camino, te llevara a tus amigos";
  textc="He visto personas por ahi";
  textp="No estoy muy seguro, creo que es por aqui";


  //------------------Pantalla 7
  
  pant7= loadImage ("pantalla7.jpg");
  text7= "Oprima SPACE para volver a intentarlo";


  //------------------Pantalla 8 
  
  pant8= loadImage ("pantalla8.jpg");
  ch1= loadImage ("chico1.png");
  ch2= loadImage ("chico2.png");
  intui = " mmmm...... que camino tomare?";

  //------------------Pantalla 9
  
  pant9= loadImage ("pantalla9.jpg");
  txt9="Siiiiiiiiiii, encontre a mis amigoosss";

  //------------------Pantalla 10

  pant10= loadImage ("pantalla10.jpg");
  txtcred="Universidad de Artes Tecnologia Multimedial 1 Docente: Matias Jauregui Alumna: Zarza Daiana";
  posycred= height+200;
}

//------------------------------------------------------------------------------------------------------------------
void draw() {
  seg = seg + 1;
 
  
  //------------------ Pantalla 0
  
  if(estado == 0){ 
  image (pantinicio,0, 0, 800, 600 );
    fill(255);
    rect(width/2, height/1.1,415,30,10);
    rectMode(CORNER);
    fill(255,0,0);
    rect(190, 530,seg,30,10);
    rectMode(CENTER);
    textSize(30);
    fill(255, seg*2);
    pushStyle ();  
    textFont(inicio);
    text(titulo, px, py, 200,200);
    image(pj0, width/2-50, pypj,100,200);
    popStyle ();
  
    
    if(seg/60>=7){
    estado=1;
    seg=reset;
    } 
}


  //------------------ Pantalla 1

  if (estado==1) {

    image(pant1, 0, 0, 800, 600); 
    textSize(20);
    fill(0);

    if (seg/60>=2 && seg/60<=7 ) {
      textSize(20);  
      image(globpan1, 190, 160, 310, 250); 
      text(tex1, 350, 330, 250, 200);
    } else if (seg/60>=9 && seg/60<=14) {
      image(globpan1, 190, 160, 310, 250);
      text(tex2, 350, 325, 260, 200);
    } else if (seg/60>15) { 
      textSize(23);
      fill(255);
      text(tex3, 365, 120, 400,100);
      
    }
    if (seg/60<=14) {
      pushStyle ();  
      textFont(inicio);
      textSize(35);
      text("ENTRADA", 365, 120);
      popStyle ();
    }
  }

  //------------------ Pantalla 2

  else if (estado==2) {
    image(pant2, 0, 0, 800, 600); 

    textSize(17);
    fill(0);
    if (seg/60>8) {
      if (mouseX >= 200 && mouseX <= 295 && mouseY >= 220 && mouseY <= 260 ) {
        image(mano2, mouseX-10, mouseY-10);
      } else if ( mouseX>=475 && mouseX<=575 && mouseY>=300 && mouseY<=340 ) {
        image(mano2, mouseX-10, mouseY-10);
      }
    }
    if (seg/60>=2 && seg/60<=7 ) {
      image(globpan1, 190, 250, 200, 130);
      text(texp2, 290, 380, 200, 180);
    }
  }


  //------------------ Pantalla 3 dos animales
  
  else if (estado==3) {
    image(pant3, 0, 0, 800, 600);
    fill(0);
    textSize(17);

    if (seg/60>=2 && seg/60<=7 ) {
      image(globpan3, 180, 210, 200, 130);
      text(texp3, 281, 335, 200, 180);
    }

    if (mouseX >= 88 && mouseX <= 200 && mouseY >= 155 && mouseY <= 225 && seg/60>=8 ) {
      image(mano2, mouseX-10, mouseY-10);
      image(globpan3, 200, 80, 230, 130);
      text( texcuer, 320, 180, 200, 130 );
    } else if ( mouseX>=490 && mouseX<=600 && mouseY>=280 && mouseY<=380 && seg/60>=8 ) {
      image(mano2, mouseX-10, mouseY-10);
      image(globpan1, 320, 200, 215, 130); 
      text( texard, 430, 290, 200, 130 );
    }
  }  


  //------------------ Pantalla 4 el lobo

  else if (estado==4) {

    image(pant4, 0, 0, 800, 600); 
    fill(0);
    textSize(20);
    pushStyle ();  
    textFont(inicio);

    if (seg/60<1) {
      fill(255, 0, 0);
      textSize(50);
      text("UN LOBO!!!", width/2, height/5);    
      posx=400;
      posy=410;
    }
    if (seg/60>1 && seg/60<3) {
      fill(255, 0, 0);
      textSize(50);
      text("RAPIDO!!!", width/2, height/5);
    }
    if (seg/60>=3) {
      fill(255);
      textSize(40);
      text(cart4, width/4.5, height/5, 300, 200);
      text(cartel4, width/1.3, height/5, 300, 200);
      text(8-seg/60, width/2, height/4);
    }


    if (seg/60<=2) {
      image(lobo1, posx, 410);
      posx=posx -0.5;
    }
    if (seg/60>=3) {
      image(lobo2, posx, posy); 
      posy=posy -0.5;
      posx=posx -0.8;
    }
    popStyle ();
    if (seg/60>=8) {
      estado=7;
      seg=reset;
    }
  }





  //------------------ Pantalla 5 pistas
  
  else if (estado==5) {
    image(pant5, 0, 0, 800, 600);  
    image(pj5, 330, 250);
    if (seg/60<=3 ) {
      image(globpan1, 130, 170, 250, 150); 
      textSize(16);
      fill(0);
      text(txt, 260, 250, 220, 100);
    }
    if (mouseX >= 33 && mouseX <= 160 && mouseY >= 280 && mouseY <= 400 && seg/60>3 ) {
      image(globpan1, 130, 170, 215, 130); 
      image(mano2, mouseX-10, mouseY-10);
      text(hojas, 240, 270, 220, 100);
    }
    if (mouseX >= 660 && mouseX <= 690 && mouseY >= 215 && mouseY <= 320  && seg/60>3) {
      image(globpan1, 130, 170, 215, 130); 
      image(mano2, mouseX-10, mouseY-10);
      text(baston, 240, 260, 190, 100);
    }

    if (mouseX >= 130 && mouseX <= 200 && mouseY >= 70 && mouseY <= 110  && seg/60>3) {
      image(globpan1, 130, 170, 215, 130);  
      image(mano2, mouseX-10, mouseY-10);
      text(nido, 240, 270, 200, 100);
    }
    if (mouseX >= 300 && mouseX <= 360 && mouseY >= 450 && mouseY <= 480  && seg/60>3) {
      image(globpan1, 130, 170, 215, 130);  
      image(mano2, mouseX-10, mouseY-10);
      text(lata, 240, 240, 190, 100);
    }
  }   



  //------------------ Pantalla 6 tres animales
  
  else if (estado==6) {
    image(pant6, 0, 0, 800, 600); 
    fill(0);
    textSize(17);

    if (seg/60>=2 && seg/60<=5 ) {
      image(globpan1, 80, 260, 215, 130); 
      text(tex6, 190, 400, 200, 200);
    }
    if (mouseX >= 117 && mouseX <= 160 && mouseY >= 35 && mouseY <= 435 && seg/60>=6 ) {
      image(mano2, mouseX-10, mouseY-10);
      image(globpan3, 130, 280, 215, 130);
      fill(0);
      text( textp, 240, 375, 200, 130 );
    }

    if (mouseX >= 425 && mouseX <= 495 && mouseY >= 365 && mouseY <= 475 && seg/60>=6) {
      image(mano2, mouseX-10, mouseY-10);
      image(globpan1, 250, 280, 210, 130);
      text( textc, 360, 380, 200, 130 );
    }

    if (mouseX >= 590 && mouseX <= 670 && mouseY >= 465 && mouseY <= 555 && seg/60>=6) {
      image(mano2, mouseX-10, mouseY-10);
      image(globpan1, 430, 350, 210, 130);
      text( textm, 530, 445, 180, 130 );
    }
  }


  //------------------ Pantalla 7 se lo come el lobo
  
  else if (estado==7) { 
    image(pant7, 0, 0, 800, 600);
    textSize(40);
    fill(0);
    text(text7, width/2, height/5 );
  }


  //------------------ Pantalla 8 intuicion 
  
  else if (estado==8) {
    image(pant8, 0, 0, 800, 600);
    if (seg/60<=3) {
      image(globpan1, 200, 240, 215, 130); 
      fill(0);
      textSize(17);
      text(intui, 310, 370, 200, 200);
    }
    if (mouseX>=width/2 ) {
      image (ch1, width/2-50, height/1.8);
    } else {
      image (ch2, width/2-50, height/1.8);
    }
    if (mouseX >= 670 && mouseX <= 770 && mouseY >= 250 && mouseY <= 300 && seg/60>3) {
      image(mano2, mouseX-10, mouseY-10);
    }
    if (mouseX >= 130 && mouseX <= 230 && mouseY >= 250 && mouseY <= 300  && seg/60>3) {
      image(mano2, mouseX-10, mouseY-10);
    }
  }



  //------------------ Pantalla 9
  
  else if (estado==9) {
    image(pant9, 0, 0, 800, 600);
    if (seg/60>=2 && seg/60<=6 ) {
      image(globpan3, 100, 250, 200, 130);
      fill(0);
      textSize(17);
      text(txt9, 200, 380, 180, 200);
    }
    if (seg/60>=8 ) {
      estado=10;
      seg=reset;
    }
  }


  //--------------------------Pantalla 10

  else if (estado==10) {
    image(pant10, 0, 0, 800, 600);
    fill(255);
    pushStyle ();
    textFont(inicio, 46);
    text(txtcred, width/2, posycred, 400, 600);
    popStyle ();
    posycred=posycred-2;
    
    if (seg/60>=7){
      estado=0;
      seg=reset;
    
    }
  }
}

  //----------------------------------------------------------------------------------------------------------
void keyPressed() {
  //------------------------- Pantalla 1 
  
  if (estado==1) {
    if (key==' ' && seg/60>15) {
      seg=reset;
      estado=2;
    }
  }
  //------------------------- Pantalla 4
  
  else if (estado==4) {
    if (seg/60>=3 && key==' ') {
      estado=3; 
      seg=reset;
    }
    else if (seg/60>=3 && key=='h' || key=='H') {
      estado=6;
      seg=reset;
    }
  }
  //------------------------- Pantalla 7 
  
  else if (estado==7) {
    if (key==' ') {
      estado=1;
      seg=reset;
    }
  }
}

void mousePressed() {
  
  //------------------------- Pantalla 2
  
  if (estado==2) { 
    if (mouseX >= 200 && mouseX <= 295 && mouseY >= 220 && mouseY <= 260 ) {
      estado=3;
      seg=reset;
    } else if ( mouseX>=475 && mouseX<=575 && mouseY>=300 && mouseY<=340) {
      estado=5;
      seg=reset;
    }
  }

  //------------------------- Pantalla 3

  else if (estado==3 ) {
    if (mouseX >= 90 && mouseX <= 220 && mouseY >= 170 && mouseY <= 245 ) {
      estado=4;
      seg=reset;
    } else if ( mouseX>=500 && mouseX<=600 && mouseY>=290 && mouseY<=380) {
      estado=6;
      seg=reset;
    }
  }


  //------------------------- Pantalla 4

  else if (estado==4) {
    if (mouseX>=145 && mouseY>=260 && mouseX<=295 && mouseY<=315 )
      estado=6;
    seg=reset;
  }


  //------------------------- Pantalla 5

  else if (estado==5) { 
    if (mouseX >= 660 && mouseX <= 690 && mouseY >= 215 && mouseY <= 320 ) {
      estado=6;
      seg=reset;
    } else if (mouseX >= 33 && mouseX <= 160 && mouseY >= 280 && mouseY <= 400 && seg/60>3 ) {
      hojas=txt1;
    } else if (mouseX >= 130 && mouseX <= 200 && mouseY >= 70 && mouseY <= 110  && seg/60>3) {  
      nido=txt1;
    } else if (mouseX >= 300 && mouseX <= 360 && mouseY >= 450 && mouseY <= 480  && seg/60>3) {
      estado=8;
      seg=reset;
    }
  }

  //------------------------- Pantalla 6
  
  else if (estado==6) {
    if (mouseX >= 117 && mouseX <= 160 && mouseY >= 35 && mouseY <= 435 && seg/60>=6 ) {
      estado=8;
      seg=reset;
    } else if (mouseX >= 425 && mouseX <= 495 && mouseY >= 365 && mouseY <= 475 && seg/60>=6) {
      estado=9;
      seg=reset;
    } else if (mouseX >= 590 && mouseX <= 670 && mouseY >= 465 && mouseY <= 555 && seg/60>=6) {
      estado=4;
      seg=reset;
    }
  }

  //------------------------- Pantalla 8
  
  else if (estado==8) {
    if (mouseX >= 670 && mouseX <= 770 && mouseY >= 250 && mouseY <= 300 && seg/60>3) {
      estado=2;
      seg=reset;
    } else if (mouseX >= 130 && mouseX <= 230 && mouseY >= 250 && mouseY <= 300  && seg/60>3) {
      estado=6;
      seg=reset;
    }
  }
}
