g <- function(x) {
  return(x^2)
}

a <- 0
b <- 1

N_integral <- 1000000000

# Քայլ 1: Գեներացնում ենք N պատահական x_i կետեր [a,b] միջակայքում

x_values <- runif(N_integral, min = a, max = b)

# Քայլ 2: Հաշվում ենք g(x_i) արժեքները յուրաքանչյուր կետի համար

g_x_values <- g(x_values)

# Քայլ 3: Հաշվում ենք g(x_i) արժեքների գումարը
sum_g_x_values <- sum(g_x_values)

# Քայլ 4: Հաշվում ենք ինտեգրալի մոտավոր արժեքը

integral_estimate_mc <- (b - a) * (1 / N_integral) * sum_g_x_values

print(integral_estimate_mc)
