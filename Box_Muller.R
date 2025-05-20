box_muller <- function() {
  u1 <- runif(1)
  u2 <- runif(1)
  
  z0 <- sqrt(-2 * log(u1)) * cos(2 * pi * u2)
  z1 <- sqrt(-2 * log(u1)) * sin(2 * pi * u2)
  
  return(c(z0, z1))  # Երկու նորմալ բաշխված արժեք
}

# Օրինակ՝ 10 նորմալ պատահական թիվ
samples <- replicate(5, box_muller())
samples <- as.vector(samples)
print(samples)
