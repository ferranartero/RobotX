enum Pantalles {ANIMATION, INICI, FILTERS, ABOUT, PREV, CREATE, EXPERIENCE, FOTOS, CODI, SIMULATOR};
Pantalles pantalla;


void setup(){
  fullScreen();
  strokeWeight(0);
  inicialitza();   
  pantalla = Pantalles.ANIMATION;
}

void draw(){
  background(243, 246, 247);
  switch(pantalla){
    case ANIMATION: displayAnimation(); pantalla = Pantalles.INICI; break;
    case INICI: displayInici(); break;
    case FILTERS: displayFilters(); break;
    case ABOUT: displayAbout(); break;
    case PREV: displayPrev(); break;
    case CREATE: displayCreate(); break;
    case EXPERIENCE: displayExperience(); break;
    case FOTOS: displayFotos(); break;
    case CODI: displayCode(); break;
    case SIMULATOR: displaySimulator(); break;
  }
  
  if(pantalla == Pantalles.INICI){
    filters.setEnabled(true);
    about.setEnabled(true);
    create.setEnabled(true);
    experience1.setEnabled(true); experience2.setEnabled(true); experience3.setEnabled(true); experience4.setEnabled(true);
    experience5.setEnabled(true); experience6.setEnabled(true); experience7.setEnabled(true); experience8.setEnabled(true);
  } else {
    filters.setEnabled(false);
    about.setEnabled(false);
    create.setEnabled(false);
    experience1.setEnabled(false); experience2.setEnabled(false); experience3.setEnabled(false); experience4.setEnabled(false);
    experience5.setEnabled(false); experience6.setEnabled(false); experience7.setEnabled(false); experience8.setEnabled(false);
  }
  
  mouseCursor();
}



void mouseReleased(){
  
  if(logo2.mouseOverButton() && pantalla == Pantalles.INICI ||
     logo2.mouseOverButton() && pantalla == Pantalles.CREATE ||
     logo2.mouseOverButton() && pantalla == Pantalles.EXPERIENCE ||
     logo2.mouseOverButton() && pantalla == Pantalles.SIMULATOR){ pantalla = Pantalles.INICI; }
  else if(filters.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.FILTERS; }
  else if(about.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.ABOUT; }
  else if(create.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.CREATE; } 
  else if(back.mouseOverButton() && pantalla == Pantalles.FILTERS){ pantalla = Pantalles.INICI; }
  else if(back.mouseOverButton() && pantalla == Pantalles.ABOUT){ pantalla = Pantalles.INICI; }
  else if(backPrev.mouseOverButton() && pantalla == Pantalles.PREV){ pantalla = Pantalles.INICI; }
  else if(experience1.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.PREV;  experience1.setPrev(true); }
  else if(experience2.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.PREV;  experience2.setPrev(true); }
  else if(experience3.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.PREV;  experience3.setPrev(true); }
  else if(experience4.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.PREV;  experience4.setPrev(true); }
  else if(experience5.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.PREV;  experience5.setPrev(true); }
  else if(experience6.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.PREV;  experience6.setPrev(true); }
  else if(experience7.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.PREV;  experience7.setPrev(true); }
  else if(experience8.mouseOverButton() && pantalla == Pantalles.INICI){ pantalla = Pantalles.PREV;  experience8.setPrev(true); }
  else if(!mouseOverFilters() && pantalla == Pantalles.FILTERS){ pantalla = Pantalles.INICI; }
  else if(!mouseOverAbout() && pantalla == Pantalles.ABOUT){ pantalla = Pantalles.INICI; }
  else if(!mouseOverPrev() && pantalla == Pantalles.PREV){ pantalla = Pantalles.INICI; }
  
}

void keyPressed(){  
  if(pantalla == Pantalles.INICI){
    if (keyCode == UP){
      if(y<0){
        create.changeYby(10);
        filters.changeYby(10);
        about.changeYby(10);
        experience1.changeYby(10);
        experience2.changeYby(10);
        experience3.changeYby(10);
        experience4.changeYby(10);
        experience5.changeYby(10);
        experience6.changeYby(10);
        experience7.changeYby(10);
        experience8.changeYby(10);
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
        experience1.changeYby(-10);
        experience2.changeYby(-10);
        experience3.changeYby(-10);
        experience4.changeYby(-10);
        experience5.changeYby(-10);
        experience6.changeYby(-10);
        experience7.changeYby(-10);
        experience8.changeYby(-10);
      }
      y -= 10;
      if(y<-yMax){
        y = -yMax;
      }
    }
  }
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
