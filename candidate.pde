class Candidate{
  
 String name;
 int[] rating = new int[totalWeeks]; 
 int candNum;
 float segment = width/(totalWeeks-1);
  
  void render(color _c){
   ellipseMode(CENTER);
   noFill();
//   fill(_c, 150);
   strokeWeight(3);
   stroke(_c);
   beginShape();
   curveVertex(0, 450-rating[0]*10);
   for(int i = 0; i<rating.length; i++){   
    curveVertex(segment*i, 450-rating[i]*10);
    ellipse(segment*i, 450-rating[i]*10, 4, 4);
    }
   curveVertex(width, 450-rating[rating.length-1]*10);
   endShape();
   
//   fill(255,0,0);
//   rect(0, 400-rating[0]*10, 5, 5);
//   rect(width-5, 400-rating[rating.length-1]*10, 5, 5);
   
//   for(int j = 1; j< segment; j++){
//    stroke(0);
//    strokeWeight(1); 
//    line(segment*j, 0, segment*j, height);
//   }
  
  
}
}


