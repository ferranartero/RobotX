// Llibreria de MySQL i Processing
import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;

// Objecte de connexió a la BBDD
MySQL msql;

void connectDB(){
  
    // Paràmetres de la connexió
    String user     = "admin";
    String pass     = "12345";   
    String database = "robotx";
    // bildwelt?useUnicode=true&characterEncoding=UTF-8 // =latin1
    //useUnicode=true&character_set_server=utf8mb4&useLegacyDatetimeCode=false
    
    // Establim la connexió
    msql = new MySQL( this, "localhost", database, user, pass );
    
    // Si la connexió s'ha establert
    if (msql.connect()){
        // La connexió ha funcionat!!!
        println("Connected to database!!");
    }
    else {
      // La connexió ha fallat!!!
      println("Connection failed !");
    }
}

int getNumRowsTable(String nameTable){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nameTable );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

String[][] getInfoTableTipocomponente(){
  int numRows = getNumRowsTable("tipocomponente");
  int numColumns = 2;
  String[][] info = new String [numRows][numColumns];
  msql.query("SELECT * FROM tipocomponente");
  int nr = 0;
  while(msql.next()){
    info[nr][0] = String.valueOf(msql.getInt("id"));
    info[nr][1] = msql.getString("nombre");
    nr++;
  }
  return info;
}

// Imprimeix contingut array 2D
void printArray2D(String[][] dades) {
  for (int f=0; f<dades.length; f++) {
    for (int c=0; c<dades[f].length; c++) {
      print(dades[f][c]+"\t");
    }
    println();
  }
}

// Retorna ID
int getIdFromTipoComponente(String nom){
  msql.query( "SELECT id FROM tipocomponente WHERE nombre='"+nom+"'" );
  msql.next();
  int id = msql.getInt("id");
  return id;
}

int getIdFromComponente(String nom){
  msql.query( "SELECT id FROM componente WHERE nombre='"+nom+"'" );
  msql.next();
  int id = msql.getInt("id");
  return id;
}

int getIdExperience(String nom){
  msql.query( "SELECT id FROM experiencia WHERE nombre='"+nom+"'" );
  msql.next();
  int id = msql.getInt("id");
  return id;
}

// Retorna nom
String getNombreFromTipoComponente(int id){
  msql.query( "SELECT nombre FROM tipocomponente WHERE id='"+id+"'" );
  msql.next();
  return msql.getString("nombre");
}

void insertTipoComponente(String n){
  String q = "INSERT INTO tipocomponente (id, nombre) VALUES (NULL, '"+n+"')";
  println("INSERT: "+q);
  msql.query(q);
  println("INSERT SUCCESS!!");
}

void updateTipoComponente(String o, String n){
  int idc = getIdFromTipoComponente(o);
  String q = "UPDATE `tipocomponente` SET `nombre` = '"+n+"' WHERE `tipocomponente`.`id` = '"+idc+"'";
  println("UPDATE: "+q);
  msql.query(q);
  println("UPDATE SUCCESS!!");
}

void deleteTipoComponente(String n){
  int id = getIdFromTipoComponente(n);
  String q = "DELETE FROM tipocomponente WHERE id = '"+ id+"'";
  println("DELETE: "+q);
  msql.query(q);
  println("DELETE SUCCESS!!");
}

int getNumRowsExperiencia(){
  String q = "SELECT COUNT(*) AS n FROM experiencia e, dificultad d WHERE e.dificultad=d.id ORDER BY e.id ASC";
  msql.query(q);
  msql.next();
  return msql.getInt("n");
}

String[][] getInfoExperiencies(){
  int numFiles = getNumRowsExperiencia();
  String[][] info = new String[numFiles][6];
  String q = "SELECT e.id AS id, e.nombre AS nombre, e.descripcion AS descripcion, e.codi AS codi, e.simula AS simula, d.nombre AS dificultad FROM experiencia e, dificultad d WHERE e.dificultad=d.id ORDER BY e.id ASC";
  msql.query(q);
  int nr=0;
  while(msql.next()){
    info[nr][0] = String.valueOf(msql.getInt("id"));
    info[nr][1] = msql.getString("nombre");
    info[nr][2] = msql.getString("descripcion");
    info[nr][3] = msql.getString("codi");
    info[nr][4] = String.valueOf(msql.getInt("simula"));
    info[nr][5] = msql.getString("dificultad");
    nr++;
  }
  return info;
}


int getNumRowsProcedimientos(int ide){
  String q = "SELECT COUNT(*) AS n FROM procedimiento p WHERE p.experiencia='"+ide+"'";
  msql.query(q);
  msql.next();
  return msql.getInt("n");
}

