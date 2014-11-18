pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
}

pollutantmean <- function(directory, pollutant, id = 1:332) {
        directory<-as.character(directory)
        pollutant<-as.character(pollutant)
        id<-as.integer(id)
        pdata1<-c()
        
        for (i in seq_along(id)) {
                pdata2 <- read.csv(paste(directory, "./", formatC(i,flag = "0" ,width = 3 ), pattern=".csv", sep = ""))
                pdata1 <- c(pdata1, pdata2[[pollutant]])
        }
        mean(na.omit(pdata1))
}
