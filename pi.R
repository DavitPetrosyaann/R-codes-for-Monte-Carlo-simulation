a_param <- 1.0  # Քառակուսու կողմը և նաև շրջանի շառավիղը
N_total_in_T <- 2000000 # T տիրույթի մեջ նետվող "գնդակների" քանակը

# Ենթադրենք քառակուսու ներքևի ձախ անկյունը (0,0)-ում է։
sq_x_min <- 0
sq_x_max <- a_param 
sq_y_min <- 0
sq_y_max <- a_param

# Շրջանի երկրաչափական պարամետրերը
# Տեղադրենք այն քառակուսուց աջ, առանց հատման
# Օրինակ, շրջանի կենտրոնը (a_param + a_param + 0.1, a_param / 2) կետում, որպեսզի փոքր բացատ լինի
circ_center_x <- a_param + a_param + 0.1 
circ_center_y <- a_param / 2
circ_radius <- a_param

# T տիրույթի (պարփակող ուղղանկյան) սահմանները
# Այս տիրույթը պետք է պարունակի և՛ քառակուսին, և՛ շրջանը
rect_T_x_min <- 0
rect_T_x_max <- circ_center_x + circ_radius
rect_T_y_min <- min(sq_y_min, circ_center_y - circ_radius) 
rect_T_y_max <- max(sq_y_max, circ_center_y + circ_radius)

# N_total_in_T թվով պատահական կետերի գեներացում T տիրույթի մեջ
rand_x_T <- runif(N_total_in_T, min = rect_T_x_min, max = rect_T_x_max)
rand_y_T <- runif(N_total_in_T, min = rect_T_y_min, max = rect_T_y_max)

# Հաշվում ենք, թե քանի "գնդակ" է ընկել քառակուսու մեջ (N_քառ)
in_square_mask <- (rand_x_T >= sq_x_min & rand_x_T <= sq_x_max &
                     rand_y_T >= sq_y_min & rand_y_T <= sq_y_max)
N_qarr <- sum(in_square_mask)

# Հաշվում ենք, թե քանի "գնդակ" է ընկել շրջանի մեջ (N_շրջ)
in_circle_mask <- ((rand_x_T - circ_center_x)^2 + (rand_y_T - circ_center_y)^2) <= circ_radius^2
N_shrj <- sum(in_circle_mask)

# Pi-ի գնահատում (π ≈ N_շրջ / N_քառ)
if (N_qarr > 0) { # Խուսափել զրոյի վրա բաժանումից
  pi_estimate <- N_shrj / N_qarr
} else {
  pi_estimate <- NA 
}

print(paste("a պարամետրի արժեքը:", a_param))
print(paste("T տիրույթում նետված գնդակների քանակը (N_total_in_T):", N_total_in_T))
print(paste("Քառակուսու մեջ ընկած գնդակներ (N):", N_qarr))
print(paste("Շրջանի մեջ ընկած գնդակներ (N_շրջ):", N_shrj))

if (!is.na(pi_estimate)) {
  print(paste("Pi-ի գնահատված արժեքը (N_շրջ / N):", pi_estimate))
} else {
  print("Pi-ն հնարավոր չէ գնահատել, քանի որ N = 0")
}
print(paste("Pi-ի իրական արժեքը (R-ի ներկառուցված):", pi))