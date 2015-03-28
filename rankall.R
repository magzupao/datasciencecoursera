rankall <- function(outcome, num = "best") {
	
	## read file
	data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
	
	## Check outcome
	validOutcome = c("heart attack","heart failure","pneumonia")
	if (!outcome %in% validOutcome) { 
		stop("invalid outcome")
	}
	
	## load state
	validState = sort(unique(data[,7]))
	
	if (outcome == "heart attack") {
		data_column <- 11	## Column name = Hospital 30-Day Death (Mortality) Rates from Heart Attack
	}
	else if (outcome == "heart failure") {
		data_column <- 17	## Column name = Hospital 30-Day Death (Mortality) Rates from Heart Failure
	}
	else if (outcome == "pneumonia") {
		data_column <- 23	## Column name = Hospital 30-Day Death (Mortality) Rates from Pneumonia
	}else{
		stop("invalid state")
	}
	
	hospital<-character(0)
	
	for (i in seq_along(validState)) {
		## Return hospital name in that state with the given rank 30-day death rate
		newdata <- data[data$State==validState[i],]
		# order data by outcome
		newdatasorted <- newdata[order(suppressWarnings(as.numeric(newdata[,data_column])),newdata[["Hospital.Name"]],decreasing=FALSE,na.last=NA), ]
		#handle num input
		this.num = num
		if (this.num=="best"){
			this.num = 1
		}
		if (this.num=='worst'){
			this.num = nrow(newdatasorted)
		}
		hospital[i] <- newdatasorted[this.num,"Hospital.Name"]
	}
	## Return a data frame with the hospital names and the (abbreviated) state name
	data.frame(hospital=hospital,state=validState,row.names=validState)	

}
