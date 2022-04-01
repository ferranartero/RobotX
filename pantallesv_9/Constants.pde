Simulacio01 s1;
Simulacio02 s2;
Simulacio03 s3;
Simulacio04 s4;
Simulacio05 s5;

int logoX1 = 300;
int logoY1 = 300;
int titolX = 500;
int titolY = 100;
int separacio = 50;

int logoX2 = 85;
int logoY2 = 85;
int margeX;
int margeY = 30;
int margeY2 = 100;
int createButtonX = 320;
int createButtonY = 80;
int filterButtonX = 50;
int backButtonX = 40;
int experienceX = 300;
int experienceY = 400;
int codePanelY = 900;
int redondeig = 30;
int y = 0;
int yMax;

int filtersX;
int filtersY;
int prevX;
int prevY;

int fotoPrevX;
int fotoPrevY;

int procedureX;
int procedureY;
int materialsX;
int bSimulationY = 80;

int screenX;
int screenY;
int addImage;

float rotation = 0.25;
float grow;
int transparence, transparence2;

String descriptionBeta = "hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD";
String procedureBeta = "1) Make connections \n2) add code to arduino\n3)Enjoy very much ;)";
String materialsBeta = "- Arduino\n-placa\n-x2 motors\n-x10 cables";
String codeBeta = "hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLDhola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLDhola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD. hola amics. HELLO WORLD";

String codeTitle;


boolean cursorHand = false;
ExperienceButton expSelected;

boolean addCodePanel = false;
String[] diff = {"EASY", "MEDIUM", "DIFFICULT"};

void inicialitzaConstants(){
  margeX = (width-4*experienceX)/5;
  yMax = (margeY+logoY2+50+createButtonY+50+filterButtonX+30+2*experienceY+200)-height;
  filtersX = width*4/7;
  filtersY = height*4/7;  
  prevX = width*2/3;
  prevY = height*7/16;
  fotoPrevX = 576;
  fotoPrevY = height-margeY2-margeY-logoY2-50;
  procedureX = 3*(width-2*margeX-fotoPrevX-75)/5;
  procedureY = height-logoY2-margeY- margeY2-bSimulationY-320;
  materialsX = 2*(width-2*margeX-fotoPrevX-75)/5;
  screenX = width/2-margeX+logoY2/2;
  screenY = height-margeY-logoY2-100-margeY2;
  
  s1 = new Simulacio01(this);
  s2 = new Simulacio02(this);
  s3 = new Simulacio03(this);
  s4 = new Simulacio04(this);
  s5 = new Simulacio05(this);

}
