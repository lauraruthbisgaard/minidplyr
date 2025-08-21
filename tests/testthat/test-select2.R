test_that("select2 selects columns correctly", {
  df <- data.frame(a = 1:5, b = letters[1:5], c = rnorm(5))
  
  # Test selecting all columns
  df_all <- select2(df, names(df))
  expect_equal(dim(df_all), dim(df))
  
  # Test selecting a single column
  df_one <- select2(df, "a")
  expect_equal(ncol(df_one), 1)
  expect_equal(df_one$a, df$a)
  
  # Test selecting multiple columns
  df_some <- select2(df, c("a", "c"))
  expect_equal(ncol(df_some), 2)
  expect_equal(df_some$a, df$a)
  expect_equal(df_some$c, df$c)
  
  # Test selecting columns by numeric index
  df_index <- select2(df, c(2, 3))
  expect_equal(ncol(df_index), 2)
  expect_equal(df_index$b, df$b)
  expect_equal(df_index$c, df$c)
})
