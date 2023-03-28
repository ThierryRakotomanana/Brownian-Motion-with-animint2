library(testthat)
library(animint2)

test_that("animint2 animation test", {
  # Define the animation object
  anim <- animint("test_anim", plot_data = data.frame(x = rnorm(10), y = rnorm(10)))
  
  # Define the plot layer
  plot_layer <- ggplot2::layer(
    mapping = aes(x = x, y = y),
    geom = "point"
  )
  
  # Add the plot layer to the animation object
  anim$add_layer(plot_layer)
  
  # Generate the animation output file
  animint2::saveAnimint(anim, "test_anim_output")
  
  # Check if the output file exists
  expect_true(file.exists("test_anim_output/index.html"))
  
  # Check if the animation displays correctly in a web browser
  expect_true(testthat:::http_ok("http://localhost:8000/test_anim_output/index.html"))
})
