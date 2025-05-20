# This is for Normal Distribution

set.seed(111)
n_sim <- 10000       
sample_size <- 100 
means <- numeric(n_sim)

for (i in 1:n_sim) {
  sample <- rnorm(sample_size, mean = 70, sd = 10)
  means[i] <- mean(sample)
}

CI <- quantile(means, probs = c(0.025, 0.975))
print(CI)