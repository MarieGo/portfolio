library(Quandl)
library(quantmod)
library(dplyr)
library(lubridate)



asset = "YAHOO/INDEX_GSPC"
share_at_beginning = 0.2
max_vola = 5

allocation <- function(asset, vola_percentage){
  
  #list<-lapply(list, subset(list, select="Date"))
  new_list <- lapply(list, '[', c("Date", "Open"))
  new_list <- lapply(list,function(x) select(x,Open, Date))
  #combine dataframes
  data <- do.call("cbind", new_list)
 
  
  
  share = share_at_beginning
  data <- mutate(data, share = share, actual_vola = data[,3]*share)
  data[,2]<-ymd(data[,2])
  #as.zoo(data)
  
  return(data)
}

data <- allocation()