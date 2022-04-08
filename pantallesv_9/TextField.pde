class TextField {
  
  // Propietats del camp de text
  int x, y, h, w;
  
  // Colors
  color bgColor = color(223, 226, 227, 100);
  color fgColor = color(44, 55, 97);
  color selectedColor = color(147, 207, 226, 200);
  color borderColor = color(30, 30, 30);
  float borderWeight = 1.5;
  
  // Text del camp
  String text = "";
  int textLength = 0;
  int textSize = 45;

  boolean selected = false;
  boolean enabled = true;
   
  // Constructor
  TextField(int x, int y, int w, int h) {
      this.x = x; this.y = y; this.w = w; this.h = h;
   }
  
  // Dibuixa el Camp de Text
  void display() {
      textFont(titols[2]);
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
      text(text, x + 5, y + textSize);
   }
   
   // Afegeix, lleva el text que es tecleja
   void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (keyCode == 32) {
            addText(' '); // SPACE
         } else {
            
           boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
           boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
           boolean isKeyNumber = (key >= '0' && key <= '9');
      
           if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
               addText(key);
           }
         }
      }
   }
   
   void setEnabled(boolean e){
    this.enabled = e; 
   }
   
   // Afegeix la lletra c al final del text
   void addText(char c) {
      if (textWidth(this.text + c) < w) {
         this.text += c;
         textLength++;
      }
   }
   
   // Lleva la darrera lletra del text
   void removeText() {
      if (textLength - 1 >= 0) {
         text = text.substring(0, textLength - 1);
         textLength--;
      }
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
}
