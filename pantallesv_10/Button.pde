class Button {
  
 // Propietats d'un botó:
 float x, y, w, h;  // Posició i dimensions
 // Colors de contorn, farciment, actiu i desactiu
 color fillColor, strokeColor;
 color fillColorOver, fillColorDisabled;
 String textBoto;  // Text
 boolean enabled;  // Abilitat / desabilitat
 int textSize;
 
 // Mètode Constructor
 Button(String text, float x, float y, float w, float h, int s){
   this.textBoto = text;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.enabled = true;
   fillColor = color(34, 184, 230);
   fillColorOver = color(49, 72, 140);
   textSize = s;
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
  
  void setW(int i){
    this.w = i;
  }
  
  void setTextSize(int i){
    this.textSize = i;
  }
 
 // Dibuixa el botó
 void display(){
   rectMode(CENTER);
   if(!enabled){
     fill(34, 184, 230, 180);  // Color desabilitat
     noStroke();     //Color i gruixa del contorn
     rect(this.x, this.y, this.w, this.h, 20);    // Rectangle del botó
     
     // Text (color, alineació i mida)
     fill(44, 55, 97); textAlign(CENTER); textFont(titols[1]); textSize(textSize);
     text(textBoto, this.x, this.y+7);
   }
   else if(mouseOverButton()){
     fill(fillColorOver);      // Color quan ratolí a sobre
     noStroke();     //Color i gruixa del contorn
     rect(this.x, this.y, this.w, this.h, 20);    // Rectangle del botó
     
     // Text (color, alineació i mida)
     fill(fillColor); textAlign(CENTER); textFont(titols[1]); textSize(textSize);
     text(textBoto, this.x, this.y+7);
   }
   else{
     fill(fillColor, 180);          // Color actiu però ratolí fora
     noStroke();     //Color i gruixa del contorn
     rect(this.x, this.y, this.w, this.h, 20);    // Rectangle del botó
     
     // Text (color, alineació i mida)
     fill(44, 55, 97); textAlign(CENTER); textFont(titols[1]); textSize(textSize);
     text(textBoto, this.x, this.y+7);
   }
   
 }
 
 // Indica si el cursor està sobre el botó
 boolean mouseOverButton(){
   if(enabled){
   return (mouseX >= this.x-this.w/2) && 
          (mouseX<=this.x + this.w/2) && 
          (mouseY>= this.y-this.h/2) && 
          (mouseY<= this.y+this.h/2); 
   }else{
    return false; 
   }
 }
  
}
