//ANIMATION
void displayAnimation(){
  pushStyle();
    rectMode(CENTER);
    fill(147, 207, 226); shapeMode(CENTER);
    shape(logo, width/2, height/2-titolY/2-separacio/2, logoX1, logoY1); //logo
    textAlign(CENTER); textFont(name); textSize(90); fill(49, 72, 140);
    text("RobotX Experience", width/2, height/2+logoY1/2+separacio);
  popStyle();
}

void logo(){
  pushStyle();
    fill(147, 207, 226); shapeMode(CENTER);
    shape(logo, width/2, margeY+logoY2/2+y+10, logoX2, logoY2); 
  popStyle();
}

//INICI
void displayInici(){
  logo();
  experiences();
}

void experiences(){
   pushStyle();
    rectMode(CENTER); fill(147, 207, 226);
    create.display(); 
    filters.display(); 
    about.display(); 
    
    //visualitza experiences
    for(int i = 0; i<experiences.size(); i++){
      int fila = i/4; int columna = i%4;
      ExperienceButton e = experiences.get(i);
      e.selectedFoto = e.imgs[0];
      e.display((columna+1)*margeX+columna*experienceX, margeY+logoY2+50+createButtonY+50+filterButtonX+30+experienceY*fila+100*fila, experienceX, experienceY, y);
    }
    
  popStyle();
}

void displayFilters(){
  displayInici();
  filters();
}

void filters(){
  pushStyle();
    rectMode(LEFT);fill(20,125);rect(0,0,width,height);
    rectMode(CENTER); fill(243, 246, 247);
    rect(width/2, height/2, filtersX, filtersY, 25);
    back.display();
    
    fill(44, 55, 97); textAlign(CORNER); textFont(titols); textSize(25);
    text("MATERIALS", width/2-filtersX/2+200, height/2-filtersY/2+135);
    text("DIFFICULTY", width/2+filtersX/2-455, height/2-filtersY/2+135);
    text("SIMULATION", width/2+filtersX/2-455, height/2-filtersY/2+325);
    
    rectMode(CORNER); 
    filtersMaterials.display();
    difficultyE.display();
    difficultyM.display();
    difficultyD.display();
    simulationNo.display();
    simulationYes.display();
    
    
    textAlign(CENTER); textFont(titols); textSize(30); fill(44, 55, 97);
    text("FILTERS", width/2, height/2-filtersY/2+55);
  popStyle();
}

void displayAbout(){
  displayInici();
  about();
}

void about(){
  pushStyle();
    rectMode(LEFT);fill(20, 125);rect(0,0,width,height);
    rectMode(CENTER);fill(243, 246, 247);
    rect(width/2, height/2, filtersX, filtersY, 25);
    textAlign(CENTER); textFont(titols); textSize(30); fill(44, 55, 97);
    text("ABOUT", width/2, height/2-filtersY/2+55);
    back.display();
  popStyle();
}

void displayPrev(){
  displayInici();
  prev();
  backPrev.display();
}

void prev(){
  pushStyle();
     rectMode(LEFT);fill(20, 125);rect(0,0,width,height);
     rectMode(CENTER);fill(243, 246, 247);
     rect(width/2, height/2, prevX, prevY, 25);
     imageMode(CENTER);
     image(expSelected.selectedFoto, width/2-prevX/2+prevX/6+50, height/2, prevX/3, prevX/3);                 //imatge
     fill(44, 55, 97); textAlign(CORNER); textFont(titols); textSize(50);
     text(expSelected.title,  width/2-prevX/2+prevX/3+100, height/2-prevX/6+100);                    //titol
     textFont(text); textSize(15);textAlign(CORNER);
     text(expSelected.description, width/2-prevX/2+prevX/3+450, height/2-prevX/6+240, 700, 200);     //descripci??
     fill(expSelected.difficulty); textSize(15);                                                     //dificultat
     switch(expSelected.dif){
       case 0: text("EASY", width/2-prevX/2+prevX/3+100, height/2-prevX/6+118); break;
       case 1: text("MEDIUM", width/2-prevX/2+prevX/3+100, height/2-prevX/6+118); break;
       case 2: text("DIFFICULT", width/2-prevX/2+prevX/3+100, height/2-prevX/6+118); break;
     }
     goToExperience.display();
  popStyle();
}

