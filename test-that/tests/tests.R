x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]


source("functions/range-value.R")


context("Test for range value") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

test_that("range works as expected", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_length(range_value(y), 1)
  expect_equal(range_value(y), NA_real_ )
})

test_that("range works as expected", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
})

test_that("range works as expected", {
  w <- letters[1:5]
  expect_error(w, 'Error!')
})




#for missing-values.R
source("functions/missing-values.R")


context("Test for missing values") 

test_that("missing value works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_gte(missing_values(x), 0)
  expect_length(missing_values(x), 1)
  expect_type(missing_values(x), 'double')
})


#updated range-value function

test_that("range works as expected", {
  y <- c(1, 2, 3, 4, NA)
  expect_length(range_value(y), 1)
  expect_equal(range_value(y), 3 )
})

