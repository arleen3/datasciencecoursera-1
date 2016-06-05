function(directory, pollutant, id = 1:332){
  # create numeric vector for mean Data
  meanData = numeric()
  
  # get files paths from directory
  files <- list.files(directory, full.names = TRUE)
  
  for (i in id){
    # read file(s) from id
    readFile = read.csv(files[i])
    # store data from pollutant for the mean calculation in meanData vector
    meanData <- c(meanData, readFile[[pollutant]])    
  }
  # return mean of meanData - removing NA values 
  return(mean(meanData, na.rm = TRUE))
}