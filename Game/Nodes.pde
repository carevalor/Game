class Nodes {
  

  int grosorn;
  Table position= loadTable("position.csv");
  color grey= color(208, 206, 212);
   
  void setPositions(Table pos){ 
        position.addColumn();
        position.addColumn();
 
   for (int i=0; i<pos.getColumnCount(); i++){
     
      for (int j=0; j<pos.getRowCount(); j++){
 
       position.addRow();
        
      if( pos.getInt(j,i) != 0 ){    
        
      position.setInt(j,i,pos.getInt(j,i));
      
      }
        
      }
   }
}
    

  void setSizeNode(int sizeNode){
    grosorn=sizeNode;
  }
   

}