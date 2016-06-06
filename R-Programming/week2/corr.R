function(directory, threshold = 0){
  
  corr = numeric()
  
  # get files paths from directory
  allfiles <-  complete(directory, 1:332)
  nobs <- allfiles$nobs
  # find the valid ids
  ids <- allfiles$id[nobs > threshold]
  
  files <- list.files(directory, full.names = TRUE)
  
  for (i in ids){
    # read file(s) from id
    readFile = read.csv(files[i])   
    dff = readFile[complete.cases(readFile), ]
    corr = c(corr, cor(dff$sulfate, dff$nitrate))
  }
  
  return(corr)
  
  
  
}
