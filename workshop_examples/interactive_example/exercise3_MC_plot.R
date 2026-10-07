library(graphics)

# 1. Configuration variables
total_sims <- 30000
delay_seconds <- 0.1
n_frames <- 20.0

x_coords <- numeric()
y_coords <- numeric()
refresh_interval <- total_sims / n_frames
within_circle <- 0

# Pre-calculate coordinate
theta <- seq(0, 2 * pi, length.out = 200)
circle_x <- cos(theta)
circle_y <- sin(theta)

# ----------------------------------------------------
# INITIAL VISUAL STANDBY (Outside the Loop)
# ----------------------------------------------------
cat("Initializing plot canvas window...\n")

# pty = "s" forces both plots to be physically square boxes
par(mfrow = c(1, 2), oma = c(0, 0, 3, 0), pty = "s")

# Pre-render Panel 1 canvas skeleton
plot(NULL, xlim = c(0, 1), ylim = c(0, 1), 
     xaxt = "n", yaxt = "n", asp = 1,
     xlab = "X", ylab = "Y")
axis(1, at = c(0, 0.5, 1.0))
axis(2, at = c(0, 0.5, 1.0))
polygon(circle_x, circle_y, col = rgb(0.8, 0.95, 0.8, alpha = 0.5), border = "black", lwd = 1)

# Pre-render Panel 2 canvas skeleton
plot(NULL, xlim = c(0.65, 0.75), ylim = c(0.65, 0.75), 
     xaxt = "n", yaxt = "n", asp = 1,
     xlab = "X Zoomed", ylab = "Y Zoomed")
axis(1, at = c(0.65, 0.7, 0.75))
axis(2, at = c(0.65, 0.7, 0.75))
polygon(circle_x, circle_y, col = rgb(0.8, 0.95, 0.8, alpha = 0.5), border = "black", lwd = 1)

# Render initial title frame
title("Counts: 0 / 100000 ; Pi estimate : 0.000000", outer = TRUE, cex.main = 1.3, line = 1)

# Force a 2-second demo pause to show canvas setup
Sys.sleep(2.0)

# ----------------------------------------------------
# 2. Main Simulation Loop
# ----------------------------------------------------
cat("Starting Monte Carlo simulation streaming...\n")

x_coords <- numeric(total_sims)
y_coords <- numeric(total_sims)

for (x in 1:total_sims) {
  xs <- runif(1, 0)
  ys <- runif(1, 0)
  x_coords[x] <- xs; y_coords[x] <- ys
  
  distance <- xs^2 + ys^2
  if (distance <= 1.0) {
      within_circle <- within_circle + 1
  }
  
  # Redraw the plots every 1% of simulations
  if (x %% refresh_interval == 0 || x == total_sims) {
    
    pi_estimate <- (within_circle / x) * 4
    header_text <- sprintf("Counts: %d / %d ; Pi estimate : %8.6f", 
                           x, total_sims, pi_estimate)
    
    idx <- seq_len(x)
    is_inside <- (x_coords[idx]^2 + y_coords[idx]^2) <= 1
    point_shapes <- ifelse(is_inside, 3, 20)
    point_colors <- ifelse(is_inside, "black", "lightgray")

    # Must re-apply pty = "s" whenever par() is reset inside the loop
    par(mfrow = c(1, 2), oma = c(0, 0, 3, 0), pty = "s")
    
    # PANEL 1 Update
    plot(NULL, xlim = c(0, 1), ylim = c(0, 1), 
         xaxt = "n", yaxt = "n", asp = 1,
         xlab = "X", ylab = "Y")
    axis(1, at = c(0, 0.5, 1.0))
    axis(2, at = c(0, 0.5, 1.0))
    polygon(circle_x, circle_y, col = rgb(0.8, 0.95, 0.8, alpha = 0.5), border = "black", lwd = 1)
    points(x_coords[1:x], y_coords[1:x], col = point_colors, pch = point_shapes, cex = 0.4)
    
    # PANEL 2 Update
    plot(NULL, xlim = c(0.65, 0.75), ylim = c(0.65, 0.75), 
         xaxt = "n", yaxt = "n", asp = 1,
         xlab = "X Zoomed", ylab = "Y Zoomed")
    axis(1, at = c(0.65, 0.7, 0.75))
    axis(2, at = c(0.65, 0.7, 0.75))
    polygon(circle_x, circle_y, col = rgb(0.8, 0.95, 0.8, alpha = 0.5), border = "black", lwd = 1)
    points(x_coords[1:x], y_coords[1:x], col = point_colors, pch = point_shapes, cex = 0.4)
    
    # Shared Title Update
    title(header_text, outer = TRUE, cex.main = 1.3, line = 1)
    
    Sys.sleep(delay_seconds) 
  }
}

cat("Estimation complete.\n")
