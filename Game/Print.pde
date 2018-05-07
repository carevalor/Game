 
void setPositions(Table pos){ 
        
      
      for (int j=0; j<pos.getRowCount(); j++){
      puntos.add(new PVector (pos.getInt(j,0),pos.getInt(j,1)));  
      
        
      }
    }


void Print (Table Matrix){
int puntoin = puntos.indexOf(puntoinicial);
    int puntofi = puntos.indexOf(puntofinal);
  
 for (int i = 0; i<linea.size()-1; i++) {
      strokeWeight(grosorl);
      line(linea.get(i).x, linea.get(i).y, linea.get(i+1).x, linea.get(i+1).y);
    }
M= new PVector(mouseX, mouseY);
if (!P) {
      strokeWeight(grosorl);
      line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
    };
if (!Q && Matrix.getInt(puntoin,puntofi) != 0) {
      strokeWeight(grosorl);
      line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);

      linea.add(puntoinicial);
      linea.add(puntofinal);
      puntoinicial = puntofinal;
      
      Matrix.setInt(puntofi,puntoin,Matrix.getInt(puntofi,puntoin)-1);
      Matrix.setInt(puntoin,puntofi,Matrix.getInt(puntoin,puntofi)-1);
     
    }
      
      
    for (int i=0; i<puntos.size()-1; i++) {
      if (mouseX<=(puntos.get(i).x+grosorn) && mouseX>=(puntos.get(i).x-grosorn) && mouseY<=(puntos.get(i).y+grosorn) && mouseY>=(puntos.get(i).y-grosorn)) {
        pushStyle();
        stroke(20,46,50);
        fill(20,46,500);
        strokeWeight(6);
       
        ellipse(puntos.get(i).x,puntos.get(i).y,grosorn-4,grosorn-4);
        popStyle();
      }
    }
    
  
    if (linea.size()==26) {
      background(100, 100, 250);
      textAlign(CENTER);
    textSize(35);
    
    text("Ganaste", width/2, height/2);}
    
    }
  
 
  void mousePressed (){
  
    for (int i=0; i<puntos.size()-1; i++) {
      if (mouseX<=(puntos.get(i).x+grosorn) && mouseX>=(puntos.get(i).x-grosorn) && mouseY<=(puntos.get(i).y+grosorn) && mouseY>=(puntos.get(i).y-grosorn)) {
        if (control==true) {
          puntoinicial = puntos.get(i);
          control=false;
        }
        P=false;
        Q=true;
      }
    }
 
}

 void mouseReleased () { 
  
 
    for (int i=0; i<puntos.size()-1; i++) {
      for (int j=0; j<puntos.size()-1; j++) {
        if (mouseX<=(puntos.get(i).x+grosorn) && mouseX>=(puntos.get(i).x-grosorn) && mouseY<=(puntos.get(i).y+grosorn) && mouseY>=(puntos.get(i).y-grosorn) ) {
          puntofinal = puntos.get(i);
          Q=false;
          P=true;
        }
      }
    }
  
   
}