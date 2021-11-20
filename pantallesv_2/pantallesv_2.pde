enum Pantalles {ANIMATION, INICI, FILTERS, ABOUT, PREV, CREATE, EXPERIENCE, FOTOS, CODI, SIMULATOR};
Pantalles pantalla;


void setup(){
  fullScreen();
  strokeWeight(0);

  inicialitza();  
  
  pantalla = Pantalles.ANIMATION;
}

void draw(){
  background(243, 246, 247);
  switch(pantalla){
    case ANIMATION: displayAnimation(); break;
    case INICI: displayInici(); break;
    case FILTERS: displayFilters(); break;
    case ABOUT: displayAbout(); break;
    case PREV: displayPrev(); break;
    case CREATE: displayCreate(); break;
    case EXPERIENCE: displayExperience(); break;
    case FOTOS: displayFotos(); break;
    case CODI: displayCode(); break;
    case SIMULATOR: displaySimulator(); break;
  }
  if(c == 0){//animation
    displayAnimation();
    pantalla = Pantalles.INICI;
  }
  
  if(/*pantalla == Pantalles.ANIMATION*/c == 1){  //inici
    pantalla = Pantalles.INICI;  
  }
  
  if(/*pantalla == Pantalles.INICI*/c == 2){  //pop up filtros
    pantalla = Pantalles.FILTERS;
  }
  
  if(/*pantalla == Pantalles.ABOUT*/c == 3){  //about
    pantalla = Pantalles.ABOUT;
  }
  
  if(/*pantalla == Pantalles.PREV */ c == 4){  //pop up previsualització
    pantalla = Pantalles.PREV;
  }
  
  if(c==5){  //create
    pantalla = Pantalles.CREATE;
  }
  
  if(c==6){  //experience
    pantalla = Pantalles.EXPERIENCE;
  }
  
  if(c==7){  //fotos
    pantalla = Pantalles.FOTOS;
  }
  
  if(c==8){  //codi
    pantalla = Pantalles.CODI;
  }
  
  if(c==9){  //simulator
    pantalla = Pantalles.SIMULATOR;
  }
}

void keyPressed(){
  if(keyCode == RIGHT){
    c++;
    if(c>9){
      c=9;
    }
  }
  
  if(keyCode == LEFT){
    c--;
    if(c<0){
      c=0;
    }
  }
  
  if(c == 1){
    if (keyCode == UP){
      y += 10;
      if(y>0){
        y = 0;
      }
    }
    
    if (keyCode == DOWN){
      y -= 10;
      if(y<-yMax){
        y = -yMax;
      }
    }
  }
  
  
  println(c);
}

void inicialitza(){
  margeX = (width-4*experienceX)/5;
  yMax = (margeY+logoY2+50+createButtonY+50+filterButtonY+30+2*experienceY+200)-height;
  filtersX = width*4/7;
  filtersY = height*4/7;  
  prevX = width*2/3;
  prevY = height*7/9;
  fotoPrevX = width*3/10;
  fotoPrevY = height-margeY2-margeY-logoY2-50;
  procedureX = 3*(width-2*margeX-fotoPrevX-75)/5;
  procedureY = height-logoY2-margeY- margeY2-bSimulationY-325;
  materialsX = 2*(width-2*margeX-fotoPrevX-75)/5;
  screenX = width/2-margeX+logoY2/2;
  screenY = height-margeY-logoY2-100-margeY2;
}
