lcg_values  <- c()
lcg <- function(n) {
  a <- 5 ; c <- 3 ; m <- 16 ; x <- 7
  result <- numeric(n)
  for (i in 1:n) {
    x <- (a * x + c) %% m
    result[i] <- x
  }
  result
}
lcg_values  <- c(lcg(1000))
rotate_right <- function(n) {
  bits <- intToBits(n)[1:4]
  rotated <- c(bits[4], bits[1:3])
  sum(2^(which(rev(rotated) == 1) - 1))
}
pcg <- sapply(lcg_values, rotate_right)
pcg_values <- c(pcg)
par(mfrow = c(1, 2))
hist(pcg_values, main = "Histogram of pcg_values")
hist(lcg_values, main = "Histogram of lcg_values")



set.seed(1)
n <- 10000
samples <- rexp(n, rate = 2)
mean(samples)

