lcg <- function(n) {
  a <- 5 ; c <- 3 ; m <- 16 ; x <- 7
  result <- numeric(n)
  for (i in 1:n) {
    x <- (a * x + c) %% m
    result[i] <- x / m  # Նորմալիզացված արժեք [0,1)
  }
  result
}

# Ստանում ենք նորմալիզացված LCG արժեքները
u_values <- lcg(20) 

# Վերականգնում ենք սկզբնական ամբողջ թվերը՝ x_n
lcg_raw <- u_values * 16
# lcg_raw

cat("LCG raw values (X_n):\n")
print(lcg_raw)
cat("\nNormalized LCG values (U_n = X_n / m):\n")
print(u_values)

# Rotate function (PCG-ի համար)
rotate_right <- function(n) {
  bits <- intToBits(n)[1:4]
  rotated <- c(bits[4], bits[1:3])
  sum(2^(which(rev(rotated) == 1) - 1))
}

# Գեներացնում ենք PCG արժեքները
pcg <- sapply(lcg_raw, rotate_right)
pcg_values <- pcg / 16  # Նորմալիզացված [0,1)
# pcg_values

cat("\nPCG raw values (after bit rotation):\n")
print(pcg)
cat("\nNormalized PCG values:\n")
print(pcg_values)

# վիզուալիզացիա
par(mfrow = c(1, 2))
hist(u_values, main = "Normalized LCG Values", col = "lightblue")
hist(pcg_values, main = "Normalized PCG Values", col = "lightgreen")
