PShape logo;
PImage filters1, filters2;
PImage about1, about2;
PImage back1, back2;
PFont name, titols, text;
PImage mostra;

void inicialitzaMedia(){
  inicialitzaFotos();
  inicialitzaFonts();
}

void inicialitzaFotos(){
  logo = loadShape("logo.svg");
  filters1 = loadImage("filters1.png");
  filters2 = loadImage("filters2.png");  
  about1 = loadImage("about1.png");
  about2 = loadImage("about2.png");
  back1 = loadImage("back1.png");
  back2 = loadImage("back2.png");
  mostra = loadImage("mostra1.jpg");
}

void inicialitzaFonts(){
  titols = createFont("titols.ttf", 18);
  
}
