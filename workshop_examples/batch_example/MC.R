## Run Monte Carlo simulations to approximate the value of pi 
runs <-40000000
within_circle <- 0
for (x in 1:runs){
    #runif samples from a uniform distribution
    xs <- runif(1)
    ys <- runif(1)
    distance <- xs^2 + ys^2
    if (distance <= 1.0) {
	within_circle <- within_circle +1 
    }
    pi_estimate <- (sum(within_circle)/x)*4
}
print(paste("MC Approximation of Pi =",pi_estimate))

