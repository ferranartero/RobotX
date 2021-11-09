int c;
int margeX;

void setup(){
  fullScreen();
  strokeWeight(0);
  println(width);
  println(margeX);
  margeX = (width-4*experienceX)/5;
}

void draw(){
  background(243, 246, 247);
  
  if(c == 0){  //animació
    rectMode(CENTER);
    fill(147, 207, 226);
    rect(width/2, height/2-titolY/2-separacio/2, logoX1, logoY1); //logo
    rect(width/2, height/2+logoY1/2+separacio/2, titolX, titolY); //titol
    textAlign(CENTER);textSize(20);fill(39, 38, 53);
    text("logo", width/2, height/2-titolY/2-separacio/2);
    text("titol", width/2, height/2+logoY1/2+separacio/2);
  }
  
  if(c == 1){  //inici
    rectMode(CENTER);
    fill(147, 207, 226);
    rect(width/2, margeY+logoY2/2, logoX2, logoY2); //logo
    rect(width/2, margeY+logoY2+50+createButtonY/2, createButtonX, createButtonY); //create button
    rect(margeX+ filterButtonX/2, margeY+logoY2+50+createButtonY+50+filterButtonY/2, filterButtonX, filterButtonY); //filter button
    
    rect(margeX+experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2, experienceX, experienceY);
    rect(2*margeX+3*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2, experienceX, experienceY);
    rect(3*margeX+5*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2, experienceX, experienceY);
    rect(4*margeX+7*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2, experienceX, experienceY);
    
    rect(margeX+experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100, experienceX, experienceY);
    rect(2*margeX+3*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100, experienceX, experienceY);
    rect(3*margeX+5*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100, experienceX, experienceY);
    rect(4*margeX+7*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100, experienceX, experienceY);
    
    textAlign(CENTER);textSize(15);fill(39, 38, 53);
    text("logo",width/2, margeY+logoY2/2);
    text("CREATE", width/2, margeY+logoY2+50+createButtonY/2);
    text("filter", margeX+ filterButtonX/2, margeY+logoY2+50+createButtonY+50+filterButtonY/2);
    
    text("experience", margeX+experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2);
    text("experience", 2*margeX+3*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2);
    text("experience", 3*margeX+5*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2);
    text("experience", 4*margeX+7*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+experienceY/2);
    
    text("experience", margeX+experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100);
    text("experience", 2*margeX+3*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100);
    text("experience", 3*margeX+5*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100);
    text("experience", 4*margeX+7*experienceX/2, margeY+logoY2+50+createButtonY+50+filterButtonY+30+3*experienceY/2+100);
    
  }
  
  if(c == 2){  //pop up filtros
    
  }
  
  if(c == 3){  //pop up previsualització
    
  }
  
  if(c == 4){  //editor i experiència
    
  }
  
  if(c == 5){  //simulació
    
  }
}

void keyPressed(){
  if(keyCode == RIGHT){
    c++;
    if(c>5){
      c=0;
    }
  }
  
  if(keyCode == LEFT){
    c--;
    if(c<0){
      c=0;
    }
  }
  println(c);
}
