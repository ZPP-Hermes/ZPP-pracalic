recomNearestSub <- function(k, student) {
  n <- dim(data)[1]
  A <- matrix(0,n,2)
  for (i in 1:n) {
    A[i,1] <- dist(student,data[i,])
    A[i,2] <- i
  }
  bestNb <- A[order(A[,1])[1:k],2]
  studNotChosen <- which(student == 0)
  recom <- c()
  for (i in 1:length(bestNb)) {
    nbSub <- which(data[bestNb[i],31:50] > 0)
    recom <- unique(c(recom, nbSub[nbSub %in% studNotChosen]))
  }
  return(recom)
}
