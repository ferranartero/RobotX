PShape logo;
PImage filters1, filters2;
PImage about1, about2;
PImage back1, back2;
PImage add1, add2;
PImage close1, close2;
PImage right1, right2;
PShape home1, home2;
PFont name, titols, text;
PImage mostra;
PImage[] imgs = new PImage[5];

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
  add1 = loadImage("add1.png");
  add2 = loadImage("add2.png");
  close1 = loadImage("close1.png");
  close2 = loadImage("close2.png");
  right1 = loadImage("right1.png");
  right2 = loadImage("right2.png");
  home1 = loadShape("home1.svg");
  home2 = loadShape("home2.svg");
  mostra = loadImage("mostra1.jpg");
  for(int i = 0; i<5; i++){
    imgs[i] = mostra;
  }
}

void inicialitzaFonts(){
  titols = createFont("titols.ttf", 18);
  text = createFont("text.ttf", 18);
  name = createFont("logo.ttf", 18);
}
