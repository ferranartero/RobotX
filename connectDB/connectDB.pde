void setup(){
  size(100, 100);
  connectDB();
  int nf = getNumRowsTable("tipocomponente");
  println("Num files: " + nf);
  printArray2D(getInfoTableTipocomponente());
}
