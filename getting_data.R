library(Quandl)
library(quantmod)
library(dplyr)


#Eurostoxx "YAHOO/INDEX_STOXX50E"
#S&P "YAHOO/INDEX_GSPC"
#S&P Volatility Index "YAHOO/INDEX_VIX"

readdata <- function() {
  
  #Authenticate in Quandl
  
  API <- "YourAPI"
  Quandl.api_key(API)
  
  # Choose instruments to import
  instruments <- c("YAHOO/INDEX_GSPC", "YAHOO/INDEX_VIX")
  
  mylist <- vector("list", length(instruments))
  names(mylist) <- instruments
  
  # Loop over instruments
  for (i in instruments) {
    # Read data
    temp <- Quandl(i, start_date="2001-12-31")
    # Find listindex
    j <- match(i,instruments)
    
    # Write dataframe in list
    mylist[[j]] <- temp
    
  }
  return(mylist)
  
}



list<-readdata()




