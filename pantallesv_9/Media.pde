PShape logo;
PImage filters1, filters2;
PImage about1, about2;
PImage back1, back2;
PImage add1, add2;
PImage close1, close2;
PImage right1, right2;
PShape home1, home2;
PFont name, text;
PFont[] titols;
PImage mostra, mostra2, mostra3, mostra4, mostra5;
PImage[] imgs = new PImage[5];
PImage[] createImgs = new PImage[5];
String[] materials = {"Arduino UNO", "Bearbord", "Resistencia", "LED", "Motor", "Piezo"};

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
  mostra2 = loadImage("mostra2.jpg");
  mostra3 = loadImage("mostra3.jpg");
  mostra4 = loadImage("mostra4.jpg");
  mostra5 = loadImage("mostra5.jpg");
  imgs[0] = mostra;
  imgs[1] = mostra2;
  imgs[2] = mostra3;
  imgs[3] = mostra4;
  imgs[4] = mostra5;
}

void inicialitzaFonts(){
  titols = new PFont[3]; titols[0] = createFont("titols.ttf", 20); titols[1] = createFont("titols.ttf", 30); titols[2] = createFont("titols.ttf", 50);
  text = createFont("text.ttf", 18);
  name = createFont("logo.ttf", 90);
}
