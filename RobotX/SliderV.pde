class SliderV {

  int x, y, w, h, v;
  color c;
  boolean enabled;

  SliderV (int x, int y, int w, int h, color c) {
    this.x = x; this.y = y;
    this.w = w; this.h = h;
    this.v = 90;
    this.c = c;
    this.enabled = true;
  }

  void display() {
    pushStyle();
      fill(c); strokeWeight(3);rectMode(CORNER);
      rect(x, y-4, w, h+10, 5);
      noStroke(); fill(0);
      rect(x, h-v+y-5, w, 13, 5);
      fill(255); textAlign(CENTER); textSize(24);
      text(v, x+ w/2, h-v+y+6);
    popStyle();
  }

  boolean mouseOnSlider() {
    return ((mouseX>x) && (mouseX<x+w) && 
            (mouseY<=y+h) && (mouseY>=y));
  }

  void updateSlider() {
    v = h-(mouseY-y);
    v = constrain(v, 0, 255);
  }

}
