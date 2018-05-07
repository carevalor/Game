class Lines {
  boolean punta;
   Table Matrix = loadTable("Matrix.csv");
    Table Matrix2 = loadTable("Matrix2.csv");
  int grosorl;
  Table position= loadTable("position.csv");
  color grey= color(208, 206, 212);
  
  
    void setValues(Table MG){
    for (int i=0; i<MG.getRowCount(); i++){
      Matrix.addRow();
      Matrix2.addRow();
      for (int j=0; j<MG.getColumnCount(); j++){
        Matrix.addColumn();
        Matrix2.addColumn();
      Matrix.setInt(i,j,MG.getInt(i,j));
      Matrix2.setInt(i,j,MG.getInt(i,j));

      }
    }
  }
     

 
  void setPunta(boolean tempPunta){
  punta= tempPunta;
  
  }
      void setLine(int sizel){
    grosorl=sizel;
  }
void setPositions(Table pos){ 
position.addColumn();
position.addColumn();
 
   for (int i=0; i<pos.getRowCount(); i++){
      for (int j=0; j<pos.getColumnCount(); j++){
        position.addRow();
      int x = pos.getInt(i,j);
      position.setInt(i,j,x);
  
      }
   }
}
  
}