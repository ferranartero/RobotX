void animation(){
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

void displayLogo(){
  pushStyle();
    rectMode(CENTER); fill(147, 207, 226);
    rect(width/2, margeY+logoY2/2+y, logoX2, logoY2); 
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("logo",width/2, margeY+logoY2/2+y);
  popStyle();
}

void displayInici(){
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
  pushStyle();
    rectMode(LEFT);fill(20,125);rect(0,0,width,height);
    rectMode(CENTER);fill(147, 207, 226);
    rect(width/2, height/2, filtersX, filtersY, 25);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("filters", width/2, height/2);
  popStyle();
}

void displayAbout(){
  pushStyle();
    rectMode(LEFT);fill(20, 125);rect(0,0,width,height);
    rectMode(CENTER);fill(147, 207, 226);
    rect(width/2, height/2, filtersX, filtersY, 25);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
  popStyle();
}

void displayPrev(){
  pushStyle();
    rectMode(LEFT);fill(20, 125);rect(0,0,width,height);
    rectMode(CENTER);fill(147, 207, 226);
    rect(width/2, height/2, prevX, prevY, 25);
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("previsualitzaci??", width/2, height/2);
  popStyle();
}

void displayExperience(){
  pushStyle();
  rectMode(CORNER);
  fill(147, 207, 226);
  rect(width/2, margeY+logoY2/2+y+10, logoX2, logoY2, 10);
  
  rect(margeX-5, height/2-fotoPrevX/2-5, fotoPrevX+10, fotoPrevX+10, 10);
  
  
  rect(margeX+fotoPrevX + 50, margeY+logoY2+75, 400, 70);                               //titol
  
  rect(margeX+fotoPrevX + 50, margeY+logoY2+150, 70, 20); //Dif
  
  
  rect(margeX+fotoPrevX + 50, height/2-fotoPrevX/2+40, width-2*margeX-fotoPrevX-50, 125);           //descripci??
  rect(margeX+fotoPrevX + 50, height/2-fotoPrevX/2 + 185, procedureX, procedureY);                 //procedure
  rect(width-margeX-materialsX, height/2-fotoPrevX/2 + 185, materialsX, procedureY);               //materials
  
  rectMode(CENTER);
  rect(margeX+ filterButtonX/2,margeY+logoY2+60, filterButtonX, filterButtonY);  
  rect(width-margeX-materialsX/2,  margeY + logoY2+325+procedureY+80/2+30, materialsX, 80);
  rect(margeX+fotoPrevX + 50 + procedureX/2,  margeY + logoY2+325+procedureY+80/2+30, procedureX, 80);
  popStyle();
}
