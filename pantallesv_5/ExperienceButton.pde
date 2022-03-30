class ExperienceButton {
  
 // Propietats d'un botó:
 float x, y, y2;  // Posició
 String title;  // Text
 int dif;
 boolean enabled;  // Abilitat / desabilitat
 color difficulty;
 PImage img;
 int numExp;
 String description, procedure, materials, code;
 
 // Mètode Constructor
 ExperienceButton(PImage img, int dif, String title, String description, String procedure, String materials, String code, int ne){
   this.numExp = ne;
   this.img = img;
   this.dif = dif;
   if(dif == 0){
     this. difficulty = color(34, 220, 0);
   } else if(dif == 1){
     this. difficulty = color(255, 185, 0);
   } else if (dif == 2){
    this. difficulty = color(245, 0, 0); 
   }
   this.title = title;
   this.enabled = true;
   int fila = ne/4; int columna = ne%4;
   this.x = (columna+1)*margeX+columna*experienceX;
   this.y = margeY+logoY2+50+createButtonY+50+filterButtonX+30+experienceY*fila+100*fila;
   this.description = description;
   this.procedure = procedure;
   this.materials = materials;
   this.code = code;
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
 void display(float x, float y, float experienceX, float experienceY, float y2){
   pushMatrix();
     translate(0, y2);
     this.y2 = y2;
     rectMode(CORNER); imageMode(CORNER); textMode(CORNER);
     if(!enabled){
       fill(243, 246, 247);                                           // Color quan ratolí a sobre
       stroke(39, 38, 53); strokeWeight(0.5);                         // Color i gruixa del contorn
       rect(this.x, this.y, experienceX, experienceY, redondeig);     // Rectangle del botó
       fill(difficulty); noStroke();
       rect(this.x+experienceX-40, this.y+20, 20, 10, 10);
       
       image(img, this.x + 20, this.y+50, 260, 260);
       
       // Text (color, alineació i mida)
       fill(44, 55, 97); textAlign(CENTER); textSize(50);textFont(titols);
       text(title, this.x+50, this.y+320);
     }else if(mouseOverButton()){
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
     }else{
       fill(243, 246, 247);     // Color quan ratolí a sobre
       stroke(39, 38, 53); strokeWeight(0.5);  // Color i gruixa del contorn
       rect(this.x, this.y, experienceX, experienceY, redondeig);    // Rectangle del botó
       fill(difficulty);noStroke();
       rect(this.x+experienceX-40, this.y+20, 20, 10, 10);
       
       image(img, this.x + 20, this.y+50, 260, 260);
       
       // Text (color, alineació i mida)
       fill(44, 55, 97); textAlign(CENTER); textSize(50);textFont(titols);
       text(title, this.x+50, this.y+320);
     }   
   popMatrix();
   
 }
 
 // Indica si el cursor està sobre el botó
 boolean mouseOverButton(){
   return (mouseX >= this.x) && 
          (mouseX<=this.x + experienceX) && 
          (mouseY>= this.y + y2) && 
          (mouseY<= this.y + experienceY + y2); 
 }
  
}
