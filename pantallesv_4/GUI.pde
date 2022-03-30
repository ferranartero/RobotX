RoundButton filters, about, home, back, backPrev, backSimulator, backCode, backFotos, add, logo2;
Button create, goToExperience, goToSimulation, viewArduinoCode;
ExperienceButton experience1, experience3, experience4, experience2, experience5, experience6, experience7, experience8;
ArrayList<ExperienceButton> experiences;

void inicialitzaBotons(){
  filters = new RoundButton(filters1, filters2, margeX+ filterButtonX/2+5, margeY+logoY2+50+createButtonY+50+filterButtonX/2, filterButtonX);
  about = new RoundButton(about1, about2, width-margeX- filterButtonX/2-5, margeY+logoY2+50+createButtonY+50+filterButtonX/2, filterButtonX);
  logo2 = new RoundButton(logo, logo, width/2, margeY+logoY2/2+10, logoX2);
  back = new RoundButton(back1, back2, width/2-filtersX/2+40, height/2-filtersY/2+50, backButtonX);
  backPrev = new RoundButton(back1, back2, width/2-prevX/2+40, height/2-prevY/2+50, backButtonX);
  backSimulator = new RoundButton(back1, back2, margeX+backButtonX/2, margeY+logoY2+60, backButtonX);
  backCode = new RoundButton(back1, back2, width/2-prevX/2+40, height/2-codePanelY/2+50, backButtonX);
  backFotos = new RoundButton(back1, back2, width/2-400+40, height/2-400+50, backButtonX);
  add = new RoundButton(add1, add2, margeX+fotoPrevX/2, height/2, 60);
  home = new RoundButton(home1, home2, margeX + filterButtonX/2, margeY+logoY2+60, filterButtonX);
  
  create = new Button("C R E A T E", width/2, margeY+logoY2+50+createButtonY/2, createButtonX, createButtonY);
  goToExperience = new Button("GO TO EXPERIENCE", width/2-prevX/2+prevX/3+450, height/2 + 140, 700, createButtonY);
  goToSimulation = new Button("GO TO SIMULATION", margeX+fotoPrevX + 50 + procedureX/2, margeY+logoY2+325+procedureY+bSimulationY/2, procedureX, bSimulationY);
  viewArduinoCode = new Button("VIEW ARDUINO CODE", width-margeX-materialsX/2,  margeY + logoY2+325+procedureY+bSimulationY/2, materialsX, bSimulationY);
  
  experiences = new ArrayList<>();
  
  experiences.add(new ExperienceButton(mostra, 0, "NAME", 0));
  experiences.add(new ExperienceButton(mostra, 0, "NAME", 1));
  experiences.add(new ExperienceButton(mostra, 1, "NAME", 2));
  experiences.add(new ExperienceButton(mostra, 0, "HOLA", 3));
  experiences.add(new ExperienceButton(mostra, 0, "NAME", 4));
  experiences.add(new ExperienceButton(mostra, 2, "NAME", 5));
  experiences.add(new ExperienceButton(mostra, 0, "NAME", 6));
  experiences.add(new ExperienceButton(mostra, 1, "NAME", 7));
}

void enableButtons(){
  if(pantalla == Pantalles.INICI){
    filters.setEnabled(true);
    about.setEnabled(true);
    create.setEnabled(true);
    for(int i = 0; i<experiences.size(); i++){
       ExperienceButton e = experiences.get(i);
       e.setEnabled(true);
     }
  } else {
    filters.setEnabled(false);
    about.setEnabled(false);
    create.setEnabled(false);
    for(int i = 0; i<experiences.size(); i++){
      ExperienceButton e = experiences.get(i);
      e.setEnabled(false);
    }
  }
  
  if(pantalla == Pantalles.PREV){
    goToExperience.setEnabled(true);
  } else {
    goToExperience.setEnabled(false);
  }
}
