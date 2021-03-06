
void displayAnimation(){
  pushStyle();
    rectMode(CENTER);
    fill(147, 207, 226); shapeMode(CENTER);
    shape(logo, width/2, height/2-titolY/2-separacio/2, logoX1, logoY1); //logo
    rect(width/2, height/2+logoY1/2+separacio/2, titolX, titolY); //titol
    textAlign(CENTER);textSize(20);fill(39, 38, 53);
    text("titol", width/2, height/2+logoY1/2+separacio/2);
  popStyle();
}

void logo(){
  pushStyle();
    fill(147, 207, 226); shapeMode(CENTER);
    shape(logo, width/2, margeY+logoY2/2+y+10, logoX2, logoY2); 
  popStyle();
}

void displayInici(){
  experiences();
  logo();
}

void experiences(){
   pushStyle();
    rectMode(CENTER); fill(147, 207, 226);
    create.display(); 
    filters.display(); 
    about.display(); 
    
    //expiriences
    experience1.display();
    experience2.display();
    experience3.display();
    experience4.display();
    experience5.display();
    experience6.display();
    experience7.display();
    experience8.display();
    
  popStyle();
}

void displayFilters(){
  displayInici();
  filters();
}

void filters(){
  pushStyle();
    rectMode(LEFT);fill(20,125);rect(0,0,width,height);
    rectMode(CENTER);fill(243, 246, 247);
    rect(width/2, height/2, filtersX, filtersY, 25);
    back.display();
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("filters", width/2, height/2);
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
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("about", width/2, height/2);
    back.display();
  popStyle();
}

void displayPrev(){
  displayInici();
  prev();
  backPrev.display();
}

void prev(){
  
}

void displayCreate(){
  displayExperience();
}

void displayExperience(){
  logo();
  fotoPrev();
  nameDescDif();
  procedure();
  materials();
  bHome();
  bSimulation();
  bCode();
}

void fotoPrev(){
  pushStyle();
    rectMode(CORNER);fill(147, 207, 226);
    rect(margeX, margeY+logoY2+50, fotoPrevX, fotoPrevY);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("fotos", fotoPrevX/2 + margeX, margeY+logoY2+50+fotoPrevY/2);
  popStyle();
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

void bHome(){
  pushStyle();
    rectMode(CORNER);fill(147, 207, 226);
    rect(margeX, margeY+logoY2-filterButtonX+25, filterButtonX, filterButtonX);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("home", margeX + filterButtonX/2, margeY + logoY2-filterButtonX/2+25);
  popStyle();
}

void bSimulation(){
  pushStyle();
    rectMode(CORNER);fill(147, 207, 226);
    rect(margeX+fotoPrevX + 50, margeY+logoY2+325+procedureY, procedureX, bSimulationY, 20);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("go to simulation",  margeX+fotoPrevX + 50+procedureX/2, margeY + logoY2+325+procedureY+bSimulationY/2);
  popStyle();
}

void bCode(){
  pushStyle();
    rectMode(CORNER);fill(147, 207, 226);
    rect(width-margeX-materialsX, margeY+logoY2+325+procedureY, materialsX, bSimulationY, 20);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("view arduino code", width-margeX-materialsX/2,  margeY + logoY2+325+procedureY+bSimulationY/2);
  popStyle();
}

void displayFotos(){
  displayExperience();
  fotos();
}

void fotos(){
  pushStyle();
    rectMode(LEFT);fill(20, 125);rect(0,0,width,height);
    rectMode(CENTER);fill(147, 207, 226);
    rect(width/2, height/2, prevX, prevY, 25);
    circle((width-prevX)/4,height/2, 90);
    circle(width-(width-prevX)/4,height/2, 90);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("fotos", width/2, height/2);
  popStyle();
}

void displayCode(){
  displayExperience();
  code();
}

void code(){
  pushStyle();
    rectMode(LEFT);fill(20, 125);rect(0,0,width,height);
    rectMode(CENTER);fill(147, 207, 226);
    rect(width/2, height/2, prevX, prevY, 25);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("code", width/2, height/2);
  popStyle();
}

void displaySimulator(){
  logo();
  simulationTitle();
  screen();
  controllers();
}

void simulationTitle(){
  pushStyle();
    rectMode(CENTER); fill(147, 207, 226);
    rect(width/2, margeY+logoY2+50, 400, 50);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("SIMULATOR", width/2, margeY+logoY2+50);
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
     pantalla == Pantalles.INICI && experience1.mouseOverButton() ||
     pantalla == Pantalles.INICI && experience2.mouseOverButton() ||
     pantalla == Pantalles.INICI && experience3.mouseOverButton() ||
     pantalla == Pantalles.INICI && experience4.mouseOverButton() ||
     pantalla == Pantalles.INICI && experience5.mouseOverButton() ||
     pantalla == Pantalles.INICI && experience6.mouseOverButton() ||
     pantalla == Pantalles.INICI && experience7.mouseOverButton() ||
     pantalla == Pantalles.INICI && experience8.mouseOverButton()
     ){
    cursor(HAND);
  } else{
    cursor(ARROW);
  }
}
