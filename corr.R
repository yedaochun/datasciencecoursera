corr <- function(directory, threshold = 0) {
    files <- dir(directory)
    x <- paste(getwd(), "/", directory, "/", files, sep="")
    result <- numeric(0)
    i <- 1
      
    
    for( i in 1:length(files)){
        data <- read.csv(x[i])
        a <- sum(complete.cases(data))
        good <- data[complete.cases(data),]
        q <- good[2]
        w <- good[3]
        if(a > threshold){
            result <- c(result, cor(q,w))
            
        }
        
    
        
    }
    
    result
    
    
}
