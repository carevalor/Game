class Flecha extends Lines{

Flecha (Table MG, Table tempNodes,int sizel,boolean tempPunta) {
    setValues(MG);
   setLine(sizel);
   setPositions(tempNodes);
   setPunta(tempPunta);
   
  }


void display(){
    pushStyle();
    background(255);
    strokeWeight(grosorl);
    stroke(grey);
    fill(grey);
    for (int i=0; i<Matrix.getRowCount(); i++){
      for (int j=0; j<Matrix.getRowCount(); j++){
        //if(position[i]!=null && position[j]!=null){
          if(Matrix.getInt(i,j)!=0){
          line(position.getInt(i,0), position.getInt(i,1), position.getInt(j,0),position.getInt(j,1));
          
          
        if(Matrix.getInt(i,j)==2){
          triangle(position.getInt(j,0)-60, position.getInt(j,1)-10, position.getInt(j,0)-60, position.getInt(j,1)+10,position.getInt(j,0)-40, position.getInt(j,1));
          
          if(punta== true){
          triangle(position.getInt(i,0)+60, position.getInt(i,1)+10, position.getInt(i,0)+60, position.getInt(i,1)-10,position.getInt(i,0)+40, position.getInt(i,1));
          
          }
        }
          }
        //}    
       }
     }
    popStyle();
  }


}