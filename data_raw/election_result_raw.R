library(tidyverse)
library(readxl)

election_data <- read_excel("presidentialdata.xlsx")

test <- election_data[1]

test <- separate(election_data[1], 'province_id|"province"|"clcr_id"|"clcr"|"circonscription_id"|"circonscription"|"siege"|"site_vote_id"|"nom_sv"|"adresse_sv"|"bv_prevus"|"bv_traites"|"electeurs_attendus"|"votants"|"candidat_id"|"voix"', 
           into= c("province_id","province","clcr_id","clcr","circonscription_id",
  "circonscription","siege","site_vote_id","nom_sv","adresse_sv","bv_prevus","bv_traites",
  "electeurs_attendus","votants","candidat_id","voix", sep= " "))

election_data
test
