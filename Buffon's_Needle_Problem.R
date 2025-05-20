
buffon_pi <- function(N = 10000, l = 1, d = 1) {
  hits <- 0
  
  for (i in 1:N) {
    # ասեղի կենտրոնի հեռավորությունը մոտակա գծից՝ [0, d/2]
    y <- runif(1, 0, d / 2)
    
    # անկյունը՝ [0, pi/2]
    theta <- runif(1, 0, pi / 2)
    
    # կհատի, եթե l/2 * sin(theta) >= y
    if ((l / 2) * sin(theta) >= y) {
      hits <- hits + 1
    }
  }
  
  # եթե գոնե մեկ հատում եղել է
  if (hits == 0) {
    cat("Ոչ մի հատում չի գրանցվել։ Փորձիր ավելի մեծ N։\n")
    return(NULL)
  }
  
  # pi-ի մոտավոր արժեք
  pi_estimate <- (2 * l * N) / (d * hits)
  cat("Մոտավոր π =", pi_estimate, "\n")
  cat("Հատումների քանակը =", hits, "ընդհանուր", N,"-ից \n")
  
  return(pi_estimate)
}

# Հաշվենք  10000 փորձով
buffon_pi(N = 10000)
