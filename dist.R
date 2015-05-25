dist <- function(v,w) {
  sum <- 0
  for (i in 1:length(v)) {
    if (xor((v[i] == 0),w[i] == 0)) {
      sum <- sum + 10
    }
    else {
      sum <- sum + abs(v[i] - w[i])
    }
  }
  return(sum)
}
