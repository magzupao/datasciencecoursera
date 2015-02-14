x<-hola
x<-'hola'
x
y<-'hello coursera 23/01/2015'
y
complete <- function(directory, id = 1:332) {
idName <- vector(mode="character", length=lemgth(id))
print(idName)
}
complete
a <- complete(specdata, 1:332)
id <- 1:332
a <- complete(specdata, id)
complete <- function(directory, id) {
idName <- vector(mode="character", length=length(id))
print(idName)
}
c <- 1:332
a <- complete(specdata, c)
ls -l
list.dirs(path = ".", full.names = TRUE, recursive = TRUE)
list.dirs(path = "specdata", full.names = TRUE, recursive = TRUE)
getwd()
setwd("/home/magzupao/repoCoursera/datasciencecoursera")
setwd("/home/magzupao/reporCoursera/datasciencecoursera")
list.dirs(path = ".", full.names = TRUE, recursive = TRUE)
list.dirs(path = "specdata", full.names = TRUE, recursive = TRUE)
list.dirs(path = "/specdata", full.names = TRUE, recursive = TRUE)
files <- list.dirs(path = "specdata", full.names = TRUE, recursive = TRUE)
files
filenames <- list.files("specdata", pattern="*.csv")
filenames
filenames <- list.files("specdata", pattern="*.csv")
filenames[12]
complete <- function(directory, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
print(filenames[i])
}
}
a <- complete("specdata",1:332)
complete <- function(directory, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
contenido <- read.csv(file=filenames[i],head=TRUE,sep=",")
print(contenido)
}
}
a <- complete("specdata",1:332)
complete <- function(directory, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
nombreFile = filenames[i]
contenido <- read.csv(nombreFile,head=TRUE,sep=",")
print(contenido)
}
}
a <- complete("specdata",1:332)
heisenberg <- read.csv(file="specdata/001.csv",head=TRUE,sep=",")
heisenberg
heisenberg <- read.csv(file="001.csv",head=TRUE,sep=",")
complete <- function(directory, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
nombreFile = directory + "/" + filenames[i]
contenido <- read.csv(nombreFile,head=TRUE,sep=",")
print(contenido)
}
}
a <- complete("specdata", 1:332)
paste("1st", "2nd", "3rd", sep = ", ")
d <- paste("1st", "2nd", "3rd", sep = "")
d
complete <- function(directory, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
nombreFile <- paste(directory, filenames[i], sep = "/")
contenido <- read.csv(nombreFile,head=TRUE,sep=",")
print(contenido)
}
}
a <- complete("specdata", 1:332)
a <- complete("specdata", 1:10)
a <- complete("specdata", 1)
c <- 1:10
mean(c)
contenido <- read.csv("specdata/001.csv",head=TRUE,sep=",")
contenido
mean(contenido$sulfate)
mean(contenido$sulfate[!is.na(contenido$sulfate)])
complete <- function(directory, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
nombreFile <- paste(directory, filenames[i], sep = "/")
contenido <- read.csv(nombreFile,head=TRUE,sep=",")
media <- mean(contenido$sulfate[!is.na(contenido$sulfate)])
print(contenido)
}
}
a <- complete("specdata", 1)
complete <- function(directory, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
nombreFile <- paste(directory, filenames[i], sep = "/")
contenido <- read.csv(nombreFile,head=TRUE,sep=",")
media <- mean(contenido$sulfate[!is.na(contenido$sulfate)])
print(media)
}
}
a <- complete("specdata", 1)
complete <- function(directory, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
nameFile <- paste(directory, filenames[i], sep = "/")
contentFile <- read.csv(nameFile,head=TRUE,sep=",")
meanFile <- mean(contentFile$sulfate[!is.na(contentFile$sulfate)])
print(meanFile)
}
}
a <- complete("specdata", 1)
complete <- function(directory, pollutant, id) {
filenames <- list.files(directory, pattern="*.csv")
for(i in seq_along(id)) {
nameFile <- paste(directory, filenames[i], sep = "/")
contentFile <- read.csv(nameFile,head=TRUE,sep=",")
if(pollutant == "sulfate"){
meanFile <- mean(contentFile$sulfate[!is.na(contentFile$sulfate)])
}
print(meanFile)
}
}
a <- complete("specdata", "sulfate", 1)
a <- complete("specdata", "sulfatesss", 1)
complete <- function(directory, pollutant, id) {
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
a <- complete("specdata", "sulfate", 1:10)
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
quit
quit()
