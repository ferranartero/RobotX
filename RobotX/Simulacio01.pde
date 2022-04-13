// Classe Simulació 01 - Controlador de LEDs

class Simulacio01 extends Simulacio {
  
  // Botons
  Button bRedOn, bBlueOn, bGreenOn, bYellowOn, bPinkOn, bAllOn;
  Button bRedOff, bBlueOff, bGreenOff, bYellowOff, bPinkOff, bAllOff;
  
  // Sliders
  SliderV sV1, sV2, sV3;
  
  int x = 350;
  int y = 350;
  
  // Constructor
  Simulacio01(PApplet p) {
    super(p); // Constructor pare
    initGui(); // Inicialitza elements de la GUI
  }

  // Inicialitza la GUI de la simulació
  void initGui() {

    // LED Buttons
    bRedOn = new Button("Red ON", x, y, 120, 70, 15);
    bRedOn.fillColor=color(255, 0, 0);
    
    bRedOff = new Button("Red OFF", x+150, y, 120, 70, 15);
    bRedOff.fillColor=color(255, 0, 0);
    
    bBlueOn = new Button("Blue ON", x, y+100, 120, 70, 15);
    bBlueOn.fillColor=color(0, 0, 255);
    
    bBlueOff = new Button("Blue OFF", x+150, y+100, 120, 70, 15);
    bBlueOff.fillColor=color(0, 0, 255);
    
    bGreenOn = new Button("Green ON", x, y+200, 120, 70, 15);
    bGreenOn.fillColor=color(0, 255, 0);
    
    bGreenOff = new Button("Green OFF", x+150, y+200, 120, 70, 15);
    bGreenOff.fillColor=color(0, 255, 0);
    
    bYellowOn = new Button("Yellow ON", x, y+300, 120, 70, 15);
    bYellowOn.fillColor=color(255, 255, 0);
    
    bYellowOff = new Button("Yellow OFF", x+150, y+300, 120, 70, 15);
    bYellowOff.fillColor=color(255, 255, 0);
    
    bPinkOn = new Button("Pink ON", x, y+400, 120, 70, 15);
    bPinkOn.fillColor=color(255, 0, 255);
    
    bPinkOff = new Button("Pink OFF", x+150, y+400, 120, 70, 15);
    bPinkOff.fillColor=color(255, 0, 255);
    
    bAllOn = new Button("All ON", x, y+500, 120, 70, 15);
    bAllOn.fillColor=color(34, 184, 230);
    
    bAllOff = new Button("All OFF", x+150, y+500, 120, 70, 15);
    bAllOff.fillColor=color(34, 184, 230);  

    //RGB Sliders (Red: 1, Green:2, Blue: 3)
    sV1 = new SliderV(width/2+375, 470, 90, 255, #FF0000);
    sV2 = new SliderV(width/2+475, 470, 90, 255, #03FF00);
    sV3 = new SliderV(width/2+575, 470, 90, 255, #009BFF);
  }

  void display() {
    logo();
    backSimulator.display();
    // Dibuixa el text
    fill(49, 72, 140, transparence); textSize(50); textAlign(CENTER); rectMode(CORNER);
    text("RGB LED Controller", width/2, 220);
    
    
    // Dibuixa els botons
    bRedOn.display(); bRedOff.display();
    bGreenOn.display(); bGreenOff.display();
    bBlueOn.display(); bBlueOff.display();
    bYellowOn.display(); bYellowOff.display();
    bPinkOn.display(); bPinkOff.display();
    bAllOn.display(); bAllOff.display();
    
    // Dibuixa els sliders
    sV1.display(); sV2.display(); sV3.display();

    // Dibuixa el quadre de color RGB
    fill(sV1.v, sV2.v, sV3.v); strokeWeight(3);rectMode(CENTER);
    rect(width/2, 600, 500, 500, 5);
  }
  
  // Comprova els cliks sobre els botons
  void checkButtons(){
    if(bRedOn.mouseOverButton() && bRedOn.enabled){
      writeToSerial('r');
      println("RED ON");
    }
    else if(bRedOff.mouseOverButton() && bRedOff.enabled){
      writeToSerial('a');
      println("RED OFF");
    }
    else if(bBlueOn.mouseOverButton() && bBlueOn.enabled){
      writeToSerial('b');
      println("BLUE ON");
    }
    else if(bBlueOff.mouseOverButton() && bBlueOff.enabled){
      writeToSerial('c');
      println("BLUE OFF");
    }
    else if(bGreenOn.mouseOverButton() && bGreenOn.enabled){
      writeToSerial('g');
      println("GREEN ON");
    }
    else if(bGreenOff.mouseOverButton() && bGreenOff.enabled){
      writeToSerial('d');
      println("BLUE OFF");
    }
    else if(bYellowOn.mouseOverButton() && bYellowOn.enabled){
      writeToSerial('y');
      println("YELLOW ON");
    }
    else if(bYellowOff.mouseOverButton() && bYellowOff.enabled){
      writeToSerial('e');
      println("YELLOW OFF");
    }
    else if(bPinkOn.mouseOverButton() && bPinkOn.enabled){
      writeToSerial('p');
      println("PINK ON");
    }
    else if(bPinkOff.mouseOverButton() && bPinkOff.enabled){
      writeToSerial('f');
      println("PINK OFF");
    }
    else if(bAllOn.mouseOverButton() && bAllOn.enabled){
      writeToSerial('z');
      println("ALL ON");
    }
    else if(bAllOff.mouseOverButton() && bAllOff.enabled){
      writeToSerial('x');
      println("ALL OFF");
    }
  }
  
  // Actualitza l'enviament sèrie (sliders)
  void updateSerial() {
    /*
     port.write('j'); port.write(sV1.v);
     port.write('k'); port.write(sV2.v);
     port.write('l'); port.write(sV3.v);
     */
     println("Updated SLIDER: "+sV1.v +", "+sV2.v+", "+sV3.v);
  }
  
  // Comprova i actualitza els Sliders
  void checkSliders(){
    
    if(sV1.mouseOnSlider()){
      sV1.updateSlider();
      updateSerial();
    }
    
    if(sV2.mouseOnSlider()){
      sV2.updateSlider();
      updateSerial();
    }
    
    if(sV3.mouseOnSlider()){
      sV3.updateSlider();
      updateSerial();
    }
  }
  
  boolean mouseOverButton(){
    return (sV1.mouseOnSlider() || sV2.mouseOnSlider() || sV3.mouseOnSlider()||
           bRedOn.mouseOverButton() || bRedOff.mouseOverButton() || bBlueOn.mouseOverButton() || bBlueOff.mouseOverButton()||bYellowOn.mouseOverButton() || bGreenOn.mouseOverButton() ||
           bYellowOff.mouseOverButton() || bPinkOn.mouseOverButton() || bPinkOff.mouseOverButton() || bAllOn.mouseOverButton() || bAllOff.mouseOverButton() || bGreenOff.mouseOverButton());
  }
  
}