String[] getProcedimientos(int ide){
  int numFiles = getNumRowsProcedimientos(ide);
  String[] info = new String[numFiles];
  String q = "SELECT p.descripcion AS descripcion FROM procedimiento p WHERE p.experiencia='"+ide+"' ORDER BY p.orden ASC";
  msql.query(q);
  int nr=0;
  while(msql.next()){
    info[nr] = msql.getString("descripcion");
    nr++;
  }
  return info;
}

int getNumRowsFotos(int ide){
  String q = "SELECT COUNT(*) AS n FROM foto f WHERE f.experiencia='"+ide+"'";
  msql.query(q);
  msql.next();
  return msql.getInt("n");
}

String[] getFotos(int ide){
  int numFiles = getNumRowsFotos(ide);
  String[] info = new String[numFiles];
  String q = "SELECT f.nombre AS nombre FROM foto f WHERE f.experiencia='"+ide+"' ORDER BY f.nombre ASC";
  msql.query(q);
  int nr=0;
  while(msql.next()){
    info[nr] = msql.getString("nombre");
    nr++;
  }
  return info;
}

PImage[] createArrayFotos(String[] fotos){
  PImage[] imgs = new PImage[fotos.length];
  for(int i=0; i<fotos.length; i++){
    imgs[i] = loadImage(fotos[i]);
  }
  return imgs;
}

int getNumRowsComponentes(int ide){
  String q = "SELECT COUNT(*) AS n FROM experiencia e, componentesexp ce, componente c, tipocomponente tc WHERE e.id=ce.experiencia AND ce.componente=c.id AND c.tipo=tc.id AND e.id='"+ide+"' ORDER BY c.nombre ASC";
  msql.query(q);
  msql.next();
  return msql.getInt("n");
}

String[][] getComponentes(int ide){
  int numFiles = getNumRowsComponentes(ide);
  String[][] info = new String[numFiles][5];
  String q = "SELECT c.nombre AS nombre, tc.nombre AS tipo, ce.cantidad AS cantidad FROM experiencia e, componentesexp ce, componente c, tipocomponente tc WHERE e.id=ce.experiencia AND ce.componente=c.id AND c.tipo=tc.id AND e.id='"+ide+"' ORDER BY tc.nombre ASC";
  msql.query(q);
  int nr=0;
  while(msql.next()){
    info[nr][0] = msql.getString("nombre");
    info[nr][1] = msql.getString("tipo");
    info[nr][2] = String.valueOf(msql.getInt("cantidad"));
    nr++;
  }
  return info;
}

int getNumRowsFiltrar(String comps, String dif, boolean sim){
  String s = !sim ? "'0'" : "'1', '2', '3', '4', '5'";
  String q ="SELECT COUNT(DISTINCT e.id) AS n "+
  "FROM experiencia e, dificultad d, componentesexp ce, componente c, tipocomponente tc "+
  "WHERE e.dificultad=d.id AND e.id=ce.experiencia AND ce.componente=c.id AND c.tipo=tc.id AND d.nombre='"+dif+"' AND "+
  " e.simula IN ("+s+") AND tc.nombre IN ("+comps+") ORDER BY e.id ASC";
  msql.query(q);
  msql.next();
  return msql.getInt("n");
}

String[][] getFiltraExperiencies(String comps, String dif, boolean sim){
  String s = !sim ? "'0'" : "'1', '2', '3', '4', '5'";
  int numFiles = getNumRowsFiltrar(comps, dif, sim);
  String[][] info = new String[numFiles][6];
  String q = "SELECT e.id AS id, e.nombre AS nombre, e.descripcion AS descripcion, e.codi AS codi, e.simula AS simula, d.nombre AS dificultad "+
  "FROM experiencia e, dificultad d, componentesexp ce, componente c, tipocomponente tc "+
  "WHERE e.dificultad=d.id AND e.id=ce.experiencia AND ce.componente=c.id AND c.tipo=tc.id AND d.nombre='"+dif+"' AND "+
  " e.simula IN ("+s+") AND tc.nombre IN ("+comps+") ORDER BY e.id ASC";
  msql.query(q);
  int nr=0;
  while(nr<numFiles){
    info[nr][0] = String.valueOf(msql.getInt("id"));
    info[nr][1] = msql.getString("nombre");
    info[nr][2] = msql.getString("descripcion");
    info[nr][3] = msql.getString("codi");
    info[nr][4] = String.valueOf(msql.getInt("simula"));
    info[nr][5] = msql.getString("dificultad");
    nr++;
  }
  return info;
}

int getIdDificultad(String n) {
  msql.query( "SELECT id FROM dificultad WHERE nombre='"+n+"'" );
  msql.next();
  int id = msql.getInt("id");
  return id;
}

