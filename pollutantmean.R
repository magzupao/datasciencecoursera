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
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
nameFile <- paste(directory, filenames[i], sep = "/")
contentFile <- read.csv(nameFile,head=TRUE,sep=",")
if(pollutant == "sulfate"){
meanFile <- mean(contentFile$sulfate[!is.na(contentFile$sulfate)])
}else{
meanFile <- mean(contentFile$nitrate[!is.na(contentFile$nitrate)])
}
print(meanFile)
}
}
rspta <- complete("specdata", "sulfate", 1:10)

