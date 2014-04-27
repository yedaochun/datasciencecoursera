pollutantmean <- function(directory, pollutant, id = 1:332)
{
    t <- formatC(id, digits=2, flag="0")
    x <- paste(getwd(), "/", directory, "/", t, ".csv", sep="")
    i <- 1 
    m <- 0
    n <- 0
    for (i in 1:length(id)){
                
        data <- data.frame(read.csv(x[i]))
        h <- data[pollutant]
        n <- n + sum(h[!is.na(h)])
        m <- m + sum(!is.na(h))
        
        i<- i+1
    }
    
    n/m
}
