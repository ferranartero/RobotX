// Classe Simulació 01 - Controlador de LEDs

class Simulacio01 extends Simulacio {
  
  // Botons
  Button bRedOn, bBlueOn, bGreenOn, bYellowOn, bPinkOn, bAllOn;
  Button bRedOff, bBlueOff, bGreenOff, bYellowOff, bPinkOff, bAllOff;
  
  // Sliders
  SliderV sV1, sV2, sV3;

  // Constructor
  Simulacio01(PApplet p) {
    super(p); // Constructor pare
    initGui(); // Inicialitza elements de la GUI
  }

  // Inicialitza la GUI de la simulació
  void initGui() {

    // LED Buttons
    bRedOn = new Button("Red_ON", 20, 75, 120, 70);
    bRedOn.fillColor=color(255, 0, 0);
    
    bRedOff = new Button("Red_OFF", 170, 75, 120, 70);
    bRedOff.fillColor=color(255, 0, 0);
    
    bBlueOn = new Button("Blue_ON", 20, 175, 120, 70);
    bBlueOn.fillColor=color(0, 0, 255);
    
    bBlueOff = new Button("Blue_OFF", 170, 175, 120, 70);
    bBlueOff.fillColor=color(0, 0, 255);
    
    bGreenOn = new Button("Green_ON", 20, 275, 120, 70);
    bGreenOn.fillColor=color(0, 255, 0);
    
    bGreenOff = new Button("Green_OFF", 170, 275, 120, 70);
    bGreenOff.fillColor=color(0, 255, 0);
    
    bYellowOn = new Button("Yellow_ON", 20, 375, 120, 70);
    bYellowOn.fillColor=color(255, 255, 0);
    
    bYellowOff = new Button("Yellow_OFF", 170, 375, 120, 70);
    bYellowOff.fillColor=color(255, 255, 0);
    
    bPinkOn = new Button("Pink_ON", 20, 475, 120, 70);
    bPinkOn.fillColor=color(255, 0, 255);
    
    bPinkOff = new Button("Pink_OFF", 170, 475, 120, 70);
    bPinkOff.fillColor=color(255, 0, 255);
    
    bAllOn = new Button("All_ON", 20, 575, 120, 70);
    bAllOn.fillColor=color(255);
    
    bAllOff = new Button("All_OFF", 170, 575, 120, 70);
    bAllOff.fillColor=color(255);  

    //RGB Sliders (Red: 1, Green:2, Blue: 3)
    sV1 = new SliderV(325, 385, 90, 255, #FF0000);
    sV2 = new SliderV(425, 385, 90, 255, #03FF00);
    sV3 = new SliderV(525, 385, 90, 255, #009BFF);
  }

  void display() {
    logo();
    backSimulator.display();
    // Dibuixa el text
    fill(0); textSize(44); textAlign(LEFT);
    text("LED RGB Controller", 20, 50);
    
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
    fill(sV1.v, sV2.v, sV3.v); strokeWeight(3);
    rect(325, 75, 290, 290, 5);
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
  
}