//CREATE
void displayCreate(){
  logo();
  pushStyle();
    
    imageMode(CENTER);
    rectMode(CORNER); fill(223, 226, 227, 100); strokeWeight(2); 
    if(mouseOverFoto() && pantalla == Pantalles.CREATE && !addCodePanel){
      stroke(50, 120, 172);
      rect(margeX, height/2-fotoPrevX/2, fotoPrevX, fotoPrevX, 10);
      image(add2, margeX+fotoPrevX/2, height/2, 60, 60);
    } else {
     stroke(30); 
     rect(margeX, height/2-fotoPrevX/2, fotoPrevX, fotoPrevX, 10);
     image(add1, margeX+fotoPrevX/2, height/2, 60, 60);
    }
    
    if(addCodePanel || !difficulties.collapsed){
      createName.setEnabled(false);
      createDescription.setEnabled(false);
      createProcedure.setEnabled(false);
      addArduinoCode.setEnabled(false);
      saveCreation.setEnabled(false);
      createCode.setEnabled(true);
      home.setEnabled(false);
      logo2.setEnabled(false);
    }else{
      createName.setEnabled(true);
      createDescription.setEnabled(true);
      createProcedure.setEnabled(true);
      addArduinoCode.setEnabled(true);
      saveCreation.setEnabled(true);
      createCode.setEnabled(false);
      home.setEnabled(true);
      logo2.setEnabled(true);
    }
  
    
    createName.display();                  //titol
    createDescription.display();           //descripci??
    createProcedure.display();
    difficulties.display();
    createMaterials.display();
    displayImagesCreate();
    
    fill(44, 55, 97); textAlign(CENTER); textFont(titols); textSize(25);
    text("PROCEDURE", margeX+fotoPrevX + 52 + procedureX/2, height/2-fotoPrevX/2 + 170);
    text("MATERIALS", width-margeX-materialsX/2, height/2-fotoPrevX/2 + 170);
    
    home.display();
    addArduinoCode.display();
    saveCreation.display();
    
    if(addCodePanel){
      addArduinoCode.setEnabled(false);
      pushStyle();
        rectMode(CORNER); fill(20, 125); rect(0,0,width,height);
        rectMode(CENTER); fill(243, 246, 247);
        rect(width/2, height/2, prevX, codePanelY, 25);
        textAlign(CENTER); textFont(titols); textSize(30); fill(44, 55, 97);
        text("CODE", width/2, height/2-codePanelY/2+55);
      popStyle();
      backCode.display();
      rectMode(CORNER); textAlign(CORNER);
      createCode.display();
    } else {
      addArduinoCode.setEnabled(true);
    }
  popStyle();
}

void displayImagesCreate(){
  pushMatrix();
  imageMode(CORNER); rectMode(CORNER);
  for(int i = 0; i<5; i++){
    if(createImgs[i] != null){
      image(createImgs[i], margeX+119*i, height/2+fotoPrevX/2+30, 100, 100);
    }
    if(mouseOverImages() == i && createImgs[i] != null){
      stroke(50, 120, 172); strokeWeight(1.5); noFill();
      rect(margeX+119*i-5, height/2+fotoPrevX/2+30-5, 100+10, 100+10, 10);
    }
  }
  popMatrix();
}

//EXPERIENCE
void displayExperience(){
  pushStyle();
  logo();
  
  rectMode(CORNER);
  if(mouseOverFoto() && pantalla == Pantalles.EXPERIENCE){
    stroke(50, 120, 172); strokeWeight(1.5); noFill();
    rect(margeX-5, height/2-fotoPrevX/2-5, fotoPrevX+10, fotoPrevX+10, 10);
  }
  
  expSelected.selectedFoto = expSelected.imgs[expSelected.selected];
  imageMode(CORNER); rectMode(CENTER); 
  image(expSelected.selectedFoto, margeX, height/2-fotoPrevX/2, fotoPrevX, fotoPrevX);
  displayImages();
  
  fill(44, 55, 97); textAlign(CORNER); textFont(titols); textSize(50);
  text(expSelected.title, margeX+fotoPrevX + 50, margeY+logoY2+95);                               //titol
  
  fill(expSelected.difficulty); textSize(15);                                                     //dificultat
  switch(expSelected.dif){
    case 0: text("EASY", margeX+fotoPrevX + 50, margeY+logoY2+113); break;
    case 1: text("MEDIUM", margeX+fotoPrevX + 50, margeY+logoY2+113); break;
    case 2: text("DIFFICULT", margeX+fotoPrevX + 50, margeY+logoY2+113); break;
  }
  
  if(pantalla == Pantalles.EXPERIENCE){
      viewArduinoCode.setEnabled(true);
      goToSimulation.setEnabled(true);
      home.setEnabled(true);
      logo2.setEnabled(true);
    }else{
      viewArduinoCode.setEnabled(false);
      goToSimulation.setEnabled(false);
      home.setEnabled(false);
      logo2.setEnabled(false);
    }
  
  textFont(text); textSize(15); textAlign(CORNER); rectMode(CORNER); fill(39, 38, 53);
  text(expSelected.description, margeX+fotoPrevX + 50, height/2-fotoPrevX/2, width-2*margeX-fotoPrevX-50, 125);           //descripci??
  text(expSelected.procedure, margeX+fotoPrevX + 50, height/2-fotoPrevX/2 + 185, procedureX, procedureY);                 //procedure
  text(expSelected.materials, width-margeX-materialsX, height/2-fotoPrevX/2 + 185, materialsX, procedureY);               //materials
  
  fill(44, 55, 97); textAlign(CENTER); textFont(titols); textSize(25);
  text("PROCEDURE", margeX+fotoPrevX + 52 + procedureX/2, height/2-fotoPrevX/2 + 160);
  text("MATERIALS", width-margeX-materialsX/2, height/2-fotoPrevX/2 + 160);
  home.display();
  goToSimulation.display();
  viewArduinoCode.display();
  popStyle();
}

