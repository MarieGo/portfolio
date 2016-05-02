
library(ggplot2)

name <- "YAHOO/INDEX_GSPC"
data_series <- list[[name]]
print(class(data_series))

my.plot <- ggplot(data=data_series, aes(x=Date, y=Close)) +
  geom_line(color="#FAB521") + # Adding a colored line
            theme(panel.background = element_rect(fill="#393939"), panel.grid.major.x = element_blank(),
                                                  panel.grid.major.y = element_line(colour="white", size=0.1),
                                                  panel.grid.minor = element_line(colour="white", size=0.1)) + 
                    # modifying background color
                    # and grid options
                    xlab("Date") + ylab("Closing Price") + ggtitle(name)# Adding titles
                  my.plot # Generates the plot 
                  print(my.plot)
                  
                  
                  
                  