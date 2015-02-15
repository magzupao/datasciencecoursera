corr <- function(directory, id) {
		## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations
		filenames <- list.files(directory, pattern="*.csv")
		for(i in seq_along(id)) {
			nameFile <- paste(directory, filenames[i], sep = "/")
			contentFile <- read.csv(nameFile,head=TRUE,sep=",")
			x <- mean(contentFile$sulfate[!is.na(contentFile$sulfate)])
			y <- mean(contentFile$nitrate[!is.na(contentFile$nitrate)])
			valueCorrelation <- cor(y,x)			
			print(valueCorrelation)
		}
}
a <- corr("specdata", 1:10)
