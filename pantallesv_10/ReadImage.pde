void fileSelected(File selection) {
  if (selection == null) {
    println("No s'ha seleccionat cap fitxer.");
  } else {
    
    // Obtenim la ruta del fitxer seleccionat
    String rutaImatge = selection.getAbsolutePath();
    if(addImage<5){
      createImgs[addImage] = loadImage(rutaImatge);  // Actualitzam imatge  
      namesImages[addImage]= selection.getName();
      addImage++;
    }
  }
}
