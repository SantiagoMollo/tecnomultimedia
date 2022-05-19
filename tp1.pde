PFont fuenteTitulo, fuenteDescripcion, fuenteCreditos;
PImage fondo;
float posX, posY, anchoImagen, altoImagen, radio, dirTitulo, dirBotones, posXBoton, posYTexto, dirTexto, posYCredito, dirCredito, posYMarty, posYDoc, posYLorraine, posYGeorge, posYBiff, posYLinda, posXDeLorean, posXActuacionesTitulo, posYActuacionesTitulo, dirActuacionesTitulo, dirActuacionesTituloX, posYDetras, dirDetras, posXDetras, dirXDetras, posYMusica, posXMusica, dirMusica, posYCreditosMusica, posYCreditosMusica1, posYCreditosMusica2, posYCreditosDirec, posYCreditosDirec1, posYCreditosDirec2, posYCreditosDirec3, posXDireccion, tamXFondo, dirFondo, posYDireccion, posXTecno, dirTecno;
String texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10, texto11, texto12;

void setup (){
  size (400, 400);
  fuenteTitulo = createFont("BTTF.ttf", 20);
  posX = 80;
  posXActuacionesTitulo = 100;
  posXDetras = 80;
  fuenteDescripcion = createFont("DS-DIGI.TTF", 20);
  fondo = loadImage("volver al futuro titulo.jpg");
  fuenteCreditos = createFont("Shotgun.ttf", 20);
  radio = 60 / 2;
  posXBoton = 320;
  posYTexto = 380;
  posYCredito = 10;
  posYMarty = -100;
  posYDoc = -200;
  posYLorraine = -300;
  posYGeorge = -400;
  posYBiff = -500;
  posYLinda = -600;
  posXDeLorean = 0;
  posYDetras = 500;
  dirDetras = posXDireccion = posYActuacionesTitulo = posYDireccion = dirMusica = posYMusica = dirActuacionesTitulo = dirActuacionesTituloX = tamXFondo = dirTecno = posY = anchoImagen = altoImagen = dirTexto = dirCredito = dirTitulo = dirBotones = dirXDetras = 0;
  posXMusica = 20;
  posYCreditosMusica = -100;
  posYCreditosMusica1 = -200;
  posYCreditosMusica2 = -300;
  posYCreditosDirec = -100;
  posYCreditosDirec1 = -200;
  posYCreditosDirec2 = -300;
  posYCreditosDirec3 = -400;
  texto1 = "Marty Mcfly........";
  texto2 = "Doctor Brown........";
  texto3 = "Lorraine Baines........";
  texto4 = "George McFly........";
  texto5 = "Biff Tanner........";
  texto6 = "Linda Mcfly........";
  texto7 = "Michael J. Fox";
  texto8 = "Christopher Lloyd";
  texto9 = "Lea Thompson";
  texto10 = "Crispin Glover";
  texto11 = "Thomas F. Wilson";
  texto12 = "Wendie Jo Sperber";
  posXTecno = -500;
}

