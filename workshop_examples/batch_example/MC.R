# Run Monte Carlo simulations to approximate the value of pi 
runs <-120000000
within_circle <- 0

message(sprintf("Percent complete: "))

for (x in 1:runs){
    #runif samples from a uniform distribution
    xs <- runif(1)
    ys <- runif(1)
    distance <- xs^2 + ys^2
    if (distance <= 1.0) {
	within_circle <- within_circle +1 
    }
    pi_estimate <- (sum(within_circle)/x)*4

    if(x %% (runs/1000) == 0) {
        cat(".")
    }
    if(x %% (runs/100) == 0) {
        cat(sprintf("%3.f\n", 100*x/runs))
    }
}
print(paste("MC Approximation of Pi =",pi_estimate))

