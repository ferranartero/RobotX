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
     image(expSelected.img, width/2-prevX/2+prevX/6+50, height/2, prevX/3, prevX/3);                 //imatge
     fill(44, 55, 97); textAlign(CORNER); textFont(titols); textSize(50);
     text(expSelected.title,  width/2-prevX/2+prevX/3+100, height/2-prevX/6+100);                    //titol
     textFont(text); textSize(15);textAlign(CORNER);
     text(expSelected.description, width/2-prevX/2+prevX/3+450, height/2-prevX/6+240, 700, 200);     //descripció
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
  rectMode(CORNER); fill(243, 246, 247); strokeWeight(2); 
  if(add.mouseOverButton()){
    stroke(50, 120, 172);
  } else {
   stroke(20); 
  }
  rect(margeX, height/2-fotoPrevX/2, fotoPrevX, fotoPrevX, 10);
  add.display();
  fill(44, 55, 97); textAlign(CORNER); textFont(titols); textSize(50);
  text(expSelected.title, margeX+fotoPrevX + 50, margeY+logoY2+80);                               //titol
  textFont(text); textSize(15);textAlign(CORNER);
  text(expSelected.description, margeX+fotoPrevX + 50+(width-2*margeX-fotoPrevX-50)/2, margeY+logoY2+50+100+25, width-2*margeX-fotoPrevX-50, 125);           //descripció
  fill(expSelected.difficulty); textSize(15);                                                     //dificultat
  switch(expSelected.dif){
    case 0: text("EASY", margeX+fotoPrevX + 50, margeY+logoY2+98); break;
    case 1: text("MEDIUM", margeX+fotoPrevX + 50, margeY+logoY2+98); break;
    case 2: text("DIFFICULT", margeX+fotoPrevX + 50, margeY+logoY2+98); break;
  }
  home.display();
  goToSimulation.display();
  viewArduinoCode.display();
}

//EXPERIENCE
void displayExperience(){
  logo();
  imageMode(CORNER);
  image(expSelected.img, margeX, height/2-fotoPrevX/2, fotoPrevX, fotoPrevX);
  fill(44, 55, 97); textAlign(CORNER); textFont(titols); textSize(50);
  text(expSelected.title, margeX+fotoPrevX + 50, margeY+logoY2+80);                               //titol
  textFont(text); textSize(15);textAlign(CORNER);
  text(expSelected.description, margeX+fotoPrevX + 50+(width-2*margeX-fotoPrevX-50)/2, margeY+logoY2+50+100+25, width-2*margeX-fotoPrevX-50, 125);           //descripció
  fill(expSelected.difficulty); textSize(15);                                                     //dificultat
  switch(expSelected.dif){
    case 0: text("EASY", margeX+fotoPrevX + 50, margeY+logoY2+98); break;
    case 1: text("MEDIUM", margeX+fotoPrevX + 50, margeY+logoY2+98); break;
    case 2: text("DIFFICULT", margeX+fotoPrevX + 50, margeY+logoY2+98); break;
  }
  home.display();
  goToSimulation.display();
  viewArduinoCode.display();
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
    image(expSelected.img, width/2, height/2, 800, 800);
    backFotos.display();
    fill(20, 240);
    circle((width-prevX)/4,height/2, 90);
    circle(width-(width-prevX)/4,height/2, 90);
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
     pantalla == Pantalles.CREATE && logo2.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && logo2.mouseOverButton() ||
     pantalla == Pantalles.SIMULATOR && logo2.mouseOverButton() ||
     pantalla == Pantalles.FILTERS && back.mouseOverButton() ||
     pantalla == Pantalles.ABOUT && back.mouseOverButton() ||
     pantalla == Pantalles.PREV && backPrev.mouseOverButton() ||
     pantalla == Pantalles.PREV && goToExperience.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && goToSimulation.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && viewArduinoCode.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && home.mouseOverButton() ||
     pantalla == Pantalles.CREATE && home.mouseOverButton() ||
     pantalla == Pantalles.SIMULATOR && backSimulator.mouseOverButton() ||
     pantalla == Pantalles.CODI && backCode.mouseOverButton() ||
     pantalla == Pantalles.EXPERIENCE && mouseOverFoto() ||
     pantalla == Pantalles.FOTOS && backFotos.mouseOverButton() ||
     pantalla == Pantalles.CREATE && add.mouseOverButton()
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
