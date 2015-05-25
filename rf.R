library(randomForest)
classifierf<-randomForest(data[,1:50], data[,51]) 
predictRf <- function(student) {
  return(round(predict(classifierf, student)))
}
