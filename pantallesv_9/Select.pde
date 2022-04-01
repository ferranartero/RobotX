class Select {
  
  float x, y, w, h;          // Posició i dimensions
  String[] texts;            // Valors possibles
  String selectedValue;      // Valor Seleccionat
  
  boolean collapsed = true;  // Plegat / Desplegat
  boolean enabled;           // Abilitat / desabilitat
  
  float lineSpace = 15;      // Espai entre línies
  
  Select(String[] texts, float x, float y, float w, float h){
    
    this.texts = texts;
    this.selectedValue = "DIFFICULTY";
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.collapsed = true;
  }
  
  void display(){
    textMode(CORNER);
    stroke(0); strokeWeight(1.5); fill(255);
    rect(x, y, w, h);
    
    fill(100);
    rect(x + w - h, y, h, h);
    
    fill(0); stroke(0);
    triangle(x + w - h+3, y+4, x + w - h/2, y + h-4, x + w - 3, y+4);
    
    if(selectedValue == "DIFFICULTY"){
      fill(100); 
    } else if (selectedValue == "EASY"){
      fill(34, 220, 0); 
    } else if (selectedValue == "MEDIUM"){
      fill(255, 185, 0); 
    } else if (selectedValue == "DIFFICULT"){
      fill(245, 0, 0); 
    } 
    textSize(14); 
    text(selectedValue, x + 8, y + 16);
    
    if(!this.collapsed){
      
      fill(255); stroke(0);
      rect(x, y+h, w, (h + lineSpace)*texts.length);
      
      for(int i=0; i<texts.length; i++){
        
        if(i== clickedOption()){
          fill(200); noStroke();
          rect(x+4, y+4 + h + (h + lineSpace)*i - 2, w -8, h + lineSpace - 8);
        }
        
        fill(0);
        text(texts[i], x + 10, y + h + 21 + (h + lineSpace)*i);
      }
    }
    
  }
  
  void setCollapsed(boolean b){
    this.collapsed = b;
  }
  
  void toggle(){
    this.collapsed = !this.collapsed;
  }
  
  
  void update(){
    int option = clickedOption();
    selectedValue = texts[option];
  }
  
 // Indica si el cursor està sobre el select
 boolean mouseOverSelect(){
   if(this.collapsed){
     return (mouseX >= x) && 
            (mouseX <= x + w) && 
            (mouseY >= y) && 
            (mouseY <= y + h); 
   }
   else {
     return (mouseX>= x) && 
            (mouseX<= x + w) && 
            (mouseY>= y) && 
            (mouseY<= y + h + (h + lineSpace)*texts.length); 
   }
 }
 
 int clickedOption(){
   int i = (int)map(mouseY, y + h, y + h + (h + lineSpace)*texts.length, 
                            0, texts.length);
   return i;
 }
  
}
