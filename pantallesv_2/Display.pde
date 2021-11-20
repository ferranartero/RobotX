
void displayAnimation(){
  pushStyle();
    rectMode(CENTER);
    fill(147, 207, 226);
    rect(width/2, height/2-titolY/2-separacio/2, logoX1, logoY1,50); //logo
    rect(width/2, height/2+logoY1/2+separacio/2, titolX, titolY); //titol
    textAlign(CENTER);textSize(20);fill(39, 38, 53);
    text("logo", width/2, height/2-titolY/2-separacio/2);
    text("titol", width/2, height/2+logoY1/2+separacio/2);
  popStyle();
}

void logo(){
  pushStyle();
    rectMode(CENTER); fill(147, 207, 226);
    rect(width/2, margeY+logoY2/2+y, logoX2, logoY2); 
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("logo",width/2, margeY+logoY2/2+y);
  popStyle();
}

void displayInici(){
  experiences();
  logo();
}

void experiences(){
   pushStyle();
    rectMode(CENTER); fill(147, 207, 226);
    rect(width/2, margeY+logoY2+50+createButtonY/2+y, createButtonX, createButtonY); //create button
    rect(margeX+ filterButtonX/2, margeY+logoY2+50+createButtonY+50+filterButtonY/2+y, filterButtonX, filterButtonY); //filter button
    rect(width-margeX- filterButtonX/2, margeY+logoY2+50+createButtonY+50+filterButtonY/2+y, filterButtonX, filterButtonY);  //about
    
    //expiriences
    rect(margeX+experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2 + y, experienceX, experienceY, redondeig);
    rect(2*margeX+3*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2 + y, experienceX, experienceY, redondeig);
    rect(3*margeX+5*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2+y, experienceX, experienceY, redondeig);
    rect(4*margeX+7*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2+y, experienceX, experienceY, redondeig);
    
    rect(margeX+experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100+y, experienceX, experienceY, redondeig);
    rect(2*margeX+3*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100+y, experienceX, experienceY, redondeig);
    rect(3*margeX+5*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100+y, experienceX, experienceY, redondeig);
    rect(4*margeX+7*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100+y, experienceX, experienceY, redondeig);
    
    //texts
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("CREATE", width/2, margeY+logoY2+50+createButtonY/2+y);
    text("filter", margeX+ filterButtonX/2, margeY+logoY2+50+createButtonY+50+filterButtonY/2+y);
    text("?", width-margeX- filterButtonX/2, margeY+logoY2+50+createButtonY+50+filterButtonY/2+y);
    
    text("experience", margeX+experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2+y);
    text("experience", 2*margeX+3*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2+y);
    text("experience", 3*margeX+5*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2+y);
    text("experience", 4*margeX+7*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2+y);
    
    text("experience", margeX+experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100+y);
    text("experience", 2*margeX+3*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100+y);
    text("experience", 3*margeX+5*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100+y);
    text("experience", 4*margeX+7*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100+y);
  popStyle();
}

void displayFilters(){
  displayInici();
  filters();
}

void filters(){
  pushStyle();
    rectMode(LEFT);fill(20,125);rect(0,0,width,height);
    rectMode(CENTER);fill(147, 207, 226);
    rect(width/2, height/2, filtersX, filtersY, 25);
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
    rectMode(CENTER);fill(147, 207, 226);
    rect(width/2, height/2, filtersX, filtersY, 25);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("about", width/2, height/2);
  popStyle();
}

void displayPrev(){
  displayInici();
  prev();
}

void prev(){
  pushStyle();
    rectMode(LEFT);fill(20, 125);rect(0,0,width,height);
    rectMode(CENTER);fill(147, 207, 226);
    rect(width/2, height/2, prevX, prevY, 25);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("previsualització", width/2, height/2);
  popStyle();
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
    rect(margeX, margeY+logoY2-filterButtonY+25, filterButtonX, filterButtonY);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("home", margeX + filterButtonX/2, margeY + logoY2-filterButtonY/2+25);
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
