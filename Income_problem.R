mu <- 500000     
sigma <- 100000    
n_simulations <- 1000
sample_size <- 30

sample_means <- numeric(n_simulations)

set.seed(111)  

for (i in 1:n_simulations) {
  sample <- rnorm(sample_size, mean = mu, sd = sigma)
  sample_means[i] <- mean(sample)
}

estimated_mu <- mean(sample_means)
std_of_means <- sd(sample_means)