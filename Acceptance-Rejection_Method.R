n_samples <- 10000

# դատարկ վեկտոր
accepted <- numeric(0)

while (length(accepted) < n_samples) {
  x <- runif(1)              # Նմուշ g(x)-ից՝ Uniform(0,1)
  u <- runif(1)              # u ∼ Uniform(0,1)
  if (u <= x) {              # f(x)/(c·g(x)) = 2x / 2 = x
    accepted <- c(accepted, x)
  }
}

# ստացված բաշխման համար գծում ենք հիստոգրամը 
hist(accepted, breaks = 50, probability = TRUE,
     main = "Նմուշներ f(x) = 2x բաշխումից (AR մեթոդ)",
     xlab = "x", col = "skyblue", border = "white")

# գծում ենք իրական f(x) = 2x ֆունկցիան
curve(2 * x, from = 0, to = 1, col = "red", lwd = 2, add = TRUE)
legend("topright", legend = c("Նմուշներ", "f(x) = 2x"),
       fill = c("skyblue", NA), border = c("white", NA),
       lty = c(NA, 1), col = c(NA, "red"), lwd = c(NA, 2))