void displayImages(){
  pushMatrix();
  imageMode(CORNER); rectMode(CORNER);
  for(int i = 0; i<5; i++){
    image(expSelected.imgs[i], margeX+119*i, height/2+fotoPrevX/2+30, 100, 100);
    if(mouseOverImages() == i){
      stroke(50, 120, 172); strokeWeight(1.5); noFill();
      rect(margeX+119*i-5, height/2+fotoPrevX/2+30-5, 100+10, 100+10, 10);
    }
  }
  popMatrix();
}

int mouseOverImages(){
 if(mouseY >= height/2+fotoPrevX/2+30 &&
    mouseY <= height/2+fotoPrevX/2+130 &&
    mouseX >= margeX &&
    mouseX <= margeX+100){ return 0; }
 else if(mouseY >= height/2+fotoPrevX/2+30 &&
    mouseY <= height/2+fotoPrevX/2+130 &&
    mouseX >= margeX+119 &&
    mouseX <= margeX+219){ return 1; }
 else if(mouseY >= height/2+fotoPrevX/2+30 &&
    mouseY <= height/2+fotoPrevX/2+130 &&
    mouseX >= margeX+238 &&
    mouseX <= margeX+338){ return 2; }
 else if(mouseY >= height/2+fotoPrevX/2+30 &&
    mouseY <= height/2+fotoPrevX/2+130 &&
    mouseX >= margeX+357 &&
    mouseX <= margeX+457){ return 3; }
 else if(mouseY >= height/2+fotoPrevX/2+30 &&
    mouseY <= height/2+fotoPrevX/2+130 &&
    mouseX >= margeX+476 &&
    mouseX <= margeX+576){ return 4; }
 else { return -1; }
 
}

void nameDescDif(){
  pushStyle();
    rectMode(CORNER); fill(147, 207, 226);
    rect(margeX+fotoPrevX + 50, margeY+logoY2+50, 300, 75); //name
    rect(margeX+fotoPrevX + 50, margeY+logoY2+50+100, width-2*margeX-fotoPrevX-50, 125); //description
    rect(width-margeX-150, margeY+logoY2+50+25, 150, 50); //difficulty
    
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("name", margeX+fotoPrevX + 50 + 150, margeY+logoY2+50+37);
    text("description", margeX+fotoPrevX + 50 + (width-2*margeX-fotoPrevX-50)/2, margeY+logoY2+50+162);
    text("difficulty", width-margeX-75, margeY+logoY2+50+50);
  popStyle();
}

void procedure(){
  pushStyle();
    rectMode(CORNER);fill(147, 207, 226);
    rect(margeX+fotoPrevX + 50, margeY+logoY2+300, procedureX, procedureY);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("procedure", margeX+fotoPrevX + 50+procedureX/2, margeY + logoY2+300+procedureY/2);
  popStyle();
}

void materials(){
  pushStyle();
    rectMode(CORNER);fill(147, 207, 226);
    rect(width-margeX-materialsX, margeY+logoY2+300, materialsX, procedureY);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("materials", width-margeX-materialsX/2, margeY + logoY2+300+procedureY/2);
  popStyle();
}

void displayFotos(){
  displayExperience();
  fotos();
}

void fotos(){
  pushStyle();
    rectMode(LEFT);fill(20, 125);rect(0,0,width,height);imageMode(CENTER);
    expSelected.selectedFoto = expSelected.imgs[expSelected.selected];
    image(expSelected.selectedFoto, width/2, height/2, 800, 800);
    backFotos.display();
    fill(200, 240);
    circle((width-prevX)/4+2,height/2, 85);
    circle(width-(width-prevX)/4-5,height/2, 85);
    fotoLeft.display();
    fotoRight.display();
  popStyle();
}

void displayCode(){
  displayExperience();
  code();
  backCode.display();
}

