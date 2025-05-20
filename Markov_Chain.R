states <- c("Արևոտ", "Ամպամած")

# Տրանսֆորմացիոն մատրիցա
transition_matrix <- matrix(c(0.8, 0.2,
                              0.4, 0.6),
                            nrow = 2, byrow = TRUE)
transition_matrix
rownames(transition_matrix) <- states
colnames(transition_matrix) <- states

# Սկզբնական վիճակ
current_state <- "Արևոտ"

# Քայլերի քանակ
n_steps <- 20

results <- character(n_steps)
results[1] <- current_state

# Սիմուլյացիա
for (i in 2:n_steps) {
  probs <- transition_matrix[current_state, ]
  current_state <- sample(states, size = 1, prob = probs)
  results[i] <- current_state
}

print(results)
table(results)
