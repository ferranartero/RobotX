class ExperienceButton {
  
 // Propietats d'un botó:
 float x, y;  // Posició
 String title;  // Text
 int fila, columna;
 boolean enabled, prev;  // Abilitat / desabilitat
 color difficulty;
 PImage img;
 
 // Mètode Constructor
 ExperienceButton(PImage img, int dif, String text, int fila, int columna){
   this.img = img;
   if(dif == 0){
     this. difficulty = color(34, 220, 0);
   } else if(dif == 1){
     this. difficulty = color(255, 185, 0);
   } else if (dif == 2){
    this. difficulty = color(245, 0, 0); 
   }
   this.title = text;
   this.fila = fila;
   this.columna = columna;
   this.enabled = true;
   x = (columna+1)*margeX+columna*experienceX;
   y = margeY+logoY2+50+createButtonY+50+filterButtonX+30+experienceY*fila+100*fila;
 }
 
 // Setters
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 void changeYby(int y){
   this.y += y;
 }
 
 void setY(int y) {
    this.y = y;
  }
  
  void setX(int x) {
    this.x = x;
  }
 
 // Dibuixa el botó
 void display(){
   rectMode(CORNER); imageMode(CORNER); textMode(CORNER);
   if(!enabled){
     fill(243, 246, 247);     // Color quan ratolí a sobre
     stroke(39, 38, 53); strokeWeight(0.5);  //Color i gruixa del contorn
     rect(this.x, this.y, experienceX, experienceY, redondeig);    // Rectangle del botó
     fill(difficulty);noStroke();
     rect(this.x+experienceX-40, this.y+20, 20, 10, 10);
     
     image(img, this.x + 20, this.y+50, 260, 260);
     
     // Text (color, alineació i mida)
     fill(44, 55, 97); textAlign(CENTER); textSize(50);textFont(titols);
     text(title, this.x+50, this.y+320);
   }
   else if(mouseOverButton()){
     fill(44, 55, 97, 25); noStroke();  
     rect(this.x-3, this.y-3, experienceX+6, experienceY+6, redondeig);
     fill(243, 246, 247);      // Color quan ratolí a sobre
     stroke(39, 38, 53);  strokeWeight(0.5);   //Color i gruixa del contorn
     rect(this.x, this.y, experienceX, experienceY, redondeig);    // Rectangle del botó
     fill(difficulty);noStroke();
     rect(this.x+experienceX-40, this.y+20, 20, 10, 10);
     
     image(img, this.x + 20, this.y+50, 260, 260);
     
     // Text (color, alineació i mida)
     fill(44, 55, 97); textAlign(CENTER); textSize(50);textFont(titols);
     text(title, this.x+50, this.y+320);
   }
   else{
     fill(243, 246, 247);     // Color quan ratolí a sobre
     stroke(39, 38, 53); strokeWeight(0.5);  //Color i gruixa del contorn
     rect(this.x, this.y, experienceX, experienceY, redondeig);    // Rectangle del botó
     fill(difficulty);noStroke();
     rect(this.x+experienceX-40, this.y+20, 20, 10, 10);
     
     image(img, this.x + 20, this.y+50, 260, 260);
     
     // Text (color, alineació i mida)
     fill(44, 55, 97); textAlign(CENTER); textSize(50);textFont(titols);
     text(title, this.x+50, this.y+320);
   }
   
   if(prev){
     pushStyle();
       rectMode(LEFT);fill(20, 125);rect(0,0,width,height);
       rectMode(CENTER);fill(243, 246, 247);
       rect(width/2, height/2, prevX, prevY, 25);
     popStyle();
     imageMode(CENTER);
     image(img, width/3, height/2, prevX/3, prevX/3);
   }
   
 }
 
 void setPrev(boolean p){
   this.prev = p;
 }
 
 // Indica si el cursor està sobre el botó
 boolean mouseOverButton(){
   return (mouseX >= this.x) && 
          (mouseX<=this.x + experienceX) && 
          (mouseY>= this.y) && 
          (mouseY<= this.y + experienceY); 
 }
  
}
