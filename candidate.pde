class Candidate{
  
 String name;
 int[] rating = new int[totalWeeks]; 
  
  void render(color _c){
   float segment = width/(totalWeeks-1);
   noFill();
//   fill(_c, 150);
   strokeWeight(3);
   stroke(_c);
   beginShape();
   curveVertex(0, height-rating[0]*10);
   for(int i = 0; i<rating.length; i++){    
    curveVertex(segment*i, height-rating[i]*10);
   } 
   curveVertex(width, height-rating[rating.length-1]*10);
//   vertex(width,height);
   endShape();
   fill(255,0,0);
   rect(0, height-rating[0]*10, 5, 5);
   rect(width-5, height-rating[rating.length-1]*10, 5, 5);
  }
  
}

/*
vertex(0, height);
   vertex(0, height-rating[0]*10);
   for(int i = 1; i<rating.length-1; i++){    
    vertex(segment*(i), height-rating[i]*10);
   } 
   vertex(width, height-rating[rating.length-1]*10);
   vertex(width,height);
   */
