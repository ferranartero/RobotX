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
    case ANIMATION: displayAnimation(); pantalla = Pantalles.INICI; break;
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
  
  enableButtons();
  
  mouseCursor();
  if(cursorHand){
    cursor(HAND);
     }else{
    cursor(ARROW);
     }
}



void mouseReleased(){
  
  if(logo2.mouseOverButton() && pantalla == Pantalles.INICI ||
     logo2.mouseOverButton() && pantalla == Pantalles.CREATE ||
     logo2.mouseOverButton() && pantalla == Pantalles.EXPERIENCE ||
     logo2.mouseOverButton() && pantalla == Pantalles.SIMULATOR){ pantalla = Pantalles.INICI; }
  else if(filters.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.FILTERS; }
  else if(about.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.ABOUT; }
  else if(create.mouseOverButton() && pantalla == Pantalles.INICI){ 
    y = 0; 
    create.setY(margeY+logoY2+50+createButtonY/2); 
    filters.setY(margeY+logoY2+50+createButtonY+50+filterButtonX/2); 
    about.setY(margeY+logoY2+50+createButtonY+50+filterButtonX/2);
    pantalla = Pantalles.CREATE; } 
  else if(back.mouseOverButton() && pantalla == Pantalles.FILTERS){ pantalla = Pantalles.INICI; }
  else if(back.mouseOverButton() && pantalla == Pantalles.ABOUT){ pantalla = Pantalles.INICI; }
  else if(backPrev.mouseOverButton() && pantalla == Pantalles.PREV){ pantalla = Pantalles.INICI; }
  else if(pantalla == Pantalles.INICI){
    for(int i = 0; i<experiences.size(); i++){
      ExperienceButton e = experiences.get(i);
      if(e.mouseOverButton()){
        expSelected = e;
        pantalla = Pantalles.PREV;
        break;
      }
    }
  }
  else if(!mouseOverFilters() && pantalla == Pantalles.FILTERS){ pantalla = Pantalles.INICI; }
  else if(!mouseOverAbout() && pantalla == Pantalles.ABOUT){ pantalla = Pantalles.INICI; }
  else if(!mouseOverPrev() && pantalla == Pantalles.PREV){ pantalla = Pantalles.INICI; }
  else if(goToExperience.mouseOverButton() && pantalla == Pantalles.PREV){  
    y = 0; 
    create.setY(margeY+logoY2+50+createButtonY/2); 
    filters.setY(margeY+logoY2+50+createButtonY+50+filterButtonX/2); 
    about.setY(margeY+logoY2+50+createButtonY+50+filterButtonX/2);
    pantalla = Pantalles.EXPERIENCE; 
  }
  
}

void keyPressed(){  
  if(pantalla == Pantalles.INICI){
    if (keyCode == UP){
      if(y<0){
        create.changeYby(10);
        filters.changeYby(10);
        about.changeYby(10);
      }
      y += 10;
      if(y>0){
        y = 0;
      }
    }
    
    if (keyCode == DOWN){
      if(y>-yMax){
        create.changeYby(-10);
        filters.changeYby(-10);
        about.changeYby(-10);
      }
      y -= 10;
      if(y<-yMax){
        y = -yMax;
      }
    }
  }
}

void inicialitza(){
  inicialitzaConstants();
  inicialitzaMedia();
  inicialitzaBotons();
}

boolean mouseOverFilters(){
  return (mouseX >= width/2-filtersX/2 &&
          mouseX <= width/2+filtersX/2 &&
          mouseY >= height/2-filtersY/2 &&
          mouseY <= height/2+filtersY/2);
}

boolean mouseOverAbout(){
  return (mouseX >= width/2-filtersX/2 &&
          mouseX <= width/2+filtersX/2 &&
          mouseY >= height/2-filtersY/2 &&
          mouseY <= height/2+filtersY/2);
}

boolean mouseOverPrev(){
  return (mouseX >= width/2-prevX/2 &&
          mouseX <= width/2+prevX/2 &&
          mouseY >= height/2-prevY/2 &&
          mouseY <= height/2+prevY/2);
}
