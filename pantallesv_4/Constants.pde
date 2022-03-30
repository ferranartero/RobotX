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

boolean cursorHand = false;
ExperienceButton expSelected;

void inicialitzaConstants(){
  margeX = (width-4*experienceX)/5;
  yMax = (margeY+logoY2+50+createButtonY+50+filterButtonX+30+2*experienceY+200)-height;
  filtersX = width*4/7;
  filtersY = height*4/7;  
  prevX = width*2/3;
  prevY = height*7/16;
  fotoPrevX = width*3/10;
  fotoPrevY = height-margeY2-margeY-logoY2-50;
  procedureX = 3*(width-2*margeX-fotoPrevX-75)/5;
  procedureY = height-logoY2-margeY- margeY2-bSimulationY-325;
  materialsX = 2*(width-2*margeX-fotoPrevX-75)/5;
  screenX = width/2-margeX+logoY2/2;
  screenY = height-margeY-logoY2-100-margeY2;

}
