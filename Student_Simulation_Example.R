n <- 10          
mu <- 70              
sd <- 10             
limit <- 90           
simulations <- 10000  


successes <- 0


for (i in 1:simulations) {
  scores <- rnorm(n, mean = mu, sd = sd)  # գեներացնում ենք 10 միավոր
  if (any(scores >= limit)) {
    successes <- successes + 1   }
}


probability <- successes / simulations
cat("Գնահատված հավանականություն՝", probability, "\n")