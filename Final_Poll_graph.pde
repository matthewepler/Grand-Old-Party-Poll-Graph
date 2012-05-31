String[] allData;
String[] pollDates;
HashMap<String, Candidate> candidateHash = new HashMap();
int totalWeeks = 17;
PVector previousPV = new PVector();
PVector thisPV = new PVector();

void setup(){
  size(1000,550);
  background(155);
  smooth();
  colorMode(HSB);
  
  allData = loadStrings("polls2.csv");
  pollDates = loadStrings("poll_dates.txt");
  
  String[] names = split(allData[0], ",");
  for(int i = 8; i > 0; i--){
    float segment = width/9;
    Candidate thisCandidate = new Candidate();
    thisCandidate.name = names[i];
    thisCandidate.candNum = i;
    candidateHash.put(thisCandidate.name, thisCandidate);  
    for(int j = 1; j <= totalWeeks; j++){
      // remember the week# and rating# for this row
      String[] thisWeek = split(allData[j], ",");
      int weekNum = int(thisWeek[0]);
      thisCandidate.rating[weekNum-1] = int(thisWeek[i]);
     // println(thisCandidate.name + ": " + "week " + weekNum + "= " + thisCandidate.rating[weekNum-1]);   
    }
    color c = color(255-(i*40), 255, 255);
    thisCandidate.render(c);
    noStroke();
   fill(255-(i*40), 255, 255);
   rect(segment*i, 495, 10, 10);
   fill(255);
   String thisName = thisCandidate.name;
   text(thisCandidate.name, segment*i-(thisName.length()*5.5/2), 520);
  } 
  
  Candidate dateCandidate = candidateHash.get("Santorum");
  for(int i=0; i<dateCandidate.rating.length; i++){
   text(pollDates[i], dateCandidate.segment*i, 25); 
  }
  
   
save("polls_Apr1");
}

  