void draw (){
  posXTecno = posXTecno + dirTecno;
  posYMusica = posYMusica + dirMusica;
  posYDireccion = posYDireccion + dirMusica;
  posX = posX + dirTitulo;
  posYActuacionesTitulo = posYActuacionesTitulo + dirActuacionesTitulo;
  posXActuacionesTitulo = posXActuacionesTitulo + dirActuacionesTituloX;
  posXDetras = posXDetras + dirXDetras;
  posYDetras = posYDetras + dirDetras;
  posXBoton = posXBoton + dirBotones;
  posYTexto = posYTexto + dirTexto;
  posYMarty = posYMarty + dirCredito;
  posYDoc = posYDoc + dirCredito;
  posYLorraine = posYLorraine + dirCredito;
  posYGeorge = posYGeorge + dirCredito;
  posYBiff = posYBiff + dirCredito;
  posYLinda = posYLinda + dirCredito;
  background(#09044B);
  textFont(fuenteTitulo);
  fill(#D15000);
  text("Volver al futuro", posX, posY++);
  fill(#B40D0D);
  textFont(fuenteCreditos);
  text(texto1, 20, posYMarty);
  text(texto2, 20, posYDoc);
  text(texto3, 20, posYLorraine);
  text(texto4, 20, posYGeorge);
  text(texto5, 20, posYBiff);
  text(texto6, 20, posYLinda);
  text(texto7, 200, posYMarty);
  text(texto8, 200, posYDoc);
  text(texto9, 215, posYLorraine);
  text(texto10, 200, posYGeorge);
  text(texto11, 200, posYBiff);
  text(texto12, 200, posYLinda);
  if (posY >= 200){
    posY = 200;
    textFont(fuenteDescripcion);
    text("Creditos", 160, posYTexto);
    fill(#E00707);
    circle(200, posXBoton, 60);
  }
  
  fill(#D69B04);
  textFont(fuenteTitulo);
  text("Actuaciones", posXActuacionesTitulo, posYActuacionesTitulo);
  
  if(posX > width){
    dirActuacionesTitulo = 5;
  }
  
  if (posYActuacionesTitulo >= 200){
    dirActuacionesTitulo = 0;
    dirActuacionesTituloX = -10;
  } 
  
  if (posYLinda >= height){
    dirDetras = -5;
    fill(#D69B04);
    textFont(fuenteTitulo);
    text("Detras De Camara", posXDetras, posYDetras);
  }
  
  if (posYDetras <= 0){
    textFont(fuenteTitulo, 15);
    fill(#D15000);
    text("Musica", posXMusica, posYMusica++);
    if (posYMusica >= 50){
      posYMusica = 50;
      posYCreditosMusica++;
      posYCreditosMusica1++;
      posYCreditosMusica2++;
      texto1 = "Compositor: ";
      texto2 = "Alan Silvestri";
      texto3 = "Chris Hayes";
      texto4 = "Johnny Colla";
      fill(#B40D0D);
      textFont(fuenteCreditos, 20);
      text(texto1, 100, posYCreditosMusica);
      text(texto1, 100, posYCreditosMusica1);
      text(texto1, 100, posYCreditosMusica2);
      text(texto2, 250, posYCreditosMusica);
      text(texto3, 250, posYCreditosMusica1);
      text(texto4, 250, posYCreditosMusica2);
    }
    if (posYCreditosMusica2 >= height){
      posXMusica--;
      if (posXMusica < -100){
        posXDireccion = 10; 
        textFont(fuenteTitulo, 15);
        fill(#D15000);
        text("Direccion", posXDireccion, posYDireccion++);
        if (posYDireccion >= 50){
          posYDireccion = 50;
          posYCreditosDirec++;
          posYCreditosDirec1++;
          posYCreditosDirec2++;
          posYCreditosDirec3++;
          texto1 = "Director:  ";
          texto2 = "Guionista: ";
          texto3 = "Guionista: ";
          texto4 = "Prod. Ejecut. : ";
          texto5 = "Robert Zemeckis";
          texto6 = "Robert Zemeckis";
          texto7 = "Bob Gale";
          texto8 = "Kathleen Kennedy";
          fill(#B40D0D);
          textFont(fuenteCreditos, 15);
          text(texto1, 150, posYCreditosDirec);
          text(texto2, 150, posYCreditosDirec1);
          text(texto3, 150, posYCreditosDirec2);
          text(texto4, 150, posYCreditosDirec3);
          text(texto5, 250, posYCreditosDirec);
          text(texto6, 250, posYCreditosDirec1);
          text(texto7, 250, posYCreditosDirec2);
          text(texto8, 260, posYCreditosDirec3);
        }
        
        if (posYCreditosDirec3 >= height){
          image(fondo, 0, 0, tamXFondo++, 400);
            if (tamXFondo >= 400){
              tamXFondo = 400;
            }
        }
      }
    }
  }
  
  if (tamXFondo >=  400){
    posY = 380;
    dirTecno = random(5, 10);
    textFont(fuenteTitulo);
    text("TecnoMultimedia1", posXTecno, posY);
  }
}

void mouseClicked(){
  if (dist(200, 320, mouseX, mouseY) < radio){
    dirTitulo = 5;
    dirBotones = 3;
    dirTexto = 5;
    dirCredito = 1;
  }
  
}
