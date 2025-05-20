N <- 100000

# Գեներացնում ենք N պատահական x և y կոորդինատներ [0,1] միջակայքում
x_coords <- runif(N) 
y_coords <- runif(N)

# Ստուգում ենք, թե որ կետերն են ընկնում միավոր շրջանի առաջին քառորդի մեջ
inside_quarter_circle <- (x_coords^2 + y_coords^2) <= 1

# Հաշվում ենք շրջանի քառորդի ներսում ընկած կետերի քանակը
N_inside <- sum(inside_quarter_circle)

# Գնահատում ենք քառորդի մակերեսը
area_estimate <- N_inside / N

# Գնահատում ենք pi-ն
pi_estimate_from_area <- 4 * area_estimate

print(paste("Միավոր շրջանի քառորդի գնահատված մակերեսը:", area_estimate))
print(paste("Pi-ի գնահատված արժեքը (մակերեսից):", pi_estimate_from_area))