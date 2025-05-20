set.seed(456)  

n <- 100       
k <- 1000      
means <- numeric(k)

for (i in 1:k) {
  sample_i <- runif(n)
  means[i] <- mean(sample_i)
}

hist(means, breaks = 30, probability = TRUE,
     main = "Կենտրոնական սահմանային թեորեմի ցուցադրում",
     xlab = "Նմուշային միջիններ", col = "lightblue", border = "white")

curve(dnorm(x, mean = 0.5, sd = sqrt(1/12/n)), add = TRUE, col = "red", lwd = 2)
# legend("topright", legend = c("Նմուշային միջինների հիստոգրամ", "Նորմալ մոտեցում"),
#        col = c("lightblue", "red"), lty = c(NA, 1), lwd = c(NA, 2), fill = c("lightblue", NA))
