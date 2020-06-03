//Declaracion del titulo
String pix;
String els;


//Declaracion actores principales
String creditos;
String actores1;
String actores2;
String actores3;
String actores4;
String actores5;

//Declaracion actores secundarios
String secun;
String secun3;
String secun4;
String secun5;

//Declaracion musica y direccion
String musica;
String direc;

//Declaracion de la fuente
PFont pixs;


//Declaracion de la posicion texto actores 
float posY;
float posXac;

//Declaracion de la posicion de musica y direccion
float posyMU;
float posYDI;

//Variables del titulo
float posX;
float posX2;
float tam;
float trans;

//Declaracion de la imagen
PImage fondo;
PImage pj;
PImage fan1, fan2;

//Variables del personaje
float altopj;
float anchopj;
float pX, pY;

void setup() {
  size(700, 411);
  frameRate(30);
  imageMode(CENTER);

  //Asignacion imagen
  fondo = loadImage("fondo2.png");
  pj = loadImage("personaje2.png");
  fan1 = loadImage ("fan1.png");
  fan2 = loadImage ("fan2.png");

  //Asignacion titulo
  pix = "PIX";
  els = "ELS";
  pixs = loadFont ( "8-bitLimitBRK-48.vlw" );
  textFont (pixs);
  posX = width/3+width/11;
  posX2 = width/2+width/9;
  tam  = 100;
  trans = 200;

  //Asignacion texto actores principales
  creditos = "CAST";
  actores1 = "BRENENER..........ADAM SANDREL";
  actores2 = "COOPER..........KEVIN JAMES";
  actores3 = "VIOLET..........MICHELLE MONAGHAN";
  actores4 = "MATTY..........MATT LINTZ";
  actores5 = "LADY LISA..........ASHILEY BENSON";

  //Asignacion textos actores secundarios
  secun  = "PORTER...........BRIAN COX"; 
  secun3 = "EDDI...........PETER DINKLAGE";
  secun4 = "GENERAL HILL...........SEAN BEAN"; 
  secun5 = "DYLAN COHAN...........AFFION CROCKETT";
  posXac = -800;

  //Asignacion musica y direccion
  musica = "MUSICA DE HENRY JACKMAN";
  direc = "DIRECCION DE CHRIS COLUMBUS";
  posY = 450;
  posyMU = -1650;
  posYDI = 1950;

  //Variables personaje
  pY = height;
  altopj  = 100;
  anchopj = 50;
}

void draw() {
  background(135, 215, 240);

  //Variable de interaccion del personaje
  pX = width/2-70+mouseX/4;

  //texto central, actores principales
  fill(0, 0, 0);
  textAlign(CENTER);
  textSize(20);
  text(creditos, width/2-10, posY);
  text(actores1, width/2, posY+50);
  text(actores2, width/2, posY+100);
  text(actores3, 385, posY+150);
  text(actores4, 350, posY+200);
  text(actores5, 355, posY+250);

  //Actores secundarios
  text(secun, posXac-20, 50);
  text(secun3, posXac+15, 100);
  text(secun4, posXac-40, 150);
  text(secun5, posXac-20, 200);


  //texto musica y direccion
  fill(0, 0, 0);
  text(musica, 170, posyMU);
  text(direc, 550, posYDI);

  //Imagen fantasmitas
  image(fan1, 40, posyMU-5, 35, 35);
  image(fan2, 405, posYDI-5, 35, 35);



  //titulo (pixels)
  fill(0, 0, random(255), trans );
  textSize(tam);
  text(pix, posX, height/2);
  text(els, posX2, height/2);
  
  //fondo
  image(fondo, width/2, height/2);
  
  //personaje
  image(pj, pX, pY-30, anchopj, altopj);

  //Actualizo  variables del titulo
  posX = posX -1;
  posX2 = posX2 +1;
  trans = trans -frameCount/5;
  tam = tam + 1;

  //Actualizo  variable de texto autores
  posY=posY -2;

  //Actualizo variable de texto musica y direccion
  posyMU = posyMU+2 ;
  posYDI = posYDI-2;

  //Actualizo variable personaje
  pY = pY -0.1;
  altopj = altopj-0.07;
  anchopj = anchopj-0.04;

  //Variable actores secundarios
  posXac = posXac +2;
}
