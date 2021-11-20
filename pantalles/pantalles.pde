enum Pantalles {ANIMATION, INICI, FILTERS, ABOUT, PREV, CREATE, EXPERIENCE, FOTOS, CODI, SIMULATOR};
Pantalles pantalla;


void setup(){
  fullScreen();
  strokeWeight(0);
  println(width);
  println(margeX);
  inicialitza();
  
  
  pantalla = Pantalles.ANIMATION;
}

void draw(){
  background(243, 246, 247);
  if(c == 0){//animation
    animation();
    pantalla = Pantalles.INICI;
  }
  
  if(/*pantalla == Pantalles.ANIMATION*/c == 1){  //inici
    displayLogo();
    displayInici();
  }
  
  if(/*pantalla == Pantalles.INICI*/c == 2){  //pop up filtros
    displayLogo();
    displayInici();
    displayFilters();
  }
  
  if(/*pantalla == Pantalles.ABOUT*/c == 3){  //about
    displayLogo();
    displayInici();
    displayAbout();
  }
  
  if(/*pantalla == Pantalles.PREV */ c == 4){  //pop up previsualització
    displayLogo();
    displayInici();
    displayPrev();
  }
  
  if(pantalla == Pantalles.CREATE){  //create
    displayLogo();

  }
  
  if(pantalla == Pantalles.EXPERIENCE){  //experience
     displayLogo();

  }
  
  if(pantalla == Pantalles.FOTOS){  //fotos
    
  }
  
  if(pantalla == Pantalles.CODI){  //codi
    
  }
  
  if(pantalla == Pantalles.SIMULATOR){  //simulator
    
  }
}

void keyPressed(){
  if(keyCode == RIGHT){
    c++;
    if(c>5){
      c=5;
    }
  }
  
  if(keyCode == LEFT){
    c--;
    if(c<0){
      c=0;
    }
  }
  
  if(c == 1){
    if (keyCode == UP){
      y += 10;
      if(y>0){
        y = 0;
      }
    }
    
    if (keyCode == DOWN){
      y -= 10;
      if(y<-yMax){
        y = -yMax;
      }
    }
  }
  
  
  println(c);
}

void inicialitza(){
  margeX = (width-4*experienceX)/5;
  yMax = (margeY+logoY2+50+createButtonY+50+filterButtonY+30+2*experienceY+200)-height;
  filtersX = width*4/7;
  filtersY = height*4/7;  
  prevX = width*2/3;
  prevY = height*7/9;
}
