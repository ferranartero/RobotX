RoundButton filters, about, home, back, backPrev, backSimulator, backCode, backFotos, logo2, fotoLeft, fotoRight;
Button create, goToExperience, goToSimulation, viewArduinoCode, addArduinoCode, saveCreation, saveFilters, deleteYes, deleteNo;
ExperienceButton experience1, experience3, experience4, experience2, experience5, experience6, experience7, experience8;
Select difficulties;
TextArea createDescription, createProcedure, createCode;
TextField createName;
CheckBoxList filtersMaterials, createMaterials;
CheckBoxText simulationYes, simulationNo, difficultyE, difficultyM, difficultyD;
ArrayList<ExperienceButton> experiences;

void inicialitzaBotons() {
  //ROUND BUTTONS
  filters = new RoundButton(filters1, filters2, margeX+ filterButtonX/2+5, margeY+logoY2+50+createButtonY+50+filterButtonX/2, filterButtonX);
  about = new RoundButton(about1, about2, width-margeX- filterButtonX/2-5, margeY+logoY2+50+createButtonY+50+filterButtonX/2, filterButtonX);
  logo2 = new RoundButton(logo, logo, width/2, margeY+logoY2/2+10, logoX2);
  back = new RoundButton(back1, back2, width/2-filtersX/2+40, height/2-filtersY/2+50, backButtonX);
  backPrev = new RoundButton(back1, back2, width/2-prevX/2+40, height/2-prevY/2+50, backButtonX);
  backSimulator = new RoundButton(back1, back2, margeX+backButtonX/2, margeY+logoY2+80, backButtonX);
  backCode = new RoundButton(back1, back2, width/2-prevX/2+40, height/2-codePanelY/2+50, backButtonX);
  backFotos = new RoundButton(close1, close2, 40, 40, 60);
  home = new RoundButton(home1, home2, margeX + filterButtonX/2, margeY+logoY2+60, filterButtonX);
  fotoLeft = new RoundButton(back1, back2, (width-prevX)/4, height/2, 70);
  fotoRight = new RoundButton(right1, right2, width-(width-prevX)/4, height/2, 70);

  //BUTTONS
  create = new Button("C R E A T E", width/2, margeY+logoY2+50+createButtonY/2, createButtonX, createButtonY, 20);
  goToExperience = new Button("GO TO EXPERIENCE", width/2-prevX/2+prevX/3+450, height/2 + 140, 700, createButtonY, 20);
  goToSimulation = new Button("GO TO SIMULATION", margeX+fotoPrevX + 50 + procedureX/2, margeY+logoY2+325+procedureY+bSimulationY/2, procedureX, bSimulationY, 20);
  viewArduinoCode = new Button("VIEW ARDUINO CODE", width-margeX-materialsX/2, margeY + logoY2+325+procedureY+bSimulationY/2, materialsX, bSimulationY, 20);
  addArduinoCode = new Button("ADD ARDUINO CODE", margeX+fotoPrevX + 50 + procedureX/2, margeY + logoY2+325+procedureY+bSimulationY/2+30, procedureX, bSimulationY, 20);
  saveCreation = new Button("SAVE", width-margeX-materialsX/2, margeY + logoY2+325+procedureY+bSimulationY/2+30, materialsX, bSimulationY, 20);
  deleteYes = new Button("YES", width/2-120, height/2+60, 175, 75, 20);
  deleteNo = new Button("NO", width/2+120, height/2+60, 175, 75, 20);
  saveFilters = new Button("SAVE FILTERS", width/2, height/2-filtersY/2+560, 350, 60, 20);

  //SELECT
  difficulties = new Select(diff, margeX+fotoPrevX + 52, margeY+logoY2+92, 150, 21);

  //TEXT FIELD
  createName = new TextField(margeX+fotoPrevX + 50, margeY+logoY2+25, 500, 60);

  //TEXT AREAS
  createDescription = new TextArea(margeX+fotoPrevX + 50, height/2-fotoPrevX/2, width-2*margeX-fotoPrevX-50, 125, 110, 5);
  createProcedure = new TextArea(margeX+fotoPrevX + 50, height/2-fotoPrevX/2 + 185, procedureX, procedureY, 63, 15);
  createCode = new TextArea(width/2-prevX/2+50, height/2-codePanelY/2+80, prevX-100, codePanelY-130, 129, 25);

  //CHECKBOXLISTS
  filtersMaterials = new CheckBoxList(materialsFilters, width/2-filtersX/2+180, height/2-filtersY/2+175, 30, 30);
  createMaterials = new CheckBoxList(materialsCreate, width-margeX-materialsX+40, height/2-fotoPrevX/2+200, 30, 30);

  //CHECKBOXTEXT
  simulationYes = new CheckBoxText("Yes", width/2+filtersX/2-485, height/2-filtersY/2+365, 30, 30);
  simulationNo = new CheckBoxText("No", width/2+filtersX/2-300, height/2-filtersY/2+365, 30, 30);
  difficultyE = new CheckBoxText("EASY", width/2+filtersX/2-570, height/2-filtersY/2+175, 30, 30);
  difficultyM = new CheckBoxText("MEDIUM", width/2+filtersX/2-430, height/2-filtersY/2+175, 30, 30);
  difficultyD = new CheckBoxText("DIFFICULT", width/2+filtersX/2-275, height/2-filtersY/2+175, 30, 30);


  experiences = new ArrayList<>();
  String[][] info = getInfoExperiencies();
  for (int i=0; i<info.length; i++) {
    int id = Integer.valueOf(info[i][0]);
    String name = info[i][1];
    String description = info[i][2];
    String codi = info[i][3];
    int simula = Integer.valueOf(info[i][4]);
    String[] infoProc = getProcedimientos(id);
    String[][] materials = getComponentes(id);
    PImage[] imgs = createArrayFotos(getFotos(id));
    int dif = Integer.valueOf(info[i][5]);
    experiences.add(new ExperienceButton(imgs, dif, name, description, infoProc, materials, codi, i, simula));
  }
}

void enableButtons() {
  if (pantalla == Pantalles.INICI) {
    filters.setEnabled(true);
    about.setEnabled(true);
    create.setEnabled(true);
    for (int i = 0; i<experiences.size(); i++) {
      ExperienceButton e = experiences.get(i);
      e.setEnabled(true);
    }
  } else {
    filters.setEnabled(false);
    about.setEnabled(false);
    create.setEnabled(false);
    for (int i = 0; i<experiences.size(); i++) {
      ExperienceButton e = experiences.get(i);
      e.setEnabled(false);
    }
  }

  if (pantalla == Pantalles.PREV) {
    goToExperience.setEnabled(true);
  } else {
    goToExperience.setEnabled(false);
  }
}
