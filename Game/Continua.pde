class Continua extends Lines{

Continua(Table MG, Table tempNodes,int sizel) {
    setValues(MG);

   setLine(sizel);
   setPositions(tempNodes);
   
  }
  
       
  void display(){
     pushStyle();
    background(255);
    strokeWeight(grosorl);
    stroke(grey);
    fill(grey);
    
    for (int i=0; i<Matrix.getRowCount(); i++){
      for (int j=0; j<Matrix.getRowCount(); j++){
          if(Matrix.getInt(i,j)!=0){
            
          line(position.getInt(i,0), position.getInt(i,1), position.getInt(j,0), position.getInt(j,1));
          }
            
       }
     }
    popStyle();
  }
}
  