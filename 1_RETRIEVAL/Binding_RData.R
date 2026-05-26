
#### Cleaning the environment ####
rm(list=ls())
gc()

library(tidyverse)

# Function to keep only the variables from the Rdata files
GET_RDATA=function(x) {
  load(file = x)
  get(ls()[!ls()%in%c("GET_RDATA","FILES","x")])
}

# Checking the files in the folder
FILES=list.files("~\\CAnD3_2026\\1_RETRIEVAL\\DATA_2015_2025\\")
FILES=paste0("~\\CAnD3_2026\\1_RETRIEVAL\\DATA_2015_2025\\",FILES)

# Turning the Rdata in the files into a list
mylist<- lapply(FILES, GET_RDATA)

# The file names is turned into the list's names
names(mylist) <- FILES

# Gluing all the dataframes into a single one
all <- do.call("rbind", mylist)

save(all,file = "TheGuardianAI_ALL.RData")

#### Saving Data in ASReview format ####

set.seed(123)

SAMPLE<-all%>%
  sample_n(10)%>%
  rename(abstract=webTitle,title=sectionName,url=webUrl)

write.csv(SAMPLE,"IntercoderSample.csv")

#### Back up Gold Standard ####

set.seed(983)

SAMPLE<-all%>%
  sample_n(30)%>%
  rename(abstract=webTitle,title=sectionName,url=webUrl)

write.csv(SAMPLE,"GoldStandard_BackUp.csv")



