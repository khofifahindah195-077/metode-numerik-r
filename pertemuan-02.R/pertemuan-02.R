f <- function(x) x^2
x <- 2
actual <- 4

h_values <- c(0.5, 0.1, 0.01, 0.001)

for (h in h_values) {
  forward <- (f(x + h) - f(x)) / h
  backward <- (f(x) - f(x - h)) / h
  central <- (f(x + h) - f(x - h)) / (2 * h)
  
  cat("h =", h, 
      " | forward error =", abs(forward - actual),
      " | backward error =", abs(backward - actual),
      " | central error =", abs(central - actual), "\n")
}
