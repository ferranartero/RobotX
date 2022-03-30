RoundButton filters, about, home, back, backPrev, logo2;
Button create;
ExperienceButton experience1, experience3, experience4, experience2, experience5, experience6, experience7, experience8;

void inicialitzaBotons(){
  filters = new RoundButton(filters1, filters2, margeX+ filterButtonX/2+5, margeY+logoY2+50+createButtonY+50+filterButtonX/2+y, filterButtonX);
  about = new RoundButton(about1, about2, width-margeX- filterButtonX/2-5, margeY+logoY2+50+createButtonY+50+filterButtonX/2+y, filterButtonX);
  logo2 = new RoundButton(logo, logo, width/2, margeY+logoY2/2+y+10, logoX2);
  back = new RoundButton(back1, back2, width/2-filtersX/2+40, height/2-filtersY/2+50, backButtonX);
  backPrev = new RoundButton(back1, back2, width/2-prevX/2+40, height/2-prevY/2+50, backButtonX);
  
  create = new Button("C R E A T E", width/2, margeY+logoY2+50+createButtonY/2+y, createButtonX, createButtonY);
  
  experience1 = new ExperienceButton(mostra, 0, "NAME", 0, 0);
  experience2 = new ExperienceButton(mostra, 0, "NAME", 0, 1);
  experience3 = new ExperienceButton(mostra, 1, "NAME", 0, 2);
  experience4 = new ExperienceButton(mostra, 0, "NAME", 0, 3);
  experience5 = new ExperienceButton(mostra, 0, "NAME", 1, 0);
  experience6 = new ExperienceButton(mostra, 2, "NAME", 1, 1);
  experience7 = new ExperienceButton(mostra, 0, "NAME", 1, 2);
  experience8 = new ExperienceButton(mostra, 1, "NAME", 1, 3);
}
