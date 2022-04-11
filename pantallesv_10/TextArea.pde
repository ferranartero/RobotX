class TextArea {
  
  // Propietats del camp de text
  int x, y, h, w;
  int numCols, numRows;
  
  // Colors
  color bgColor = color(223, 226, 227, 100);
  color fgColor = color(44, 55, 97);
  color selectedColor = color(147, 207, 226, 200);
  color borderColor = color(30, 30, 30);
  float borderWeight = 1.5;
  
  // Text del camp
  String text1 = "";
  String[] lines;
  int textSize = 15;

  boolean selected = false;
  boolean enabled = true;
   
  // Constructor
  TextArea(int x, int y, int w, int h, int nc, int nr) {
      this.x = x; this.y = y; this.w = w; this.h = h;
      this.numCols = nc; this.numRows = nr;
      
      this.lines = new String[nr];
   }
  
  // Dibuixa el Camp de Text
  void display() {
      pushStyle();
      textFont(text);
      if (selected) {
         fill(selectedColor);
      } else {
         fill(bgColor);
      }
      
      strokeWeight(borderWeight);
      if(mouseOverTextField() && enabled){
        stroke(50, 120, 172);
      } else {
        stroke(borderColor); 
      }
      rect(x, y, w, h, 5);
      
      fill(fgColor);
      textSize(textSize);
      for(int i=0; i<lines.length; i++){
        if(lines[i]!=null){
          text(lines[i], x + 5, y + (i+1)*textSize);
        }
      }
      popStyle();
   }
   
   void setEnabled(boolean e){
    this.enabled = e; 
   }
   
   void updateLines(){
     if(text1.length()>0){
       int numLines = constrain(text1.length() / numCols, 0, this.numRows-1);
       println("NUM LINES: "+numLines);
       for(int i=0; i<=numLines; i++){
           int start = i*numCols;
           int end = min(text1.length(), (i+1)*numCols);
           lines[i] = text1.substring(start, end);
       }
     }
     else {
        for(int i=0; i<lines.length; i++){ 
          lines[i] ="";
        }
     }
     printArray(lines);
   }
   
   // Afegeix, lleva el text que es tecleja
   void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (keyCode == 32) {
            addText(' '); // SPACE
         } else {
           addText(key);
         }
      }
   }
   
   // Afegeix la lletra c al final del text
   void addText(char c) {
      if (this.text1.length() < this.numCols*this.numRows) {
         this.text1 += c;
         println("TEXT:"+this.text1);
      }
      updateLines();
   }
   
   // Lleva la darrera lletra del text
   void removeText() {
      if (text1.length()> 0) {
         text1 = text1.substring(0, text1.length()-1);
      }
      updateLines();
   }

   // Indica si el ratolí està sobre el camp de text
   boolean mouseOverTextField() {
      if (mouseX >= this.x && mouseX <= this.x + this.w) {
         if (mouseY >= this.y && mouseY <= this.y + this.h) {
            return true;
         }
      }
      return false;
   }
   
   // Selecciona el camp de text si pitjam a sobre
   // Deselecciona el camp de text si pitjam a fora
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
      } else {
         selected = false;
      }
   }
   
   String getAllText(){
     String txt="";
     for(int i=0; i<lines.length; i++){
       if(lines[i]!=null){
         txt += lines[i] + "\n";
       }
     }
     return txt;
   }
   
   void setLines(String[] lines){
     this.lines = lines;
   }
}
