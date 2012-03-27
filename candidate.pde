class Candidate{
  
 String name;
 int[] rating = new int[totalWeeks]; 
  
  void render(color _c){
   float segment = width/totalWeeks;
//   noFill();
   fill(_c);
   strokeWeight(1);
   stroke(255);
   beginShape();
   vertex(0,height);
   for(int i = 0; i<rating.length; i++){    
    vertex(segment*(i), height-rating[i]*5);
   } 
   vertex(width-segment, height);
   endShape();
  }
}
