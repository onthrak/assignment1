### almost :D,  sometimes doesnt work
corr <- function(directory, threshold = 0) {
        fi<-list.files(directory,full.names=T);
        dat<-lapply(fi,read.csv);
        dat2 <- lapply(dat, function(x) x[complete.cases(x),])
        id <- 1:332
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
        ok3 <- subset(ok2, nobs > threshold, select=id)
        ok4 <- c(t(ok3))
        dat3 <- dat2[c(ok4)]
        output2 <- vector()
        for (ii in 1:length(ok4)){
                output2[ii] <-  cor(dat3[[ii]][,2:3], use= "complete.obs")[1,2]
                
        }
        return(output2)
                  
}
        