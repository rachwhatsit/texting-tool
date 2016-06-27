rm(list=ls())
setwd("/Users/rachel_wilkerson/Box Sync/RLW THI Projects/texting tool/")
df<-read.csv("Texas Full Texting Report.csv",stringsAsFactors = F,strip.white = T)

colnames(df)
library(ggmap)

#plot the calls coming in over the whole summer
ggmap(get_map('texas', zoom = 6, maptype = 'roadmap',color = "bw")) +
  geom_point(aes(x = longitude, y = latitude), data = df, alpha=.4,color="orange", size = .3)

#plot the calls coming in for a day. disregard time
df$date=as.character(lapply(strsplit(x = df$created_at, split = " "),head,n=1))
df$Date=as.Date(df$date, format="%m/%d/%y")

library(animation)
saveGIF({
  for (i in 1:length(unique(df$Date))) {
    p<-ggmap(get_map('texas', zoom = 6, maptype = 'roadmap',color = "bw")) 
    p<- p + geom_point(aes(x = longitude, y = latitude), data = subset(df, df$Date==unique(df$Date)[i]), alpha=.3,color="orange", size = 5)
    p<- p+ggtitle(unique(df$Date)[i])
    print(p)
  }
})


