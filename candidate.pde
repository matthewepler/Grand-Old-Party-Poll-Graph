class Candidate{
  
 String name;
 int[] rating = new int[totalWeeks]; 
  
  void render(color _c){
   float segment = width/(totalWeeks-1);
   noFill();
   fill(_c, 150);
   strokeWeight(1);
   stroke(255);
   beginShape();
   vertex(0, height);
   vertex(0, height-rating[0]*10);
   for(int i = 1; i<rating.length-1; i++){    
    vertex(segment*(i), height-rating[i]*10);
   } 
   vertex(width, height-rating[rating.length-1]*10);
   vertex(width,height);
   endShape();
//   fill(255,0,0);
//   rect(0, height-rating[0]*10, 5, 5);
  }
  
}
