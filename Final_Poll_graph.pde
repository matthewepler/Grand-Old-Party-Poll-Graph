String[] allData;
HashMap<String, Candidate> candidateHash = new HashMap();
int totalWeeks = 15;

void setup(){
  size(800,400);
  background(0);
  smooth();
  
  allData = loadStrings("polls.csv");
  
  String[] names = split(allData[0], ",");
  for(int i = 1; i < 8; i++){
    Candidate thisCandidate = new Candidate();
    thisCandidate.name = names[i];
    candidateHash.put(thisCandidate.name, thisCandidate);     
  } 
  

}

  


