set.seed(111)
n_sim <- 10000      
sample_size <- 30    
true_mean <- 75    
null_mean <- 70      

sample_means <- numeric(n_sim)

for (i in 1:n_sim) {
  sample <- rnorm(sample_size, mean = true_mean, sd = 10)
  sample_means[i] <- mean(sample)
}

p_value <- mean(sample_means > null_mean)
print(paste("P-value:", p_value))