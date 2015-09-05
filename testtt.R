getwd()
setwd("C:/Users/Anonymous/Desktop/R/R Programming/rprog-data-specdata/specdata")
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit

n <- 1:5
r <- NULL
for (i in seq (along=n)) {
        if (n[i] <3) {
                r <- c(r, n[i]-1)  
        } else {
                stop ("values shall be <3")
        }
}

o=1:10
id <- as.character(o)
id=1:10
gs1 <- function(id) {
        output <- vector()
        for(i in seq_along(id))  {
                output[i] <- length(dat2[[id[i]]][,4])
                
        }
        return(output)
}
foo <- gs1(id)
ok_com <- cbind(id,foo)
ok2 <-as.data.frame(ok_com)
print(ok2)

for (i in seq (along=nobs)) {
        if (nobs[i] > threshold) {
                r <- c(r, nobs[i])  
        } else {
                
        }
}
#######
dat2 <- lapply(dat, function(x) x[complete.cases(x),])
gs1 <- function(id) {
        output <- list()
        for(i in seq_along(id))  {
                if (length(dat2[[id[i]]][,4]) > threshold)
                output[i] <- lapply(dat, function(x) x[complete.cases(x),])
                else {
                        
                }       
        }
        return(output)
}




#############


gs2 <- function(ok5) {
        output2 <- data.frame()
        for(i in 1:length(ok5))  {
                output2[i] <- rbind(c(dat3[[ok5[i]]][,2:3]))
                
        }
        return(output2)
}
dat5 <-gs2(ok5)
dat3[[ok5[1]]][,2:3]



############


newdf1 <
        dat4[[2]]$sulfate
japi=rbind(c(dat4[[1]]$sulfate,dat4[[2]]$sulfate,dat4[[3]]$sulfate))
sapply(dat4)
japi2=gs2(okl)
