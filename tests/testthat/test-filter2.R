test_that("filter2 selects rows correctly", {
  df <- data.frame(a = 1:5, b = letters[1:5])
  
  # Test selecting all rows
  df_all <- filter2(df, 1:nrow(df))
  expect_equal(dim(df_all), dim(df))
  
  # Test selecting a single row
  df_one <- filter2(df, 3)
  expect_equal(nrow(df_one), 1)
  expect_equal(df_one$a, 3)
  
  # Test selecting multiple rows
  df_some <- filter2(df, c(2, 4))
  expect_equal(nrow(df_some), 2)
  expect_equal(df_some$a, c(2, 4))
})
