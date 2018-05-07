//Declaración de variables
//Variables generales
Nodes nodes;
Lines lines;
Grafo grafo;
Circulo circulo;
Cuadrado cuadrado;
Continua continua;
Flecha flecha1;
Flecha flecha2;
 PVector puntofinal = new PVector(0, 0);
PVector puntoinicial = new PVector(0, 0);

ArrayList<PVector> puntos = new ArrayList<PVector>() ; 
int level;
int grosorn;
int grosorl;
PVector M;
PVector A;  
boolean P;
boolean Q;
boolean control;

//Variables específicas de cada nivel
//Nivel 1
ArrayList<PVector> linea = new ArrayList<PVector>();


void setup(){
  
  P=true;
Q=true;
control=true;

  size(800,600);
  //NOTA: Máximo grosor es 70.
  grosorn=70;
  grosorl=10;
  level=1; 
   grafo = new Grafo(1);
}

void draw(){
 
  grafo.display();
  
    
    
    
  }
  

  
void keyPressed() {
Table X1 = loadTable("X1.csv");  
Table X2 = loadTable("X2.csv");  
Table X3 = loadTable("X3.csv");
Table X4 = loadTable("X4.csv");
Table Nivel1 = loadTable("Nivel1.csv");
Table Nivel2 = loadTable("Nivel2.csv");
Table Nivel3 = loadTable("Nivel3.csv");
Table Nivel4 = loadTable("Nivel4.csv");

Table Matrix2 = loadTable("Matrix2.csv");

  
  
  if (key == CODED) {
    for (int i=linea.size()-1; i>=0; i--) {
      linea.remove(i); }
      control=true;
          P=true;
          Q=true;
    if (keyCode== LEFT || keyCode == RIGHT) {
      if(level==1) {setValues(Nivel2);}
     if(level==2) {setValues(Nivel3);}
     if(level==3) {setValues(Nivel4);}
     if(level==4) {setValues(Nivel1);}
     
     
      level= level+1;
     //grafo = new Grafo(level); 
     
     ereasePositions(puntos);
       
    }
 if(keyCode == CONTROL ){
     setValues(Matrix2);
 }
 
 
}
  
}


void ereasePositions(ArrayList <PVector> puntos){ 
        
     
     
   for (int j=0; j<puntos.size(); j++){
      puntos.set(j,new PVector (0,0));  
      
        
      }   
           
          
      }
    

 
  
     void setValues(Table MG){
        Table Matrix = loadTable("Matrix.csv");


    for (int i=0; i<MG.getRowCount(); i++){
      Matrix.addRow();
      
      for (int j=0; j<MG.getColumnCount(); j++){
        Matrix.addColumn();
        
      Matrix.setInt(i,j,MG.getInt(i,j));
      

      }
    }
  }