class Grafo{

 Table Matrix = loadTable("Matrix.csv");
 Table Matrix2= loadTable("Matrix2.csv"); 
    Table position= loadTable("position.csv");

  color grey= color(208, 206, 212);
 
 Grafo(int templevel){
 
 level = templevel;
 
 
 }
 
   
  void display(){
 
  if(level==1){
     Table Nivel1 = loadTable("Nivel1.csv");
     Table X1 = loadTable("X1.csv");
   
  circulo = new Circulo(X1, grosorn);
  cuadrado = new Cuadrado(X1, grosorn);
  continua = new Continua(Nivel1, X1, grosorl);
  flecha1 = new Flecha(Nivel1, X1, 10,false);
  
   setPositions(X1);
   continua.display();
   circulo.display();
     Print(Nivel1);
   
  }
  
   if(level==2){
     Table Nivel2 = loadTable("Nivel2.csv");
     Table X2 = loadTable("X2.csv");
  circulo = new Circulo(X2, 70);
  cuadrado = new Cuadrado(X2, 70);
  continua = new Continua(Nivel2, X2, 10);
  flecha1 = new Flecha(Nivel2, X2, 10,false);
  setPositions(X2);
   continua.display();
   circulo.display();
   
   Print(Nivel2);
  }
   if(level==3){
     Table Nivel3 = loadTable("Nivel3.csv");
     Table X3 = loadTable("X3.csv");
  circulo = new Circulo(X3, 70);
  cuadrado = new Cuadrado(X3, 70);
  continua = new Continua(Nivel3, X3, 10);
  flecha1 = new Flecha(Nivel3, X3, 10,false);
  
  
  
   continua.display();
   circulo.display();
   Print(Nivel3);
  
  }
   
      if(level==4){
     Table Nivel4 = loadTable("Nivel4.csv");
     Table X4 = loadTable("X4.csv");
  circulo = new Circulo(X4, 70);
  cuadrado = new Cuadrado(X4, 70);
  continua = new Continua(Nivel4, X4, 10);
  flecha1 = new Flecha(Nivel4, X4, 10,false);
  flecha2= new Flecha(Nivel4, X4, 10,true);
  
  
   flecha2.display();
   circulo.display();
   Print(Nivel4);
  }
   
   
}
void ganar(){
  println (linea.size());
    if (linea.size()==26) {
      background(100, 100, 250);
      textAlign(CENTER);
    textSize(35);
    
    text("Ganaste", width/2, height/2);
      
      
      
    };






}


}