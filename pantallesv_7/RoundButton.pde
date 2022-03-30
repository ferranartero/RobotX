class RoundButton {

  // Propietats d'un botó:
  int x, y, r;  // Posició i dimensions

  PImage icona1, icona2; // Icona del botó

  PShape icona3, icona4;

  boolean enabled, raster;

  // Mètode Constructor
  RoundButton(PImage icona1, PImage icona2, int x, int y, int r) {
    this.icona1 = icona1;
    this.icona2 = icona2;
    this.x = x;
    this.y = y;
    this.r = r;
    this.enabled = true;
    this.raster = true;
  }

  RoundButton(PShape  icona3, PShape icona4, int x, int y, int r) {
    this.icona3 = icona3;
    this.icona4 = icona4;
    this.x = x;
    this.y = y;
    this.r = r;
    this.enabled = true;
    this.raster = false;
  }

  void setEnabled(boolean b) {
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
  void display() {
    
    if (raster) {
      if (!enabled) {
        imageMode(CENTER);
        image(icona1, this.x, this.y, this.r, this.r);
      } else if (mouseOverButton()) {
        imageMode(CENTER);
        image(icona2, this.x, this.y, this.r, this.r);     // Color quan ratolí a sobre
      } else {
        imageMode(CENTER);
        image(icona1, this.x, this.y, this.r, this.r);
      }
    } else {
      if (!enabled) {
        shapeMode(CENTER);
        shape(icona3, this.x, this.y, this.r, this.r);
      } else if (mouseOverButton()) {
        shapeMode(CENTER);
        shape(icona4, this.x, this.y, this.r, this.r);     // Color quan ratolí a sobre
      } else {
        shapeMode(CENTER);
        shape(icona3, this.x, this.y, this.r, this.r);
      }
    }
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return dist(mouseX, mouseY, this.x, this.y)<= this.r/2;
  }
}