void insertExperiencia(String n, String d, String c, String s, String f) {
  int idf = getIdDificultad(f);
  String q="INSERT INTO experiencia (id, nombre, descripcion, codi, simula, dificultad) VALUES (NULL, '"+n+"', '"+d+"', '"+c+"', '"+s+"', '"+idf+"')";
  println("INSERT: "+q);
  msql.query(q);
  println("INSERT OK! :)");
}

void insertComponenteExperiencia(int idExp, int idComp, int cant){
  String q="INSERT INTO componentesexp (experiencia, componente, cantidad) VALUES ('"+idExp+"', '"+idComp+"', '"+cant+"');";
  println("INSERT: "+q);
  msql.query(q);
  println("INSERT OK! :)");
}

void insertFotoExperiencia(int idExp, String n){
  String q="INSERT INTO foto (id, nombre, experiencia) VALUES (NULL, '"+n+"', '"+idExp+"')";
  println("INSERT: "+q);
  msql.query(q);
  println("INSERT OK! :)");
}

int getMaxIdExperiencia() {
  msql.query( "SELECT MAX(id) AS id FROM experiencia");
  msql.next();
  int id = msql.getInt("id");
  return id;
}

void insertProcedimientoExperiencia(int idExp, String nombre, int orden){
  String q="INSERT INTO procedimiento (id, descripcion, orden, experiencia) VALUES (NULL, '"+nombre+"', '"+orden+"', '"+idExp+"');";
  println("INSERT: "+q);
  msql.query(q);
  println("INSERT OK! :)");
}


void deleteExperiencia(int idExp){
  msql.query( "DELETE FROM procedimiento WHERE experiencia ='"+idExp+"'");
  msql.query( "DELETE FROM componentesexp WHERE experiencia ='"+idExp+"'");
  msql.query( "DELETE FROM foto WHERE experiencia ='"+idExp+"'");
  msql.query( "DELETE FROM experiencia WHERE id ='"+idExp+"'");
}

String whereSimulacion(String sim){
  String where = "";
  if(sim.equals("S")){
    where = " AND e.simula IN ('1', '2', '3', '4', '5') ";
  }
  else if(sim.equals("N")){
    where = " AND e.simula='0' ";
  }
  return where;
}

String whereDificultad(String dif){
   String whereDificultad= "";
   if(dif.equals("0") || dif.equals("1") || dif.equals("2")){
     whereDificultad = "AND d.nombre='"+dif+"'";
   }
   return whereDificultad;
}

String whereComponentes(String comps){
   String whereComponentes = "";
   if(comps.length()>0){
     whereComponentes = "AND tc.nombre IN ("+comps+")";
   }
   return whereComponentes;
}

String queryFiltrarCount(String comps, String dif, String sim){
   return "SELECT COUNT(DISTINCT e.id) AS n "+
          "FROM experiencia e, dificultad d, componentesexp ce, componente c, tipocomponente tc "+
          "WHERE e.dificultad=d.id AND e.id=ce.experiencia AND ce.componente=c.id AND c.tipo=tc.id "+
          whereDificultad(dif) + whereSimulacion(sim) + whereComponentes(comps);
}

String queryFiltrar(String comps, String dif, String sim){
   return "SELECT DISTINCT e.id AS id, e.nombre AS nombre, e.descripcion AS descripcion, e.codi AS codi, e.simula AS simula, d.nombre AS dificultad "+
              "FROM experiencia e, dificultad d, componentesexp ce, componente c, tipocomponente tc "+
              "WHERE e.dificultad=d.id AND e.id=ce.experiencia AND ce.componente=c.id AND c.tipo=tc.id "+
               whereDificultad(dif) + whereSimulacion(sim) + whereComponentes(comps) + " ORDER BY e.id ASC";
}


int getNumRowsFiltar(String comps, String dif, String sim){
  String q = queryFiltrarCount(comps, dif, sim);
  msql.query(q);
  msql.next();
  return msql.getInt("n");
}

String[][] getFiltrarExperiencies(String comps, String dif, String sim){ 
  int numFiles = getNumRowsFiltar(comps, dif, sim);
  String[][] info = new String[numFiles][6];
  String q = queryFiltrar(comps, dif, sim);
  println("QUERY: "+q);
  msql.query(q);
  int nr=0;
  while(msql.next()){
    info[nr][0] = String.valueOf(msql.getInt("id"));
    info[nr][1] = msql.getString("nombre");
    info[nr][2] = msql.getString("descripcion");
    info[nr][3] = msql.getString("codi");
    info[nr][4] = String.valueOf(msql.getInt("simula"));
    info[nr][5] = msql.getString("dificultad");
    nr++;
  }
  return info;
}
