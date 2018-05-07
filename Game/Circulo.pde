class Circulo extends Nodes{
  
  
Circulo (Table tempNodes, int sizeNode){
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
       if(position.getInt(i,0) != 0)
    ellipse(position.getInt(i,0), position.getInt(i,1), grosorn, grosorn);}
popStyle();     
}

 

}