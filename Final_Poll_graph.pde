String[] allData;

void setup(){
  size(800,400);
  background(0);
  smooth();
  
  allData = loadStrings("polls.csv");
  
  String[] names = split(allData[0], ",");
  println(names);
  

}

  