void code(){
  pushStyle();
    rectMode(CORNER); fill(20, 125); rect(0,0,width,height);
    rectMode(CENTER); fill(243, 246, 247);
    rect(width/2, height/2, prevX, codePanelY, 25);
    textAlign(CENTER); textFont(titols); textSize(30); fill(44, 55, 97);
    text("CODE", width/2, height/2-codePanelY/2+55);
    textFont(text); textSize(15);textAlign(CORNER); rectMode(CORNER); fill(39, 38, 53);
    text(expSelected.code, width/2-prevX/2+50, height/2-codePanelY/2+80, prevX-100, codePanelY-130);
  popStyle();
}

//SIMULATION
void displaySimulator(){
  logo();
  simulationTitle();
  screen();
  controllers();
  backSimulator.display();
}

void simulationTitle(){
  pushStyle();
    textAlign(CENTER); textFont(titols); textSize(35); fill(44, 55, 97);
    text("SIMULATOR", width/2, margeY+logoY2+65);
  popStyle();
}

void screen(){
  pushStyle();
    rectMode(CORNER); fill(147, 207, 226);
    rect(margeX, margeY+logoY2+100, screenX, screenY);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("screen", margeX+screenX/2, margeY+logoY2+100+screenY/2);
  popStyle();
}

void controllers(){
  pushStyle();
    rectMode(CORNER); fill(147, 207, 226);
    rect(margeX+screenX+25, margeY+logoY2+100, width-2*margeX-screenX-25, screenY);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("controllers", margeX+screenX+25+(width-2*margeX-screenX-25)/2, margeY+logoY2+100+screenY/2);
  popStyle();
}

//MOUSE CURSOR
void mouseCursor(){
  if(pantalla == Pantalles.INICI && create.enabled && create.mouseOverButton() || 
     pantalla == Pantalles.INICI && filters.enabled && filters.mouseOverButton() ||
     pantalla == Pantalles.INICI && about.enabled && about.mouseOverButton() ||
     pantalla == Pantalles.INICI && logo2.mouseOverButton() || 
     pantalla == Pantalles.CREATE && logo2.mouseOverButton() && logo2.enabled ||
     pantalla == Pantalles.EXPERIENCE && logo2.mouseOverButton() ||
     pantalla == Pantalles.SIMULATOR && logo2.mouseOverButton() ||
     pantalla == Pantalles.FILTERS && back.mouseOverButton() ||
     pantalla == Pantalles.ABOUT && back.mouseOverButton() ||
     pantalla == Pantalles.PREV && backPrev.mouseOverButton() ||
     pantalla == Pantalles.PREV && goToExperience.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && goToSimulation.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && viewArduinoCode.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && home.mouseOverButton() ||
     pantalla == Pantalles.CREATE && home.mouseOverButton() && home.enabled ||
     pantalla == Pantalles.SIMULATOR && backSimulator.mouseOverButton() ||
     pantalla == Pantalles.CODI && backCode.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && mouseOverFoto() ||
     pantalla == Pantalles.FOTOS && backFotos.mouseOverButton() ||
     pantalla == Pantalles.CREATE && mouseOverFoto() && !addCodePanel ||
     pantalla == Pantalles.CREATE && addArduinoCode.mouseOverButton() && !addCodePanel ||
     pantalla == Pantalles.CREATE && backCode.mouseOverButton() && addCodePanel ||
     pantalla == Pantalles.CREATE && difficulties.mouseOverSelect() ||
     pantalla == Pantalles.CREATE && !addCodePanel && difficulties.collapsed && (createName.mouseOverTextField() || createDescription.mouseOverTextField() ||  createProcedure.mouseOverTextField()) ||
     pantalla == Pantalles.CREATE && addCodePanel && createCode.mouseOverTextField() ||
     pantalla == Pantalles.FOTOS && (fotoLeft.mouseOverButton() || fotoRight.mouseOverButton()) ||
     pantalla == Pantalles.EXPERIENCE && mouseOverImages() != -1 ||
     pantalla == Pantalles.CREATE && createMaterials.checkCursor() ||
     pantalla == Pantalles.FILTERS && filtersMaterials.checkCursor() ||
     pantalla == Pantalles.FILTERS && (difficultyE.onMouseOver() || difficultyM.onMouseOver() || difficultyD.onMouseOver() || simulationNo.onMouseOver() || simulationYes.onMouseOver()) ||
     pantalla == Pantalles.CREATE && saveCreation.mouseOverButton() ||
     pantalla == Pantalles.CREATE && mouseOverImages() != -1 && createImgs[mouseOverImages()] != null
     ){
        cursorHand = true;
     }else{
        cursorHand = false;
  }
  
  if(pantalla == Pantalles.INICI){
    for(int i = 0; i<experiences.size(); i++){
      ExperienceButton e = experiences.get(i);
      if(e.mouseOverButton()){
        cursorHand = true;
        break;
      }
    }
  }
  
}
