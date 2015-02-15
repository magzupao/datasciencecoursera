complete  <- function(directory, id) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
	filenames <- list.files(directory, pattern="*.csv")
		vectorIdFile <- numeric(0)
		vectorAllLines <- numeric(0)
		for(i in seq_along(id)) {
			nameFile <- paste(directory, filenames[i], sep = "/")
			numberAllLines <- length(readLines(nameFile)) 
			vectorIdFile <- append(vectorIdFile, i, after=length(vectorIdFile))
			vectorAllLines <- append(vectorAllLines, numberAllLines, after=length(vectorAllLines))			
		}
		rspta <- data.frame(ids = vectorIdFile, nobs = vectorAllLines) 
		print(rspta)
}
#a <- complete ("specdata", 1:10)
