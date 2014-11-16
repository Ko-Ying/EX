setwd("C:/Users/Ko-Ying/Desktop")
pollutantmean <- function(directory, pollutant, id = 1:332) {
id <- as.integer(id)
pollutant <- as.character(pollutant)
pdata <- c()
	for(i in id){
		MyData <- sprintf("%03d.csv",id)
		MyData <- paste(directory,MyData[i],sep="/")
		pdata2 <- read.csv(MyData,header=T)
		pdata <- rbind(pdata,pdata2)
		}
	mean(pdata[,pollutant],na.rm=T)
}
