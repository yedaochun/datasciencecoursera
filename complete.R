complete <- function(directory, id = 1:332)
{
    files <- dir(directory)
    
    i <- 1 
    vect1 <- numeric(0)
    vect2 <- numeric(0)
    vect1 <- c(vect1, id)
    
    for (i in 1:length(id)){
        x <- paste(getwd(), "/", directory, "/", files[id], sep="")
        data <- data.frame(read.csv(x[i]))
        a <- sum(complete.cases(data))
        vect2 <- c(vect2,a)
        
        i <- i+1
        
    }
    
    result <- data.frame(id=vect1, nobs=vect2) 
    result
}

