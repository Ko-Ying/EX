setwd("C:/Users/Ko-Ying/Desktop")
complete <- function(directory, id = 1:332) {

id <- as.integer(id)
for(i in id) {
   	MyData <- sprintf("%03d.csv",id)
		MyData <- paste(directory,MyData[i],sep="/")
		pdata2 <- read.csv(MyData,header=T)
		pdata <- rbind(pdata,pdata2)
		id <- c(id, i)
		MyDataCases <- data[complete.cases(data),]
    counts <- c(counts, nrow(MyDataCases))
		}
