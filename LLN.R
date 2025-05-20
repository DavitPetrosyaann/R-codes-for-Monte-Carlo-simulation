set.seed(123) 
n <- 10000  
samples <- runif(n, min = 0, max = 1) 
running_mean <- cumsum(samples) / (1:n)

plot(running_mean, type = "l", col = "blue", lwd = 2,
     main = "Մեծ թվերի օրենքի ցուցադրում",
     xlab = "Նմուշների քանակը", ylab = "Գումարային միջին")
abline(h = 0.5, col = "red", lty = 2)  # theoretical mean

# legend("topright", legend = c("Գումարային միջին", "Տեսական միջին"),
#        col = c("blue", "red"), lty = c(1, 2))
