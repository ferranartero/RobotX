enum Pantalles {ANIMATION, INICI, FILTERS, ABOUT, PREV, CREATE, EXPERIENCE, FOTOS, CODI, SIMULA01, SIMULA02, SIMULA03, SIMULA04, SIMULA05};
Pantalles pantalla;

void setup(){
  fullScreen();
  strokeWeight(0);
  inicialitza();   
  pantalla = Pantalles.ANIMATION;
}

void draw(){
  background(243, 246, 247);
  smooth(); frameRate(30);
  switch(pantalla){
    case ANIMATION: if(millis() < 7000){displayAnimation();}else{ pantalla = Pantalles.INICI; } break;
    case INICI: displayInici(); break;
    case FILTERS: displayFilters(); break;
    case ABOUT: displayAbout(); break;
    case PREV: displayPrev(); break;
    case CREATE: displayCreate(); break;
    case EXPERIENCE: displayExperience(); break;
    case FOTOS: displayFotos(); break;
    case CODI: displayCode(); break;
    case SIMULA01: s1.display(); break;
    case SIMULA02: s2.display(); s2.updateServo(); break;
    case SIMULA03: s3.display(); /*s3.updateSerial();*/ break;
    case SIMULA04: s4.display(); /*s4.updateSerial();*/ break;
    case SIMULA05: s5.display(); /*s5.updateSerial();*/ break;
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
  if((logo2.mouseOverButton() && pantalla == Pantalles.INICI  && logo2.enabled) ||
     (logo2.mouseOverButton() && pantalla == Pantalles.CREATE  && logo2.enabled) ||
     (logo2.mouseOverButton() && pantalla == Pantalles.EXPERIENCE  && logo2.enabled) ||
     (logo2.mouseOverButton() && pantalla == Pantalles.SIMULA01 && logo2.enabled) ||
     (logo2.mouseOverButton() && pantalla == Pantalles.SIMULA02 && logo2.enabled) ||
     (logo2.mouseOverButton() && pantalla == Pantalles.SIMULA03 && logo2.enabled) ||
     (logo2.mouseOverButton() && pantalla == Pantalles.SIMULA04 && logo2.enabled) ||
     (logo2.mouseOverButton() && pantalla == Pantalles.SIMULA05 && logo2.enabled)){ pantalla = Pantalles.INICI; }
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
  else if(!mouseOverCodi() && pantalla == Pantalles.CODI){ pantalla = Pantalles.EXPERIENCE; }
  else if(goToExperience.mouseOverButton() && pantalla == Pantalles.PREV){  
    y = 0; 
    create.setY(margeY+logoY2+50+createButtonY/2); 
    filters.setY(margeY+logoY2+50+createButtonY+50+filterButtonX/2); 
    about.setY(margeY+logoY2+50+createButtonY+50+filterButtonX/2);
    pantalla = Pantalles.EXPERIENCE; 
  }
  else if(goToSimulation.mouseOverButton() && pantalla == Pantalles.EXPERIENCE){ 
    switch(expSelected.simulacio){
      case 1: pantalla = Pantalles.SIMULA01; break; 
      case 2: pantalla = Pantalles.SIMULA02; break; 
      case 3: pantalla = Pantalles.SIMULA03; break; 
      case 4: pantalla = Pantalles.SIMULA04; break; 
      case 5: pantalla = Pantalles.SIMULA05; break; 
    }
  }
  else if(viewArduinoCode.mouseOverButton() && pantalla == Pantalles.EXPERIENCE){ pantalla = Pantalles.CODI; }
  else if(home.mouseOverButton() && pantalla == Pantalles.EXPERIENCE && home.enabled){ pantalla = Pantalles.INICI; }
  else if(home.mouseOverButton() && pantalla == Pantalles.CREATE && home.enabled){ pantalla = Pantalles.INICI; }
  else if((backSimulator.mouseOverButton() && pantalla == Pantalles.SIMULA01) ||
          (backSimulator.mouseOverButton() && pantalla == Pantalles.SIMULA02) ||
          (backSimulator.mouseOverButton() && pantalla == Pantalles.SIMULA03) ||
          (backSimulator.mouseOverButton() && pantalla == Pantalles.SIMULA04) ||
          (backSimulator.mouseOverButton() && pantalla == Pantalles.SIMULA05)){ pantalla = Pantalles.EXPERIENCE; }
  else if(backCode.mouseOverButton() && pantalla == Pantalles.CODI) { pantalla = Pantalles.EXPERIENCE; }
  else if(mouseOverFoto() && pantalla == Pantalles.EXPERIENCE){ pantalla = Pantalles.FOTOS; }
  else if(backFotos.mouseOverButton() && pantalla == Pantalles.FOTOS){ pantalla = Pantalles.EXPERIENCE; }
  else if(addArduinoCode.mouseOverButton() && pantalla == Pantalles.CREATE) { addCodePanel = true; selectInput("Selecciona un fitxer...", "readSelectedTextFile"); }
  else if((backCode.mouseOverButton() && pantalla == Pantalles.CREATE && addCodePanel) ||
          (!mouseOverCodi() && pantalla == Pantalles.CREATE && addCodePanel)) { addCodePanel = false; }  
  else if(difficulties.mouseOverSelect() && difficulties.enabled){ if(!difficulties.collapsed){ difficulties.update(); } difficulties.toggle(); }
  else if(!difficulties.collapsed && !difficulties.mouseOverSelect()){ difficulties.collapsed=true;}
  else if(pantalla == Pantalles.CREATE && !addCodePanel && !mouseOverFoto()) { createName.isPressed(); createDescription.isPressed();  createProcedure.isPressed(); }
  else if(pantalla == Pantalles.CREATE && addCodePanel) { createCode.isPressed(); }
  else if(pantalla == Pantalles.FOTOS && !mouseOverFoto2() && !fotoLeft.mouseOverButton() && !fotoRight.mouseOverButton()){ pantalla = Pantalles.EXPERIENCE; }
  else if(pantalla == Pantalles.FOTOS && fotoLeft.mouseOverButton() && expSelected.selected>0){ expSelected.selected--; }
  else if(pantalla == Pantalles.FOTOS && fotoRight.mouseOverButton() && expSelected.selected<4){ expSelected.selected++; }
  else if(pantalla == Pantalles.EXPERIENCE && mouseOverImages() != -1){ expSelected.selected = mouseOverImages(); }
  else if(pantalla == Pantalles.FILTERS && difficultyE.onMouseOver()){ difficultyE.toggle(); }
  else if(pantalla == Pantalles.FILTERS && difficultyM.onMouseOver()){ difficultyM.toggle(); }
  else if(pantalla == Pantalles.FILTERS && difficultyD.onMouseOver()){ difficultyD.toggle(); }
  else if(pantalla == Pantalles.FILTERS && simulationNo.onMouseOver()){ simulationNo.toggle(); }
  else if(pantalla == Pantalles.FILTERS && simulationYes.onMouseOver()){ simulationYes.toggle(); }
  else if(pantalla == Pantalles.CREATE && mouseOverFoto()){ selectInput("Selecciona una imatge ...", "fileSelected"); }
  
  filtersMaterials.checkMouse();
  createMaterials.checkMouse();
  s1.checkButtons();
  s1.checkSliders();
  s2.checkSlider();
  s3.checkSliders();
  s4.checkSliders();
  s5.checkSliders();
}

void mouseDragged(){
  s1.checkSliders(); 
  s2.checkSlider();
  s3.checkSliders();
  s4.checkSliders();
  s5.checkSliders();
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
  
  createName.keyPressed(key, (int)keyCode);
  createDescription.keyPressed(key, (int)keyCode);
  createProcedure.keyPressed(key, (int)keyCode);
  createCode.keyPressed(key, (int)keyCode);
  
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

boolean mouseOverCodi(){
  return (mouseX >= width/2-prevX/2 &&
          mouseX <= width/2+prevX/2 &&
          mouseY >= height/2-codePanelY/2 &&
          mouseY <= height/2+codePanelY/2);
}

boolean mouseOverFoto(){
  return (mouseX >= margeX &&
          mouseX <= margeX+fotoPrevX &&
          mouseY >= height/2-fotoPrevX/2 &&
          mouseY <= height/2+fotoPrevX/2);
}

boolean mouseOverFoto2(){
  return (mouseX >= width/2-400 &&
          mouseX <= width/2+400 &&
          mouseY >= height/2-400 &&
          mouseY <= height/2+400);
}
