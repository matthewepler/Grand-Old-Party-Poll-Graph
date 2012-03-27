String[] allData;
HashMap<String, Candidate> candidateHash = new HashMap();
int totalWeeks = 15;
PVector previousPV = new PVector();
PVector thisPV = new PVector();

void setup(){
  size(800,400);
//  background(0);
  smooth();
//  colorMode(HSB);
  
  allData = loadStrings("polls.csv");
  
  String[] names = split(allData[0], ",");
  for(int i = 1; i < 8; i++){
    Candidate thisCandidate = new Candidate();
    thisCandidate.name = names[i];
    candidateHash.put(thisCandidate.name, thisCandidate);  
    for(int j = 1; j <= 15; j++){
      // remember the week# and rating# for this row
      String[] thisWeek = split(allData[j], ",");
      int weekNum = int(thisWeek[0]);
      thisCandidate.rating[weekNum-1] = int(thisWeek[i]);
      println(thisCandidate.name + ": " + "week " + weekNum + "= " + thisCandidate.rating[weekNum-1]);   
    }
    color c = color(255/i*.025, 255/i, 255/i*2);
    thisCandidate.render(c);
  } 
  
  
  

}

  


