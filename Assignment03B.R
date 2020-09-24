load("prrace08.rda")

n <- length(prrace08$el_votes)

obama_vote <- 0

mc_cain_vote <- 0

for(x in 1:n){
  if(prrace08$p_obama[x]>prrace08$p_mc_cain[x]){
    obama_vote <- obama_vote + prrace08$el_votes[x]
  } else{
    mc_cain_vote <- mc_cain_vote + prrace08$el_votes[x]}
  }
obama_vote <- obama_vote + 1

mc_cain_vote <- mc_cain_vote - 1

cat(paste("Obama:", obama_vote))

cat(paste("McCain:", mc_cain_vote))      
      
