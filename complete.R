## done 
complete <- function(directory, id = 1:332) {
        fi<-list.files(directory,full.names=T);
        dat<-lapply(fi,read.csv);
        dat2 <- lapply(dat, function(x) x[complete.cases(x),])
        gs1 <- function(id) {
                output <- vector()
                for(i in seq_along(id))  {
                        output[i] <- length(dat2[[id[i]]][,4])
                        
                }
                return(output)
        }
        nobs <- gs1(id)
        ok_com <- cbind(id,nobs)
        ok2 <-as.data.frame(ok_com)
        print(ok2)
        
}