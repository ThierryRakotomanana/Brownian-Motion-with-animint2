
brownian_anim <- function() {
  #ani.options(interval = 0.05, nmax = 150)
   # change this code before because it doesn't run
  x <- y <- rep(0, 10)
  dat <- data.frame(x, y)
   # nolint: trailing_whitespace_linter.
  make_brownian_step <- function(x, y) {
    x <- x + rnorm(1)
    y <- y + rnorm(1)
    return(data.frame(x, y))
  }
  
  make_brownian_path <- function(i) {
    dat <<- rbind(dat, make_brownian_step(dat$x[i], dat$y[i]))
    return(dat)
  }
  
  ggplot2::ggplot(dat, ggplot2::aes(x, y)) + 
    ggplot2::geom_point(shape = 21, size = 5, color = "red", fill = "yellow") + 
    ggplot2::labs(title = "Demonstration of Brownian Motion") +
    transition_reveal(seq_along(dat$x))
}

# Print the animint2 plot
print(animint(brownian_anim))
