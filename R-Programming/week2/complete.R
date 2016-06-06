function(directory, id = 1:332){
  # create numeric vector for nobs Data
  nobs = numeric()
  # get files paths from directory
  files <- list.files(directory, full.names = TRUE)
  
  for (i in id) {
    # read file(s) from id
    readFile = read.csv(files[i])
    nobs = c(nobs, sum(complete.cases(readFile)))
  }
  # return mean Data frame 
  return(data.frame(id, nobs))
}