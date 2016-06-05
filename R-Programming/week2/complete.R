function(directory, id = 1:332){
  nobs = numeric()
  files <- list.files(directory, full.names = TRUE)
  
  for (i in id) {
    
    readFile = read.csv(files[i])
    nobs = c(nobs, sum(complete.cases(readFile)))
  }
  
  return(data.frame(id, nobs))
}
