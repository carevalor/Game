class Cuadrado extends Nodes{

  Cuadrado (Table tempNodes, int sizeNode){
      //for(int i=0; i<tempNodes.length; i++){
      setPositions(tempNodes);      
      //}
      setSizeNode(sizeNode);
    
  }
    void display(){
      pushStyle();
    //background(255);
    stroke(0);
    strokeWeight(10);
    fill(0);
    for (int i=0; i<position.getRowCount(); i++){
      int x = position.getInt(i,0);
      int y = position.getInt(i,1);
       if(x != 0 && y != 0 )
    rect(position.getInt(i,0)-grosorn/2, position.getInt(i,1)-grosorn/2, grosorn, grosorn);}
     popStyle();
}


}